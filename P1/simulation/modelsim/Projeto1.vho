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

-- DATE "10/07/2021 19:22:24"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Projeto1 IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0);
	FPGA_RESET : IN std_logic;
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	Teste_Endereco : OUT std_logic_vector(8 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0)
	);
END Projeto1;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Teste_Endereco[0]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Teste_Endereco[1]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Teste_Endereco[2]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Teste_Endereco[3]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Teste_Endereco[4]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Teste_Endereco[5]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Teste_Endereco[6]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Teste_Endereco[7]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Teste_Endereco[8]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FPGA_RESET	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Projeto1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_FPGA_RESET : std_logic;
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_Teste_Endereco : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \CPU|somaUm|Add0~1_sumout\ : std_logic;
SIGNAL \ROM1|memROM~53_combout\ : std_logic;
SIGNAL \ROM1|memROM~52_combout\ : std_logic;
SIGNAL \ROM1|memROM~54_combout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \CPU|somaUm|Add0~22\ : std_logic;
SIGNAL \CPU|somaUm|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|MUX4x2_PC|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \ROM1|memROM~49_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~50_combout\ : std_logic;
SIGNAL \ROM1|memROM~51_combout\ : std_logic;
SIGNAL \ROM1|memROM~41_combout\ : std_logic;
SIGNAL \ROM1|memROM~40_combout\ : std_logic;
SIGNAL \ROM1|memROM~42_combout\ : std_logic;
SIGNAL \CPU|Decoder|Equal1~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~37_combout\ : std_logic;
SIGNAL \ROM1|memROM~38_combout\ : std_logic;
SIGNAL \ROM1|memROM~39_combout\ : std_logic;
SIGNAL \ROM1|memROM~13_combout\ : std_logic;
SIGNAL \CPU|MUX4x2_PC|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \CPU|somaUm|Add0~2\ : std_logic;
SIGNAL \CPU|somaUm|Add0~5_sumout\ : std_logic;
SIGNAL \ROM1|memROM~34_combout\ : std_logic;
SIGNAL \ROM1|memROM~35_combout\ : std_logic;
SIGNAL \ROM1|memROM~36_combout\ : std_logic;
SIGNAL \ROM1|memROM~14_combout\ : std_logic;
SIGNAL \CPU|MUX4x2_PC|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~47_combout\ : std_logic;
SIGNAL \ROM1|memROM~46_combout\ : std_logic;
SIGNAL \ROM1|memROM~48_combout\ : std_logic;
SIGNAL \ROM1|memROM~16_combout\ : std_logic;
SIGNAL \ROM1|memROM~15_combout\ : std_logic;
SIGNAL \CPU|Decoder|Equal1~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~9_combout\ : std_logic;
SIGNAL \ROM1|memROM~10_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \ROM1|memROM~30_combout\ : std_logic;
SIGNAL \ROM1|memROM~29_combout\ : std_logic;
SIGNAL \ROM1|memROM~11_combout\ : std_logic;
SIGNAL \AND_HEX0~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~55_combout\ : std_logic;
SIGNAL \AND_ENABLE_BUFFER_8BITS~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \ROM1|memROM~8_combout\ : std_logic;
SIGNAL \DECODER_BLOCOS|OUTPUT[5]~0_combout\ : std_logic;
SIGNAL \CPU|Decoder|Equal1~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~18_combout\ : std_logic;
SIGNAL \CPU|Decoder|Habilita_A~0_combout\ : std_logic;
SIGNAL \AND_ENABLE_BUFFER_8BITS~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~12_combout\ : std_logic;
SIGNAL \ROM1|memROM~21_combout\ : std_logic;
SIGNAL \ROM1|memROM~20_combout\ : std_logic;
SIGNAL \ROM1|memROM~23_combout\ : std_logic;
SIGNAL \ROM1|memROM~22_combout\ : std_logic;
SIGNAL \ROM1|memROM~24_combout\ : std_logic;
SIGNAL \ROM1|memROM~32_combout\ : std_logic;
SIGNAL \ROM1|memROM~31_combout\ : std_logic;
SIGNAL \ROM1|memROM~33_combout\ : std_logic;
SIGNAL \ROM1|memROM~19_combout\ : std_logic;
SIGNAL \memoriaDados|ram~761_combout\ : std_logic;
SIGNAL \memoriaDados|process_0~0_combout\ : std_logic;
SIGNAL \memoriaDados|process_0~1_combout\ : std_logic;
SIGNAL \memoriaDados|ram~762_combout\ : std_logic;
SIGNAL \memoriaDados|ram~294_q\ : std_logic;
SIGNAL \memoriaDados|ram~769_combout\ : std_logic;
SIGNAL \memoriaDados|ram~770_combout\ : std_logic;
SIGNAL \memoriaDados|ram~422_q\ : std_logic;
SIGNAL \memoriaDados|ram~765_combout\ : std_logic;
SIGNAL \memoriaDados|ram~766_combout\ : std_logic;
SIGNAL \memoriaDados|ram~302_q\ : std_logic;
SIGNAL \memoriaDados|ram~773_combout\ : std_logic;
SIGNAL \memoriaDados|ram~774_combout\ : std_logic;
SIGNAL \memoriaDados|ram~430_q\ : std_logic;
SIGNAL \memoriaDados|ram~689_combout\ : std_logic;
SIGNAL \memoriaDados|ram~785_combout\ : std_logic;
SIGNAL \memoriaDados|ram~786_combout\ : std_logic;
SIGNAL \memoriaDados|ram~486_q\ : std_logic;
SIGNAL \memoriaDados|ram~781_combout\ : std_logic;
SIGNAL \memoriaDados|ram~782_combout\ : std_logic;
SIGNAL \memoriaDados|ram~366_q\ : std_logic;
SIGNAL \memoriaDados|ram~777_combout\ : std_logic;
SIGNAL \memoriaDados|ram~778_combout\ : std_logic;
SIGNAL \memoriaDados|ram~358_q\ : std_logic;
SIGNAL \memoriaDados|ram~789_combout\ : std_logic;
SIGNAL \memoriaDados|ram~790_combout\ : std_logic;
SIGNAL \memoriaDados|ram~494_q\ : std_logic;
SIGNAL \memoriaDados|ram~691_combout\ : std_logic;
SIGNAL \memoriaDados|ram~454feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~797_combout\ : std_logic;
SIGNAL \memoriaDados|ram~798_combout\ : std_logic;
SIGNAL \memoriaDados|ram~454_q\ : std_logic;
SIGNAL \memoriaDados|ram~801_combout\ : std_logic;
SIGNAL \memoriaDados|ram~802_combout\ : std_logic;
SIGNAL \memoriaDados|ram~334_q\ : std_logic;
SIGNAL \memoriaDados|ram~793_combout\ : std_logic;
SIGNAL \memoriaDados|ram~794_combout\ : std_logic;
SIGNAL \memoriaDados|ram~326_q\ : std_logic;
SIGNAL \memoriaDados|ram~805_combout\ : std_logic;
SIGNAL \memoriaDados|ram~806_combout\ : std_logic;
SIGNAL \memoriaDados|ram~462_q\ : std_logic;
SIGNAL \memoriaDados|ram~690_combout\ : std_logic;
SIGNAL \memoriaDados|ram~821_combout\ : std_logic;
SIGNAL \memoriaDados|ram~822_combout\ : std_logic;
SIGNAL \memoriaDados|ram~526_q\ : std_logic;
SIGNAL \memoriaDados|ram~809_combout\ : std_logic;
SIGNAL \memoriaDados|ram~810_combout\ : std_logic;
SIGNAL \memoriaDados|ram~390_q\ : std_logic;
SIGNAL \memoriaDados|ram~518feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~813_combout\ : std_logic;
SIGNAL \memoriaDados|ram~814_combout\ : std_logic;
SIGNAL \memoriaDados|ram~518_q\ : std_logic;
SIGNAL \memoriaDados|ram~817_combout\ : std_logic;
SIGNAL \memoriaDados|ram~818_combout\ : std_logic;
SIGNAL \memoriaDados|ram~398_q\ : std_logic;
SIGNAL \memoriaDados|ram~692_combout\ : std_logic;
SIGNAL \memoriaDados|ram~693_combout\ : std_logic;
SIGNAL \memoriaDados|ram~721_combout\ : std_logic;
SIGNAL \memoriaDados|ram~722_combout\ : std_logic;
SIGNAL \memoriaDados|ram~470_q\ : std_logic;
SIGNAL \memoriaDados|ram~705_combout\ : std_logic;
SIGNAL \memoriaDados|ram~706_combout\ : std_logic;
SIGNAL \memoriaDados|ram~406_q\ : std_logic;
SIGNAL \memoriaDados|ram~737_combout\ : std_logic;
SIGNAL \memoriaDados|ram~738_combout\ : std_logic;
SIGNAL \memoriaDados|ram~438_q\ : std_logic;
SIGNAL \memoriaDados|ram~753_combout\ : std_logic;
SIGNAL \memoriaDados|ram~754_combout\ : std_logic;
SIGNAL \memoriaDados|ram~502_q\ : std_logic;
SIGNAL \memoriaDados|ram~686_combout\ : std_logic;
SIGNAL \memoriaDados|ram~701_combout\ : std_logic;
SIGNAL \memoriaDados|ram~702_combout\ : std_logic;
SIGNAL \memoriaDados|ram~286_q\ : std_logic;
SIGNAL \memoriaDados|ram~733_combout\ : std_logic;
SIGNAL \memoriaDados|ram~734_combout\ : std_logic;
SIGNAL \memoriaDados|ram~318_q\ : std_logic;
SIGNAL \memoriaDados|ram~749_combout\ : std_logic;
SIGNAL \memoriaDados|ram~750_combout\ : std_logic;
SIGNAL \memoriaDados|ram~382_q\ : std_logic;
SIGNAL \memoriaDados|ram~717_combout\ : std_logic;
SIGNAL \memoriaDados|ram~718_combout\ : std_logic;
SIGNAL \memoriaDados|ram~350_q\ : std_logic;
SIGNAL \memoriaDados|ram~685_combout\ : std_logic;
SIGNAL \memoriaDados|ram~278feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~697_combout\ : std_logic;
SIGNAL \memoriaDados|ram~698_combout\ : std_logic;
SIGNAL \memoriaDados|ram~278_q\ : std_logic;
SIGNAL \memoriaDados|ram~745_combout\ : std_logic;
SIGNAL \memoriaDados|ram~746_combout\ : std_logic;
SIGNAL \memoriaDados|ram~374_q\ : std_logic;
SIGNAL \memoriaDados|ram~310feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~729_combout\ : std_logic;
SIGNAL \memoriaDados|ram~730_combout\ : std_logic;
SIGNAL \memoriaDados|ram~310_q\ : std_logic;
SIGNAL \memoriaDados|ram~713_combout\ : std_logic;
SIGNAL \memoriaDados|ram~714_combout\ : std_logic;
SIGNAL \memoriaDados|ram~342_q\ : std_logic;
SIGNAL \memoriaDados|ram~684_combout\ : std_logic;
SIGNAL \memoriaDados|ram~725_combout\ : std_logic;
SIGNAL \memoriaDados|ram~726_combout\ : std_logic;
SIGNAL \memoriaDados|ram~478_q\ : std_logic;
SIGNAL \memoriaDados|ram~741_combout\ : std_logic;
SIGNAL \memoriaDados|ram~742_combout\ : std_logic;
SIGNAL \memoriaDados|ram~446_q\ : std_logic;
SIGNAL \memoriaDados|ram~414feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~709_combout\ : std_logic;
SIGNAL \memoriaDados|ram~710_combout\ : std_logic;
SIGNAL \memoriaDados|ram~414_q\ : std_logic;
SIGNAL \memoriaDados|ram~757_combout\ : std_logic;
SIGNAL \memoriaDados|ram~758_combout\ : std_logic;
SIGNAL \memoriaDados|ram~510_q\ : std_logic;
SIGNAL \memoriaDados|ram~687_combout\ : std_logic;
SIGNAL \memoriaDados|ram~688_combout\ : std_logic;
SIGNAL \memoriaDados|ram~715_combout\ : std_logic;
SIGNAL \memoriaDados|ram~716_combout\ : std_logic;
SIGNAL \memoriaDados|ram~94_q\ : std_logic;
SIGNAL \memoriaDados|ram~723_combout\ : std_logic;
SIGNAL \memoriaDados|ram~724_combout\ : std_logic;
SIGNAL \memoriaDados|ram~222_q\ : std_logic;
SIGNAL \memoriaDados|ram~747_combout\ : std_logic;
SIGNAL \memoriaDados|ram~748_combout\ : std_logic;
SIGNAL \memoriaDados|ram~126_q\ : std_logic;
SIGNAL \memoriaDados|ram~755_combout\ : std_logic;
SIGNAL \memoriaDados|ram~756_combout\ : std_logic;
SIGNAL \memoriaDados|ram~254_q\ : std_logic;
SIGNAL \memoriaDados|ram~677_combout\ : std_logic;
SIGNAL \memoriaDados|ram~743_combout\ : std_logic;
SIGNAL \memoriaDados|ram~744_combout\ : std_logic;
SIGNAL \memoriaDados|ram~118_q\ : std_logic;
SIGNAL \memoriaDados|ram~751_combout\ : std_logic;
SIGNAL \memoriaDados|ram~752_combout\ : std_logic;
SIGNAL \memoriaDados|ram~246_q\ : std_logic;
SIGNAL \memoriaDados|ram~719_combout\ : std_logic;
SIGNAL \memoriaDados|ram~720_combout\ : std_logic;
SIGNAL \memoriaDados|ram~214_q\ : std_logic;
SIGNAL \memoriaDados|ram~711_combout\ : std_logic;
SIGNAL \memoriaDados|ram~712_combout\ : std_logic;
SIGNAL \memoriaDados|ram~86_q\ : std_logic;
SIGNAL \memoriaDados|ram~676_combout\ : std_logic;
SIGNAL \memoriaDados|ram~703_combout\ : std_logic;
SIGNAL \memoriaDados|ram~704_combout\ : std_logic;
SIGNAL \memoriaDados|ram~150_q\ : std_logic;
SIGNAL \memoriaDados|ram~695_combout\ : std_logic;
SIGNAL \memoriaDados|ram~696_combout\ : std_logic;
SIGNAL \memoriaDados|ram~22_q\ : std_logic;
SIGNAL \memoriaDados|ram~727_combout\ : std_logic;
SIGNAL \memoriaDados|ram~728_combout\ : std_logic;
SIGNAL \memoriaDados|ram~54_q\ : std_logic;
SIGNAL \memoriaDados|ram~735_combout\ : std_logic;
SIGNAL \memoriaDados|ram~736_combout\ : std_logic;
SIGNAL \memoriaDados|ram~182_q\ : std_logic;
SIGNAL \memoriaDados|ram~674_combout\ : std_logic;
SIGNAL \memoriaDados|ram~731_combout\ : std_logic;
SIGNAL \memoriaDados|ram~732_combout\ : std_logic;
SIGNAL \memoriaDados|ram~62_q\ : std_logic;
SIGNAL \memoriaDados|ram~739_combout\ : std_logic;
SIGNAL \memoriaDados|ram~740_combout\ : std_logic;
SIGNAL \memoriaDados|ram~190_q\ : std_logic;
SIGNAL \memoriaDados|ram~707_combout\ : std_logic;
SIGNAL \memoriaDados|ram~708_combout\ : std_logic;
SIGNAL \memoriaDados|ram~158_q\ : std_logic;
SIGNAL \memoriaDados|ram~699_combout\ : std_logic;
SIGNAL \memoriaDados|ram~700_combout\ : std_logic;
SIGNAL \memoriaDados|ram~30_q\ : std_logic;
SIGNAL \memoriaDados|ram~675_combout\ : std_logic;
SIGNAL \memoriaDados|ram~678_combout\ : std_logic;
SIGNAL \memoriaDados|ram~206feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~803_combout\ : std_logic;
SIGNAL \memoriaDados|ram~804_combout\ : std_logic;
SIGNAL \memoriaDados|ram~206_q\ : std_logic;
SIGNAL \memoriaDados|ram~799_combout\ : std_logic;
SIGNAL \memoriaDados|ram~800_combout\ : std_logic;
SIGNAL \memoriaDados|ram~78_q\ : std_logic;
SIGNAL \memoriaDados|ram~795_combout\ : std_logic;
SIGNAL \memoriaDados|ram~796_combout\ : std_logic;
SIGNAL \memoriaDados|ram~198_q\ : std_logic;
SIGNAL \memoriaDados|ram~70feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~791_combout\ : std_logic;
SIGNAL \memoriaDados|ram~792_combout\ : std_logic;
SIGNAL \memoriaDados|ram~70_q\ : std_logic;
SIGNAL \memoriaDados|ram~680_combout\ : std_logic;
SIGNAL \memoriaDados|ram~783_combout\ : std_logic;
SIGNAL \memoriaDados|ram~784_combout\ : std_logic;
SIGNAL \memoriaDados|ram~230_q\ : std_logic;
SIGNAL \memoriaDados|ram~775_combout\ : std_logic;
SIGNAL \memoriaDados|ram~776_combout\ : std_logic;
SIGNAL \memoriaDados|ram~102_q\ : std_logic;
SIGNAL \memoriaDados|ram~779_combout\ : std_logic;
SIGNAL \memoriaDados|ram~780_combout\ : std_logic;
SIGNAL \memoriaDados|ram~110_q\ : std_logic;
SIGNAL \memoriaDados|ram~787_combout\ : std_logic;
SIGNAL \memoriaDados|ram~788_combout\ : std_logic;
SIGNAL \memoriaDados|ram~238_q\ : std_logic;
SIGNAL \memoriaDados|ram~681_combout\ : std_logic;
SIGNAL \memoriaDados|ram~807_combout\ : std_logic;
SIGNAL \memoriaDados|ram~808_combout\ : std_logic;
SIGNAL \memoriaDados|ram~134_q\ : std_logic;
SIGNAL \memoriaDados|ram~819_combout\ : std_logic;
SIGNAL \memoriaDados|ram~820_combout\ : std_logic;
SIGNAL \memoriaDados|ram~270_q\ : std_logic;
SIGNAL \memoriaDados|ram~811_combout\ : std_logic;
SIGNAL \memoriaDados|ram~812_combout\ : std_logic;
SIGNAL \memoriaDados|ram~262_q\ : std_logic;
SIGNAL \memoriaDados|ram~142feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~815_combout\ : std_logic;
SIGNAL \memoriaDados|ram~816_combout\ : std_logic;
SIGNAL \memoriaDados|ram~142_q\ : std_logic;
SIGNAL \memoriaDados|ram~682_combout\ : std_logic;
SIGNAL \memoriaDados|ram~763_combout\ : std_logic;
SIGNAL \memoriaDados|ram~764_combout\ : std_logic;
SIGNAL \memoriaDados|ram~46_q\ : std_logic;
SIGNAL \memoriaDados|ram~767_combout\ : std_logic;
SIGNAL \memoriaDados|ram~768_combout\ : std_logic;
SIGNAL \memoriaDados|ram~166_q\ : std_logic;
SIGNAL \memoriaDados|ram~759_combout\ : std_logic;
SIGNAL \memoriaDados|ram~760_combout\ : std_logic;
SIGNAL \memoriaDados|ram~38_q\ : std_logic;
SIGNAL \memoriaDados|ram~771_combout\ : std_logic;
SIGNAL \memoriaDados|ram~772_combout\ : std_logic;
SIGNAL \memoriaDados|ram~174_q\ : std_logic;
SIGNAL \memoriaDados|ram~679_combout\ : std_logic;
SIGNAL \memoriaDados|ram~683_combout\ : std_logic;
SIGNAL \memoriaDados|ram~694_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[7]~6_combout\ : std_logic;
SIGNAL \ROM1|memROM~28_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \memoriaDados|ram~477_q\ : std_logic;
SIGNAL \memoriaDados|ram~365_q\ : std_logic;
SIGNAL \memoriaDados|ram~349_q\ : std_logic;
SIGNAL \memoriaDados|ram~493_q\ : std_logic;
SIGNAL \memoriaDados|ram~661_combout\ : std_logic;
SIGNAL \memoriaDados|ram~413_q\ : std_logic;
SIGNAL \memoriaDados|ram~285feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~285_q\ : std_logic;
SIGNAL \memoriaDados|ram~301_q\ : std_logic;
SIGNAL \memoriaDados|ram~429_q\ : std_logic;
SIGNAL \memoriaDados|ram~659_combout\ : std_logic;
SIGNAL \memoriaDados|ram~405feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~405_q\ : std_logic;
SIGNAL \memoriaDados|ram~293_q\ : std_logic;
SIGNAL \memoriaDados|ram~421_q\ : std_logic;
SIGNAL \memoriaDados|ram~277feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~277_q\ : std_logic;
SIGNAL \memoriaDados|ram~658_combout\ : std_logic;
SIGNAL \memoriaDados|ram~469_q\ : std_logic;
SIGNAL \memoriaDados|ram~341_q\ : std_logic;
SIGNAL \memoriaDados|ram~357_q\ : std_logic;
SIGNAL \memoriaDados|ram~485_q\ : std_logic;
SIGNAL \memoriaDados|ram~660_combout\ : std_logic;
SIGNAL \memoriaDados|ram~662_combout\ : std_logic;
SIGNAL \memoriaDados|ram~85_q\ : std_logic;
SIGNAL \memoriaDados|ram~37_q\ : std_logic;
SIGNAL \memoriaDados|ram~21_q\ : std_logic;
SIGNAL \memoriaDados|ram~101_q\ : std_logic;
SIGNAL \memoriaDados|ram~653_combout\ : std_logic;
SIGNAL \memoriaDados|ram~149_q\ : std_logic;
SIGNAL \memoriaDados|ram~213_q\ : std_logic;
SIGNAL \memoriaDados|ram~165_q\ : std_logic;
SIGNAL \memoriaDados|ram~229_q\ : std_logic;
SIGNAL \memoriaDados|ram~655_combout\ : std_logic;
SIGNAL \memoriaDados|ram~109_q\ : std_logic;
SIGNAL \memoriaDados|ram~93_q\ : std_logic;
SIGNAL \memoriaDados|ram~45_q\ : std_logic;
SIGNAL \memoriaDados|ram~29feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~29_q\ : std_logic;
SIGNAL \memoriaDados|ram~654_combout\ : std_logic;
SIGNAL \memoriaDados|ram~173_q\ : std_logic;
SIGNAL \memoriaDados|ram~157_q\ : std_logic;
SIGNAL \memoriaDados|ram~221_q\ : std_logic;
SIGNAL \memoriaDados|ram~237_q\ : std_logic;
SIGNAL \memoriaDados|ram~656_combout\ : std_logic;
SIGNAL \memoriaDados|ram~657_combout\ : std_logic;
SIGNAL \memoriaDados|ram~325_q\ : std_logic;
SIGNAL \memoriaDados|ram~389_q\ : std_logic;
SIGNAL \memoriaDados|ram~373_q\ : std_logic;
SIGNAL \memoriaDados|ram~309_q\ : std_logic;
SIGNAL \memoriaDados|ram~668_combout\ : std_logic;
SIGNAL \memoriaDados|ram~501_q\ : std_logic;
SIGNAL \memoriaDados|ram~437_q\ : std_logic;
SIGNAL \memoriaDados|ram~453feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~453_q\ : std_logic;
SIGNAL \memoriaDados|ram~517_q\ : std_logic;
SIGNAL \memoriaDados|ram~670_combout\ : std_logic;
SIGNAL \memoriaDados|ram~333feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~333_q\ : std_logic;
SIGNAL \memoriaDados|ram~317_q\ : std_logic;
SIGNAL \memoriaDados|ram~397_q\ : std_logic;
SIGNAL \memoriaDados|ram~381_q\ : std_logic;
SIGNAL \memoriaDados|ram~669_combout\ : std_logic;
SIGNAL \memoriaDados|ram~525_q\ : std_logic;
SIGNAL \memoriaDados|ram~461_q\ : std_logic;
SIGNAL \memoriaDados|ram~509_q\ : std_logic;
SIGNAL \memoriaDados|ram~445_q\ : std_logic;
SIGNAL \memoriaDados|ram~671_combout\ : std_logic;
SIGNAL \memoriaDados|ram~672_combout\ : std_logic;
SIGNAL \memoriaDados|ram~253_q\ : std_logic;
SIGNAL \memoriaDados|ram~245_q\ : std_logic;
SIGNAL \memoriaDados|ram~261_q\ : std_logic;
SIGNAL \memoriaDados|ram~269_q\ : std_logic;
SIGNAL \memoriaDados|ram~666_combout\ : std_logic;
SIGNAL \memoriaDados|ram~117_q\ : std_logic;
SIGNAL \memoriaDados|ram~141_q\ : std_logic;
SIGNAL \memoriaDados|ram~125_q\ : std_logic;
SIGNAL \memoriaDados|ram~133_q\ : std_logic;
SIGNAL \memoriaDados|ram~665_combout\ : std_logic;
SIGNAL \memoriaDados|ram~53_q\ : std_logic;
SIGNAL \memoriaDados|ram~61_q\ : std_logic;
SIGNAL \memoriaDados|ram~69_q\ : std_logic;
SIGNAL \memoriaDados|ram~77_q\ : std_logic;
SIGNAL \memoriaDados|ram~663_combout\ : std_logic;
SIGNAL \memoriaDados|ram~189_q\ : std_logic;
SIGNAL \memoriaDados|ram~197_q\ : std_logic;
SIGNAL \memoriaDados|ram~181_q\ : std_logic;
SIGNAL \memoriaDados|ram~205_q\ : std_logic;
SIGNAL \memoriaDados|ram~664_combout\ : std_logic;
SIGNAL \memoriaDados|ram~667_combout\ : std_logic;
SIGNAL \memoriaDados|ram~673_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[6]~5_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \ROM1|memROM~27_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \memoriaDados|ram~339feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~339_q\ : std_logic;
SIGNAL \memoriaDados|ram~275_q\ : std_logic;
SIGNAL \memoriaDados|ram~283feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~283_q\ : std_logic;
SIGNAL \memoriaDados|ram~347_q\ : std_logic;
SIGNAL \memoriaDados|ram~616_combout\ : std_logic;
SIGNAL \memoriaDados|ram~307_q\ : std_logic;
SIGNAL \memoriaDados|ram~371_q\ : std_logic;
SIGNAL \memoriaDados|ram~315_q\ : std_logic;
SIGNAL \memoriaDados|ram~379_q\ : std_logic;
SIGNAL \memoriaDados|ram~617_combout\ : std_logic;
SIGNAL \memoriaDados|ram~443_q\ : std_logic;
SIGNAL \memoriaDados|ram~435_q\ : std_logic;
SIGNAL \memoriaDados|ram~499_q\ : std_logic;
SIGNAL \memoriaDados|ram~507_q\ : std_logic;
SIGNAL \memoriaDados|ram~619_combout\ : std_logic;
SIGNAL \memoriaDados|ram~403feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~403_q\ : std_logic;
SIGNAL \memoriaDados|ram~411feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~411_q\ : std_logic;
SIGNAL \memoriaDados|ram~467_q\ : std_logic;
SIGNAL \memoriaDados|ram~475_q\ : std_logic;
SIGNAL \memoriaDados|ram~618_combout\ : std_logic;
SIGNAL \memoriaDados|ram~620_combout\ : std_logic;
SIGNAL \memoriaDados|ram~259_q\ : std_logic;
SIGNAL \memoriaDados|ram~131_q\ : std_logic;
SIGNAL \memoriaDados|ram~139_q\ : std_logic;
SIGNAL \memoriaDados|ram~267_q\ : std_logic;
SIGNAL \memoriaDados|ram~624_combout\ : std_logic;
SIGNAL \memoriaDados|ram~227_q\ : std_logic;
SIGNAL \memoriaDados|ram~99_q\ : std_logic;
SIGNAL \memoriaDados|ram~107_q\ : std_logic;
SIGNAL \memoriaDados|ram~235_q\ : std_logic;
SIGNAL \memoriaDados|ram~623_combout\ : std_logic;
SIGNAL \memoriaDados|ram~75_q\ : std_logic;
SIGNAL \memoriaDados|ram~67_q\ : std_logic;
SIGNAL \memoriaDados|ram~195_q\ : std_logic;
SIGNAL \memoriaDados|ram~203_q\ : std_logic;
SIGNAL \memoriaDados|ram~622_combout\ : std_logic;
SIGNAL \memoriaDados|ram~35_q\ : std_logic;
SIGNAL \memoriaDados|ram~43_q\ : std_logic;
SIGNAL \memoriaDados|ram~163feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~163_q\ : std_logic;
SIGNAL \memoriaDados|ram~171_q\ : std_logic;
SIGNAL \memoriaDados|ram~621_combout\ : std_logic;
SIGNAL \memoriaDados|ram~625_combout\ : std_logic;
SIGNAL \memoriaDados|ram~219_q\ : std_logic;
SIGNAL \memoriaDados|ram~211_q\ : std_logic;
SIGNAL \memoriaDados|ram~243feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~243_q\ : std_logic;
SIGNAL \memoriaDados|ram~251_q\ : std_logic;
SIGNAL \memoriaDados|ram~614_combout\ : std_logic;
SIGNAL \memoriaDados|ram~83_q\ : std_logic;
SIGNAL \memoriaDados|ram~91_q\ : std_logic;
SIGNAL \memoriaDados|ram~115_q\ : std_logic;
SIGNAL \memoriaDados|ram~123_q\ : std_logic;
SIGNAL \memoriaDados|ram~613_combout\ : std_logic;
SIGNAL \memoriaDados|ram~51_q\ : std_logic;
SIGNAL \memoriaDados|ram~19_q\ : std_logic;
SIGNAL \memoriaDados|ram~27feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~27_q\ : std_logic;
SIGNAL \memoriaDados|ram~59_q\ : std_logic;
SIGNAL \memoriaDados|ram~611_combout\ : std_logic;
SIGNAL \memoriaDados|ram~155_q\ : std_logic;
SIGNAL \memoriaDados|ram~147feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~147_q\ : std_logic;
SIGNAL \memoriaDados|ram~179_q\ : std_logic;
SIGNAL \memoriaDados|ram~187_q\ : std_logic;
SIGNAL \memoriaDados|ram~612_combout\ : std_logic;
SIGNAL \memoriaDados|ram~615_combout\ : std_logic;
SIGNAL \memoriaDados|ram~387_q\ : std_logic;
SIGNAL \memoriaDados|ram~363_q\ : std_logic;
SIGNAL \memoriaDados|ram~355feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~355_q\ : std_logic;
SIGNAL \memoriaDados|ram~395_q\ : std_logic;
SIGNAL \memoriaDados|ram~628_combout\ : std_logic;
SIGNAL \memoriaDados|ram~299_q\ : std_logic;
SIGNAL \memoriaDados|ram~331_q\ : std_logic;
SIGNAL \memoriaDados|ram~291_q\ : std_logic;
SIGNAL \memoriaDados|ram~323_q\ : std_logic;
SIGNAL \memoriaDados|ram~626_combout\ : std_logic;
SIGNAL \memoriaDados|ram~515_q\ : std_logic;
SIGNAL \memoriaDados|ram~483_q\ : std_logic;
SIGNAL \memoriaDados|ram~491feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~491_q\ : std_logic;
SIGNAL \memoriaDados|ram~523_q\ : std_logic;
SIGNAL \memoriaDados|ram~629_combout\ : std_logic;
SIGNAL \memoriaDados|ram~451_q\ : std_logic;
SIGNAL \memoriaDados|ram~427_q\ : std_logic;
SIGNAL \memoriaDados|ram~419_q\ : std_logic;
SIGNAL \memoriaDados|ram~459_q\ : std_logic;
SIGNAL \memoriaDados|ram~627_combout\ : std_logic;
SIGNAL \memoriaDados|ram~630_combout\ : std_logic;
SIGNAL \memoriaDados|ram~631_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[4]~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~26_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \memoriaDados|ram~250feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~250_q\ : std_logic;
SIGNAL \memoriaDados|ram~186_q\ : std_logic;
SIGNAL \memoriaDados|ram~202feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~202_q\ : std_logic;
SIGNAL \memoriaDados|ram~266_q\ : std_logic;
SIGNAL \memoriaDados|ram~603_combout\ : std_logic;
SIGNAL \memoriaDados|ram~178feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~178_q\ : std_logic;
SIGNAL \memoriaDados|ram~194_q\ : std_logic;
SIGNAL \memoriaDados|ram~242_q\ : std_logic;
SIGNAL \memoriaDados|ram~258_q\ : std_logic;
SIGNAL \memoriaDados|ram~602_combout\ : std_logic;
SIGNAL \memoriaDados|ram~58feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~58_q\ : std_logic;
SIGNAL \memoriaDados|ram~138_q\ : std_logic;
SIGNAL \memoriaDados|ram~122feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~122_q\ : std_logic;
SIGNAL \memoriaDados|ram~74_q\ : std_logic;
SIGNAL \memoriaDados|ram~601_combout\ : std_logic;
SIGNAL \memoriaDados|ram~50_q\ : std_logic;
SIGNAL \memoriaDados|ram~66_q\ : std_logic;
SIGNAL \memoriaDados|ram~114_q\ : std_logic;
SIGNAL \memoriaDados|ram~130_q\ : std_logic;
SIGNAL \memoriaDados|ram~600_combout\ : std_logic;
SIGNAL \memoriaDados|ram~604_combout\ : std_logic;
SIGNAL \memoriaDados|ram~386_q\ : std_logic;
SIGNAL \memoriaDados|ram~370_q\ : std_logic;
SIGNAL \memoriaDados|ram~378_q\ : std_logic;
SIGNAL \memoriaDados|ram~394_q\ : std_logic;
SIGNAL \memoriaDados|ram~607_combout\ : std_logic;
SIGNAL \memoriaDados|ram~434_q\ : std_logic;
SIGNAL \memoriaDados|ram~450_q\ : std_logic;
SIGNAL \memoriaDados|ram~442_q\ : std_logic;
SIGNAL \memoriaDados|ram~458_q\ : std_logic;
SIGNAL \memoriaDados|ram~606_combout\ : std_logic;
SIGNAL \memoriaDados|ram~506_q\ : std_logic;
SIGNAL \memoriaDados|ram~514feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~514_q\ : std_logic;
SIGNAL \memoriaDados|ram~498_q\ : std_logic;
SIGNAL \memoriaDados|ram~522_q\ : std_logic;
SIGNAL \memoriaDados|ram~608_combout\ : std_logic;
SIGNAL \memoriaDados|ram~322_q\ : std_logic;
SIGNAL \memoriaDados|ram~314_q\ : std_logic;
SIGNAL \memoriaDados|ram~306_q\ : std_logic;
SIGNAL \memoriaDados|ram~330_q\ : std_logic;
SIGNAL \memoriaDados|ram~605_combout\ : std_logic;
SIGNAL \memoriaDados|ram~609_combout\ : std_logic;
SIGNAL \memoriaDados|ram~282_q\ : std_logic;
SIGNAL \memoriaDados|ram~410feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~410_q\ : std_logic;
SIGNAL \memoriaDados|ram~298_q\ : std_logic;
SIGNAL \memoriaDados|ram~426_q\ : std_logic;
SIGNAL \memoriaDados|ram~596_combout\ : std_logic;
SIGNAL \memoriaDados|ram~474_q\ : std_logic;
SIGNAL \memoriaDados|ram~346_q\ : std_logic;
SIGNAL \memoriaDados|ram~362_q\ : std_logic;
SIGNAL \memoriaDados|ram~490_q\ : std_logic;
SIGNAL \memoriaDados|ram~598_combout\ : std_logic;
SIGNAL \memoriaDados|ram~274feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~274_q\ : std_logic;
SIGNAL \memoriaDados|ram~290_q\ : std_logic;
SIGNAL \memoriaDados|ram~402feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~402_q\ : std_logic;
SIGNAL \memoriaDados|ram~418_q\ : std_logic;
SIGNAL \memoriaDados|ram~595_combout\ : std_logic;
SIGNAL \memoriaDados|ram~466_q\ : std_logic;
SIGNAL \memoriaDados|ram~354_q\ : std_logic;
SIGNAL \memoriaDados|ram~338feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~338_q\ : std_logic;
SIGNAL \memoriaDados|ram~482_q\ : std_logic;
SIGNAL \memoriaDados|ram~597_combout\ : std_logic;
SIGNAL \memoriaDados|ram~599_combout\ : std_logic;
SIGNAL \memoriaDados|ram~26feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~26_q\ : std_logic;
SIGNAL \memoriaDados|ram~18_q\ : std_logic;
SIGNAL \memoriaDados|ram~34_q\ : std_logic;
SIGNAL \memoriaDados|ram~42_q\ : std_logic;
SIGNAL \memoriaDados|ram~590_combout\ : std_logic;
SIGNAL \memoriaDados|ram~154_q\ : std_logic;
SIGNAL \memoriaDados|ram~146feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~146_q\ : std_logic;
SIGNAL \memoriaDados|ram~162_q\ : std_logic;
SIGNAL \memoriaDados|ram~170_q\ : std_logic;
SIGNAL \memoriaDados|ram~591_combout\ : std_logic;
SIGNAL \memoriaDados|ram~226_q\ : std_logic;
SIGNAL \memoriaDados|ram~210_q\ : std_logic;
SIGNAL \memoriaDados|ram~218_q\ : std_logic;
SIGNAL \memoriaDados|ram~234_q\ : std_logic;
SIGNAL \memoriaDados|ram~593_combout\ : std_logic;
SIGNAL \memoriaDados|ram~90_q\ : std_logic;
SIGNAL \memoriaDados|ram~98_q\ : std_logic;
SIGNAL \memoriaDados|ram~82_q\ : std_logic;
SIGNAL \memoriaDados|ram~106_q\ : std_logic;
SIGNAL \memoriaDados|ram~592_combout\ : std_logic;
SIGNAL \memoriaDados|ram~594_combout\ : std_logic;
SIGNAL \memoriaDados|ram~610_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[3]~2_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \memoriaDados|ram~401_q\ : std_logic;
SIGNAL \memoriaDados|ram~305_q\ : std_logic;
SIGNAL \memoriaDados|ram~273_q\ : std_logic;
SIGNAL \memoriaDados|ram~433_q\ : std_logic;
SIGNAL \memoriaDados|ram~574_combout\ : std_logic;
SIGNAL \memoriaDados|ram~369_q\ : std_logic;
SIGNAL \memoriaDados|ram~465_q\ : std_logic;
SIGNAL \memoriaDados|ram~337_q\ : std_logic;
SIGNAL \memoriaDados|ram~497_q\ : std_logic;
SIGNAL \memoriaDados|ram~576_combout\ : std_logic;
SIGNAL \memoriaDados|ram~417_q\ : std_logic;
SIGNAL \memoriaDados|ram~289_q\ : std_logic;
SIGNAL \memoriaDados|ram~449_q\ : std_logic;
SIGNAL \memoriaDados|ram~321_q\ : std_logic;
SIGNAL \memoriaDados|ram~575_combout\ : std_logic;
SIGNAL \memoriaDados|ram~353_q\ : std_logic;
SIGNAL \memoriaDados|ram~385_q\ : std_logic;
SIGNAL \memoriaDados|ram~481_q\ : std_logic;
SIGNAL \memoriaDados|ram~513_q\ : std_logic;
SIGNAL \memoriaDados|ram~577_combout\ : std_logic;
SIGNAL \memoriaDados|ram~578_combout\ : std_logic;
SIGNAL \memoriaDados|ram~81feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~81_q\ : std_logic;
SIGNAL \memoriaDados|ram~49_q\ : std_logic;
SIGNAL \memoriaDados|ram~17_q\ : std_logic;
SIGNAL \memoriaDados|ram~113_q\ : std_logic;
SIGNAL \memoriaDados|ram~569_combout\ : std_logic;
SIGNAL \memoriaDados|ram~145_q\ : std_logic;
SIGNAL \memoriaDados|ram~177feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~177_q\ : std_logic;
SIGNAL \memoriaDados|ram~209_q\ : std_logic;
SIGNAL \memoriaDados|ram~241_q\ : std_logic;
SIGNAL \memoriaDados|ram~570_combout\ : std_logic;
SIGNAL \memoriaDados|ram~33feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~33_q\ : std_logic;
SIGNAL \memoriaDados|ram~65_q\ : std_logic;
SIGNAL \memoriaDados|ram~97feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~97_q\ : std_logic;
SIGNAL \memoriaDados|ram~129_q\ : std_logic;
SIGNAL \memoriaDados|ram~571_combout\ : std_logic;
SIGNAL \memoriaDados|ram~225feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~225_q\ : std_logic;
SIGNAL \memoriaDados|ram~193_q\ : std_logic;
SIGNAL \memoriaDados|ram~161feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~161_q\ : std_logic;
SIGNAL \memoriaDados|ram~257_q\ : std_logic;
SIGNAL \memoriaDados|ram~572_combout\ : std_logic;
SIGNAL \memoriaDados|ram~573_combout\ : std_logic;
SIGNAL \memoriaDados|ram~137_q\ : std_logic;
SIGNAL \memoriaDados|ram~121_q\ : std_logic;
SIGNAL \memoriaDados|ram~89_q\ : std_logic;
SIGNAL \memoriaDados|ram~105_q\ : std_logic;
SIGNAL \memoriaDados|ram~581_combout\ : std_logic;
SIGNAL \memoriaDados|ram~73_q\ : std_logic;
SIGNAL \memoriaDados|ram~41feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~41_q\ : std_logic;
SIGNAL \memoriaDados|ram~57_q\ : std_logic;
SIGNAL \memoriaDados|ram~25_q\ : std_logic;
SIGNAL \memoriaDados|ram~579_combout\ : std_logic;
SIGNAL \memoriaDados|ram~249_q\ : std_logic;
SIGNAL \memoriaDados|ram~265_q\ : std_logic;
SIGNAL \memoriaDados|ram~217_q\ : std_logic;
SIGNAL \memoriaDados|ram~233_q\ : std_logic;
SIGNAL \memoriaDados|ram~582_combout\ : std_logic;
SIGNAL \memoriaDados|ram~185_q\ : std_logic;
SIGNAL \memoriaDados|ram~153_q\ : std_logic;
SIGNAL \memoriaDados|ram~169_q\ : std_logic;
SIGNAL \memoriaDados|ram~201_q\ : std_logic;
SIGNAL \memoriaDados|ram~580_combout\ : std_logic;
SIGNAL \memoriaDados|ram~583_combout\ : std_logic;
SIGNAL \memoriaDados|ram~409feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~409_q\ : std_logic;
SIGNAL \memoriaDados|ram~281_q\ : std_logic;
SIGNAL \memoriaDados|ram~345_q\ : std_logic;
SIGNAL \memoriaDados|ram~473_q\ : std_logic;
SIGNAL \memoriaDados|ram~584_combout\ : std_logic;
SIGNAL \memoriaDados|ram~457_q\ : std_logic;
SIGNAL \memoriaDados|ram~393feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~393_q\ : std_logic;
SIGNAL \memoriaDados|ram~329feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~329_q\ : std_logic;
SIGNAL \memoriaDados|ram~521_q\ : std_logic;
SIGNAL \memoriaDados|ram~587_combout\ : std_logic;
SIGNAL \memoriaDados|ram~313_q\ : std_logic;
SIGNAL \memoriaDados|ram~441feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~441_q\ : std_logic;
SIGNAL \memoriaDados|ram~377_q\ : std_logic;
SIGNAL \memoriaDados|ram~505_q\ : std_logic;
SIGNAL \memoriaDados|ram~585_combout\ : std_logic;
SIGNAL \memoriaDados|ram~297_q\ : std_logic;
SIGNAL \memoriaDados|ram~361_q\ : std_logic;
SIGNAL \memoriaDados|ram~425feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~425_q\ : std_logic;
SIGNAL \memoriaDados|ram~489_q\ : std_logic;
SIGNAL \memoriaDados|ram~586_combout\ : std_logic;
SIGNAL \memoriaDados|ram~588_combout\ : std_logic;
SIGNAL \memoriaDados|ram~589_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[2]~1_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \ROM1|memROM~25_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \AND_ENABLE_BUFFER_8BITS~0_combout\ : std_logic;
SIGNAL \Data_IN[0]~0_combout\ : std_logic;
SIGNAL \FPGA_RESET~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \Data_IN[0]~2_combout\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \detectorSub1|saidaQ~0_combout\ : std_logic;
SIGNAL \detectorSub1|saidaQ~q\ : std_logic;
SIGNAL \detectorSub1|saida~combout\ : std_logic;
SIGNAL \DEB_MEM_KEY1|DOUT~feeder_combout\ : std_logic;
SIGNAL \RESET_KEY0~0_combout\ : std_logic;
SIGNAL \RESET_KEY1~combout\ : std_logic;
SIGNAL \DEB_MEM_KEY1|DOUT~q\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \detectorSub0|saidaQ~0_combout\ : std_logic;
SIGNAL \detectorSub0|saidaQ~q\ : std_logic;
SIGNAL \detectorSub0|saida~combout\ : std_logic;
SIGNAL \DEB_MEM_KEY0|DOUT~feeder_combout\ : std_logic;
SIGNAL \RESET_KEY0~combout\ : std_logic;
SIGNAL \DEB_MEM_KEY0|DOUT~q\ : std_logic;
SIGNAL \Data_IN[0]~1_combout\ : std_logic;
SIGNAL \Data_IN[0]~3_combout\ : std_logic;
SIGNAL \memoriaDados|ram~151_q\ : std_logic;
SIGNAL \memoriaDados|ram~407_q\ : std_logic;
SIGNAL \memoriaDados|ram~143_q\ : std_logic;
SIGNAL \memoriaDados|ram~399_q\ : std_logic;
SIGNAL \memoriaDados|ram~528_combout\ : std_logic;
SIGNAL \memoriaDados|ram~279_q\ : std_logic;
SIGNAL \memoriaDados|ram~23_q\ : std_logic;
SIGNAL \memoriaDados|ram~271_q\ : std_logic;
SIGNAL \memoriaDados|ram~15_q\ : std_logic;
SIGNAL \memoriaDados|ram~527_combout\ : std_logic;
SIGNAL \memoriaDados|ram~463_q\ : std_logic;
SIGNAL \memoriaDados|ram~215_q\ : std_logic;
SIGNAL \memoriaDados|ram~207_q\ : std_logic;
SIGNAL \memoriaDados|ram~471_q\ : std_logic;
SIGNAL \memoriaDados|ram~530_combout\ : std_logic;
SIGNAL \memoriaDados|ram~335_q\ : std_logic;
SIGNAL \memoriaDados|ram~87_q\ : std_logic;
SIGNAL \memoriaDados|ram~79_q\ : std_logic;
SIGNAL \memoriaDados|ram~343_q\ : std_logic;
SIGNAL \memoriaDados|ram~529_combout\ : std_logic;
SIGNAL \memoriaDados|ram~531_combout\ : std_logic;
SIGNAL \memoriaDados|ram~439_q\ : std_logic;
SIGNAL \memoriaDados|ram~183_q\ : std_logic;
SIGNAL \memoriaDados|ram~175_q\ : std_logic;
SIGNAL \memoriaDados|ram~431_q\ : std_logic;
SIGNAL \memoriaDados|ram~533_combout\ : std_logic;
SIGNAL \memoriaDados|ram~119_q\ : std_logic;
SIGNAL \memoriaDados|ram~111_q\ : std_logic;
SIGNAL \memoriaDados|ram~367_q\ : std_logic;
SIGNAL \memoriaDados|ram~375_q\ : std_logic;
SIGNAL \memoriaDados|ram~534_combout\ : std_logic;
SIGNAL \memoriaDados|ram~503_q\ : std_logic;
SIGNAL \memoriaDados|ram~239_q\ : std_logic;
SIGNAL \memoriaDados|ram~247_q\ : std_logic;
SIGNAL \memoriaDados|ram~495_q\ : std_logic;
SIGNAL \memoriaDados|ram~535_combout\ : std_logic;
SIGNAL \memoriaDados|ram~311_q\ : std_logic;
SIGNAL \memoriaDados|ram~47_q\ : std_logic;
SIGNAL \memoriaDados|ram~303_q\ : std_logic;
SIGNAL \memoriaDados|ram~55_q\ : std_logic;
SIGNAL \memoriaDados|ram~532_combout\ : std_logic;
SIGNAL \memoriaDados|ram~536_combout\ : std_logic;
SIGNAL \memoriaDados|ram~191_q\ : std_logic;
SIGNAL \memoriaDados|ram~63_q\ : std_logic;
SIGNAL \memoriaDados|ram~319_q\ : std_logic;
SIGNAL \memoriaDados|ram~447_q\ : std_logic;
SIGNAL \memoriaDados|ram~542_combout\ : std_logic;
SIGNAL \memoriaDados|ram~519_q\ : std_logic;
SIGNAL \memoriaDados|ram~263_q\ : std_logic;
SIGNAL \memoriaDados|ram~135_q\ : std_logic;
SIGNAL \memoriaDados|ram~391_q\ : std_logic;
SIGNAL \memoriaDados|ram~545_combout\ : std_logic;
SIGNAL \memoriaDados|ram~327_q\ : std_logic;
SIGNAL \memoriaDados|ram~71_q\ : std_logic;
SIGNAL \memoriaDados|ram~199_q\ : std_logic;
SIGNAL \memoriaDados|ram~455_q\ : std_logic;
SIGNAL \memoriaDados|ram~543_combout\ : std_logic;
SIGNAL \memoriaDados|ram~127_q\ : std_logic;
SIGNAL \memoriaDados|ram~383_q\ : std_logic;
SIGNAL \memoriaDados|ram~255_q\ : std_logic;
SIGNAL \memoriaDados|ram~511_q\ : std_logic;
SIGNAL \memoriaDados|ram~544_combout\ : std_logic;
SIGNAL \memoriaDados|ram~546_combout\ : std_logic;
SIGNAL \memoriaDados|ram~295feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~295_q\ : std_logic;
SIGNAL \memoriaDados|ram~31_q\ : std_logic;
SIGNAL \memoriaDados|ram~287_q\ : std_logic;
SIGNAL \memoriaDados|ram~39_q\ : std_logic;
SIGNAL \memoriaDados|ram~537_combout\ : std_logic;
SIGNAL \memoriaDados|ram~223_q\ : std_logic;
SIGNAL \memoriaDados|ram~231feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~231_q\ : std_logic;
SIGNAL \memoriaDados|ram~487feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~487_q\ : std_logic;
SIGNAL \memoriaDados|ram~479feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~479_q\ : std_logic;
SIGNAL \memoriaDados|ram~540_combout\ : std_logic;
SIGNAL \memoriaDados|ram~167_q\ : std_logic;
SIGNAL \memoriaDados|ram~423_q\ : std_logic;
SIGNAL \memoriaDados|ram~159_q\ : std_logic;
SIGNAL \memoriaDados|ram~415_q\ : std_logic;
SIGNAL \memoriaDados|ram~538_combout\ : std_logic;
SIGNAL \memoriaDados|ram~95_q\ : std_logic;
SIGNAL \memoriaDados|ram~351_q\ : std_logic;
SIGNAL \memoriaDados|ram~103_q\ : std_logic;
SIGNAL \memoriaDados|ram~359_q\ : std_logic;
SIGNAL \memoriaDados|ram~539_combout\ : std_logic;
SIGNAL \memoriaDados|ram~541_combout\ : std_logic;
SIGNAL \memoriaDados|ram~547_combout\ : std_logic;
SIGNAL \Data_IN[0]~4_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~2\ : std_logic;
SIGNAL \CPU|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|Decoder|Operacao~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~34_cout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~2\ : std_logic;
SIGNAL \CPU|ULA1|Add1~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[1]~1_combout\ : std_logic;
SIGNAL \CPU|ULA1|Equal1~0_combout\ : std_logic;
SIGNAL \memoriaDados|ram~96feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~96_q\ : std_logic;
SIGNAL \memoriaDados|ram~336feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~336_q\ : std_logic;
SIGNAL \memoriaDados|ram~80_q\ : std_logic;
SIGNAL \memoriaDados|ram~352_q\ : std_logic;
SIGNAL \memoriaDados|ram~550_combout\ : std_logic;
SIGNAL \memoriaDados|ram~368_q\ : std_logic;
SIGNAL \memoriaDados|ram~112feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~112_q\ : std_logic;
SIGNAL \memoriaDados|ram~128_q\ : std_logic;
SIGNAL \memoriaDados|ram~384_q\ : std_logic;
SIGNAL \memoriaDados|ram~551_combout\ : std_logic;
SIGNAL \memoriaDados|ram~304_q\ : std_logic;
SIGNAL \memoriaDados|ram~64feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~64_q\ : std_logic;
SIGNAL \memoriaDados|ram~48_q\ : std_logic;
SIGNAL \memoriaDados|ram~320_q\ : std_logic;
SIGNAL \memoriaDados|ram~549_combout\ : std_logic;
SIGNAL \memoriaDados|ram~32_q\ : std_logic;
SIGNAL \memoriaDados|ram~16_q\ : std_logic;
SIGNAL \memoriaDados|ram~272feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~272_q\ : std_logic;
SIGNAL \memoriaDados|ram~288_q\ : std_logic;
SIGNAL \memoriaDados|ram~548_combout\ : std_logic;
SIGNAL \memoriaDados|ram~552_combout\ : std_logic;
SIGNAL \memoriaDados|ram~256_q\ : std_logic;
SIGNAL \memoriaDados|ram~224feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~224_q\ : std_logic;
SIGNAL \memoriaDados|ram~480_q\ : std_logic;
SIGNAL \memoriaDados|ram~512_q\ : std_logic;
SIGNAL \memoriaDados|ram~561_combout\ : std_logic;
SIGNAL \memoriaDados|ram~240_q\ : std_logic;
SIGNAL \memoriaDados|ram~208_q\ : std_logic;
SIGNAL \memoriaDados|ram~464feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~464_q\ : std_logic;
SIGNAL \memoriaDados|ram~496_q\ : std_logic;
SIGNAL \memoriaDados|ram~560_combout\ : std_logic;
SIGNAL \memoriaDados|ram~416feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~416_q\ : std_logic;
SIGNAL \memoriaDados|ram~192_q\ : std_logic;
SIGNAL \memoriaDados|ram~160feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~160_q\ : std_logic;
SIGNAL \memoriaDados|ram~448_q\ : std_logic;
SIGNAL \memoriaDados|ram~559_combout\ : std_logic;
SIGNAL \memoriaDados|ram~400feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~400_q\ : std_logic;
SIGNAL \memoriaDados|ram~176feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~176_q\ : std_logic;
SIGNAL \memoriaDados|ram~144feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~144_q\ : std_logic;
SIGNAL \memoriaDados|ram~432_q\ : std_logic;
SIGNAL \memoriaDados|ram~558_combout\ : std_logic;
SIGNAL \memoriaDados|ram~562_combout\ : std_logic;
SIGNAL \memoriaDados|ram~184_q\ : std_logic;
SIGNAL \memoriaDados|ram~200_q\ : std_logic;
SIGNAL \memoriaDados|ram~440_q\ : std_logic;
SIGNAL \memoriaDados|ram~456_q\ : std_logic;
SIGNAL \memoriaDados|ram~564_combout\ : std_logic;
SIGNAL \memoriaDados|ram~472_q\ : std_logic;
SIGNAL \memoriaDados|ram~216_q\ : std_logic;
SIGNAL \memoriaDados|ram~232feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~232_q\ : std_logic;
SIGNAL \memoriaDados|ram~488_q\ : std_logic;
SIGNAL \memoriaDados|ram~565_combout\ : std_logic;
SIGNAL \memoriaDados|ram~248feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~248_q\ : std_logic;
SIGNAL \memoriaDados|ram~504_q\ : std_logic;
SIGNAL \memoriaDados|ram~264_q\ : std_logic;
SIGNAL \memoriaDados|ram~520_q\ : std_logic;
SIGNAL \memoriaDados|ram~566_combout\ : std_logic;
SIGNAL \memoriaDados|ram~408feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~408_q\ : std_logic;
SIGNAL \memoriaDados|ram~168feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~168_q\ : std_logic;
SIGNAL \memoriaDados|ram~152_q\ : std_logic;
SIGNAL \memoriaDados|ram~424_q\ : std_logic;
SIGNAL \memoriaDados|ram~563_combout\ : std_logic;
SIGNAL \memoriaDados|ram~567_combout\ : std_logic;
SIGNAL \memoriaDados|ram~104_q\ : std_logic;
SIGNAL \memoriaDados|ram~296feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~296_q\ : std_logic;
SIGNAL \memoriaDados|ram~40feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~40_q\ : std_logic;
SIGNAL \memoriaDados|ram~360_q\ : std_logic;
SIGNAL \memoriaDados|ram~555_combout\ : std_logic;
SIGNAL \memoriaDados|ram~120_q\ : std_logic;
SIGNAL \memoriaDados|ram~376_q\ : std_logic;
SIGNAL \memoriaDados|ram~56_q\ : std_logic;
SIGNAL \memoriaDados|ram~312_q\ : std_logic;
SIGNAL \memoriaDados|ram~554_combout\ : std_logic;
SIGNAL \memoriaDados|ram~72_q\ : std_logic;
SIGNAL \memoriaDados|ram~328_q\ : std_logic;
SIGNAL \memoriaDados|ram~136_q\ : std_logic;
SIGNAL \memoriaDados|ram~392_q\ : std_logic;
SIGNAL \memoriaDados|ram~556_combout\ : std_logic;
SIGNAL \memoriaDados|ram~280feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~280_q\ : std_logic;
SIGNAL \memoriaDados|ram~88_q\ : std_logic;
SIGNAL \memoriaDados|ram~24feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~24_q\ : std_logic;
SIGNAL \memoriaDados|ram~344_q\ : std_logic;
SIGNAL \memoriaDados|ram~553_combout\ : std_logic;
SIGNAL \memoriaDados|ram~557_combout\ : std_logic;
SIGNAL \memoriaDados|ram~568_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[1]~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~6\ : std_logic;
SIGNAL \CPU|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~6\ : std_logic;
SIGNAL \CPU|ULA1|Add1~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[2]~2_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~10\ : std_logic;
SIGNAL \CPU|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~10\ : std_logic;
SIGNAL \CPU|ULA1|Add1~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[3]~3_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~14\ : std_logic;
SIGNAL \CPU|ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~14\ : std_logic;
SIGNAL \CPU|ULA1|Add1~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[4]~4_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~18\ : std_logic;
SIGNAL \CPU|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~18\ : std_logic;
SIGNAL \CPU|ULA1|Add1~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[5]~5_combout\ : std_logic;
SIGNAL \memoriaDados|ram~428feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~428_q\ : std_logic;
SIGNAL \memoriaDados|ram~492_q\ : std_logic;
SIGNAL \memoriaDados|ram~460_q\ : std_logic;
SIGNAL \memoriaDados|ram~524_q\ : std_logic;
SIGNAL \memoriaDados|ram~650_combout\ : std_logic;
SIGNAL \memoriaDados|ram~476_q\ : std_logic;
SIGNAL \memoriaDados|ram~444feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~444_q\ : std_logic;
SIGNAL \memoriaDados|ram~412feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~412_q\ : std_logic;
SIGNAL \memoriaDados|ram~508_q\ : std_logic;
SIGNAL \memoriaDados|ram~648_combout\ : std_logic;
SIGNAL \memoriaDados|ram~364feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~364_q\ : std_logic;
SIGNAL \memoriaDados|ram~300_q\ : std_logic;
SIGNAL \memoriaDados|ram~332_q\ : std_logic;
SIGNAL \memoriaDados|ram~396_q\ : std_logic;
SIGNAL \memoriaDados|ram~649_combout\ : std_logic;
SIGNAL \memoriaDados|ram~284_q\ : std_logic;
SIGNAL \memoriaDados|ram~316_q\ : std_logic;
SIGNAL \memoriaDados|ram~348_q\ : std_logic;
SIGNAL \memoriaDados|ram~380_q\ : std_logic;
SIGNAL \memoriaDados|ram~647_combout\ : std_logic;
SIGNAL \memoriaDados|ram~651_combout\ : std_logic;
SIGNAL \memoriaDados|ram~156feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~156_q\ : std_logic;
SIGNAL \memoriaDados|ram~188_q\ : std_logic;
SIGNAL \memoriaDados|ram~172_q\ : std_logic;
SIGNAL \memoriaDados|ram~204_q\ : std_logic;
SIGNAL \memoriaDados|ram~643_combout\ : std_logic;
SIGNAL \memoriaDados|ram~44feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~44_q\ : std_logic;
SIGNAL \memoriaDados|ram~60_q\ : std_logic;
SIGNAL \memoriaDados|ram~28_q\ : std_logic;
SIGNAL \memoriaDados|ram~76_q\ : std_logic;
SIGNAL \memoriaDados|ram~642_combout\ : std_logic;
SIGNAL \memoriaDados|ram~252_q\ : std_logic;
SIGNAL \memoriaDados|ram~220_q\ : std_logic;
SIGNAL \memoriaDados|ram~236_q\ : std_logic;
SIGNAL \memoriaDados|ram~268_q\ : std_logic;
SIGNAL \memoriaDados|ram~645_combout\ : std_logic;
SIGNAL \memoriaDados|ram~124_q\ : std_logic;
SIGNAL \memoriaDados|ram~108feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~108_q\ : std_logic;
SIGNAL \memoriaDados|ram~92_q\ : std_logic;
SIGNAL \memoriaDados|ram~140_q\ : std_logic;
SIGNAL \memoriaDados|ram~644_combout\ : std_logic;
SIGNAL \memoriaDados|ram~646_combout\ : std_logic;
SIGNAL \memoriaDados|ram~148_q\ : std_logic;
SIGNAL \memoriaDados|ram~164feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~164_q\ : std_logic;
SIGNAL \memoriaDados|ram~180_q\ : std_logic;
SIGNAL \memoriaDados|ram~196_q\ : std_logic;
SIGNAL \memoriaDados|ram~633_combout\ : std_logic;
SIGNAL \memoriaDados|ram~116_q\ : std_logic;
SIGNAL \memoriaDados|ram~84feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~84_q\ : std_logic;
SIGNAL \memoriaDados|ram~100feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~100_q\ : std_logic;
SIGNAL \memoriaDados|ram~132_q\ : std_logic;
SIGNAL \memoriaDados|ram~634_combout\ : std_logic;
SIGNAL \memoriaDados|ram~68_q\ : std_logic;
SIGNAL \memoriaDados|ram~36feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~36_q\ : std_logic;
SIGNAL \memoriaDados|ram~20feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~20_q\ : std_logic;
SIGNAL \memoriaDados|ram~52_q\ : std_logic;
SIGNAL \memoriaDados|ram~632_combout\ : std_logic;
SIGNAL \memoriaDados|ram~244_q\ : std_logic;
SIGNAL \memoriaDados|ram~212_q\ : std_logic;
SIGNAL \memoriaDados|ram~228feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~228_q\ : std_logic;
SIGNAL \memoriaDados|ram~260_q\ : std_logic;
SIGNAL \memoriaDados|ram~635_combout\ : std_logic;
SIGNAL \memoriaDados|ram~636_combout\ : std_logic;
SIGNAL \memoriaDados|ram~404_q\ : std_logic;
SIGNAL \memoriaDados|ram~276feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~276_q\ : std_logic;
SIGNAL \memoriaDados|ram~308feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~308_q\ : std_logic;
SIGNAL \memoriaDados|ram~436_q\ : std_logic;
SIGNAL \memoriaDados|ram~637_combout\ : std_logic;
SIGNAL \memoriaDados|ram~356_q\ : std_logic;
SIGNAL \memoriaDados|ram~388feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~388_q\ : std_logic;
SIGNAL \memoriaDados|ram~484feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~484_q\ : std_logic;
SIGNAL \memoriaDados|ram~516_q\ : std_logic;
SIGNAL \memoriaDados|ram~640_combout\ : std_logic;
SIGNAL \memoriaDados|ram~340feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~340_q\ : std_logic;
SIGNAL \memoriaDados|ram~372_q\ : std_logic;
SIGNAL \memoriaDados|ram~468_q\ : std_logic;
SIGNAL \memoriaDados|ram~500_q\ : std_logic;
SIGNAL \memoriaDados|ram~639_combout\ : std_logic;
SIGNAL \memoriaDados|ram~420_q\ : std_logic;
SIGNAL \memoriaDados|ram~324_q\ : std_logic;
SIGNAL \memoriaDados|ram~292feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~292_q\ : std_logic;
SIGNAL \memoriaDados|ram~452_q\ : std_logic;
SIGNAL \memoriaDados|ram~638_combout\ : std_logic;
SIGNAL \memoriaDados|ram~641_combout\ : std_logic;
SIGNAL \memoriaDados|ram~652_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[5]~4_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~22\ : std_logic;
SIGNAL \CPU|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~22\ : std_logic;
SIGNAL \CPU|ULA1|Add1~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[6]~6_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~26\ : std_logic;
SIGNAL \CPU|ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[7]~7_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~26\ : std_logic;
SIGNAL \CPU|ULA1|Add1~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~1_sumout\ : std_logic;
SIGNAL \CPU|FLAG_IGUAL|DOUT~1_combout\ : std_logic;
SIGNAL \CPU|FLAG_IGUAL|DOUT~0_combout\ : std_logic;
SIGNAL \CPU|FLAG_IGUAL|DOUT~q\ : std_logic;
SIGNAL \CPU|MUX4x2_PC|Equal2~0_combout\ : std_logic;
SIGNAL \CPU|somaUm|Add0~6\ : std_logic;
SIGNAL \CPU|somaUm|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|MUX4x2_PC|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|somaUm|Add0~10\ : std_logic;
SIGNAL \CPU|somaUm|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|MUX4x2_PC|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|somaUm|Add0~14\ : std_logic;
SIGNAL \CPU|somaUm|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|MUX4x2_PC|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \CPU|somaUm|Add0~18\ : std_logic;
SIGNAL \CPU|somaUm|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|MUX4x2_PC|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \ROM1|memROM~43_combout\ : std_logic;
SIGNAL \ROM1|memROM~44_combout\ : std_logic;
SIGNAL \ROM1|memROM~45_combout\ : std_logic;
SIGNAL \ROM1|memROM~17_combout\ : std_logic;
SIGNAL \CPU|MUX4x2_PC|Equal1~0_combout\ : std_logic;
SIGNAL \CPU|somaUm|Add0~26\ : std_logic;
SIGNAL \CPU|somaUm|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|MUX4x2_PC|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \CPU|somaUm|Add0~30\ : std_logic;
SIGNAL \CPU|somaUm|Add0~33_sumout\ : std_logic;
SIGNAL \CPU|MUX4x2_PC|saida_MUX[8]~8_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \AND_HEX0~0_combout\ : std_logic;
SIGNAL \ANDLEDR~0_combout\ : std_logic;
SIGNAL \REGLEDR|DOUT[4]~feeder_combout\ : std_logic;
SIGNAL \REGLEDR|DOUT[5]~feeder_combout\ : std_logic;
SIGNAL \REGLEDR|DOUT[7]~feeder_combout\ : std_logic;
SIGNAL \ANDLEDR8~0_combout\ : std_logic;
SIGNAL \REGLEDR8|DOUT~0_combout\ : std_logic;
SIGNAL \REGLEDR8|DOUT~q\ : std_logic;
SIGNAL \REGLEDR9|DOUT~0_combout\ : std_logic;
SIGNAL \REGLEDR9|DOUT~q\ : std_logic;
SIGNAL \AND_HEX0~2_combout\ : std_logic;
SIGNAL \LED_HEX0|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \LED_HEX0|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \LED_HEX0|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \LED_HEX0|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \LED_HEX0|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \LED_HEX0|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \LED_HEX0|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \AND_HEX1~0_combout\ : std_logic;
SIGNAL \LED_HEX1|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \LED_HEX1|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \LED_HEX1|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \LED_HEX1|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \LED_HEX1|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \LED_HEX1|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \LED_HEX1|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \AND_HEX2~0_combout\ : std_logic;
SIGNAL \REG_HEX2|DOUT[2]~feeder_combout\ : std_logic;
SIGNAL \REG_HEX2|DOUT[1]~feeder_combout\ : std_logic;
SIGNAL \LED_HEX2|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \LED_HEX2|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \LED_HEX2|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \LED_HEX2|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \LED_HEX2|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \LED_HEX2|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \LED_HEX2|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \AND_HEX3~0_combout\ : std_logic;
SIGNAL \LED_HEX3|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \LED_HEX3|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \LED_HEX3|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \LED_HEX3|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \LED_HEX3|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \LED_HEX3|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \LED_HEX3|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \REG_HEX4|DOUT[2]~feeder_combout\ : std_logic;
SIGNAL \AND_HEX5~0_combout\ : std_logic;
SIGNAL \AND_HEX4~0_combout\ : std_logic;
SIGNAL \REG_HEX4|DOUT[1]~feeder_combout\ : std_logic;
SIGNAL \REG_HEX4|DOUT[3]~feeder_combout\ : std_logic;
SIGNAL \LED_HEX4|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \LED_HEX4|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \LED_HEX4|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \LED_HEX4|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \LED_HEX4|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \LED_HEX4|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \LED_HEX4|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \AND_HEX5~combout\ : std_logic;
SIGNAL \REG_HEX5|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \LED_HEX5|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \LED_HEX5|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \LED_HEX5|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \LED_HEX5|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \LED_HEX5|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \LED_HEX5|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \LED_HEX5|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \CPU|Decoder|OUTPUT\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \REGLEDR|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REG_HEX0|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|REG1|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REG_HEX1|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \REG_HEX2|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_HEX3|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_HEX4|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|END_RET|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \REG_HEX5|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \REG_HEX5|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_HEX4|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_HEX3|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_HEX2|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_HEX1|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_HEX0|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REGLEDR9|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \REGLEDR8|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~55_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \CPU|somaUm|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \CPU|somaUm|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \CPU|somaUm|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \CPU|somaUm|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \CPU|somaUm|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \CPU|somaUm|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \CPU|somaUm|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CPU|somaUm|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \CPU|somaUm|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \CPU|REG1|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \memoriaDados|ALT_INV_ram~536_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~535_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~503_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~247_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~495_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~239_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~534_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~375_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~119_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~367_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~111_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~533_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~439_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~183_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~431_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~175_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~532_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~311_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~55_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~303_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~47_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~531_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~530_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~471_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~215_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~463_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~207_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~529_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~343_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~87_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~335_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~79_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~528_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~407_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~151_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~399_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~143_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~527_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~279_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~271_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~15_q\ : std_logic;
SIGNAL \CPU|Decoder|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ALT_INV_AND_HEX5~0_combout\ : std_logic;
SIGNAL \CPU|END_RET|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ROM1|ALT_INV_memROM~24_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~23_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~22_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~21_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~20_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~19_combout\ : std_logic;
SIGNAL \CPU|MUX4x2_PC|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \CPU|MUX4x2_PC|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \CPU|FLAG_IGUAL|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~18_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~17_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \ALT_INV_ANDLEDR8~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \ALT_INV_AND_HEX0~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ALT_INV_AND_HEX0~0_combout\ : std_logic;
SIGNAL \DECODER_BLOCOS|ALT_INV_OUTPUT[5]~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~384_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~128_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~368_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~112_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~550_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~352_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~96_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~336_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~80_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~549_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~320_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~64_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~304_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~48_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~548_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~288_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~272_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \CPU|Decoder|ALT_INV_Operacao~0_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[0]~4_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[0]~3_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[0]~2_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[0]~1_combout\ : std_logic;
SIGNAL \DEB_MEM_KEY1|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \DEB_MEM_KEY0|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \ALT_INV_AND_ENABLE_BUFFER_8BITS~2_combout\ : std_logic;
SIGNAL \ALT_INV_AND_ENABLE_BUFFER_8BITS~1_combout\ : std_logic;
SIGNAL \ALT_INV_AND_ENABLE_BUFFER_8BITS~0_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[0]~0_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \CPU|Decoder|ALT_INV_Habilita_A~0_combout\ : std_logic;
SIGNAL \CPU|Decoder|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~547_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~546_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~545_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~519_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~263_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~391_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~135_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~544_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~511_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~255_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~383_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~127_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~543_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~455_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~199_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~327_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~71_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~542_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~447_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~191_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~319_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~63_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~541_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~540_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~487_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~231_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~479_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~223_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~539_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~359_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~103_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~351_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~95_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~538_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~423_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~167_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~415_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~159_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~537_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~295_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~39_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~287_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~177_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~145_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~569_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~113_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~81_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~49_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[1]~0_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~568_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~567_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~566_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~520_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~264_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~504_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~248_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~565_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~488_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~232_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~472_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~216_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~564_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~456_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~200_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~440_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~184_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~563_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~424_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~168_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~408_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~152_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~562_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~561_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~512_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~256_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~480_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~224_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~560_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~496_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~240_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~464_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~208_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~559_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~448_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~192_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~416_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~160_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~558_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~432_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~176_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~400_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~144_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~557_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~556_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~392_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~136_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~328_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~72_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~555_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~360_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~104_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~296_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~40_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~554_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~376_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~120_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~312_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~56_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~553_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~344_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~88_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~280_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~552_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~551_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~457_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~329_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~586_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~489_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~361_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~425_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~297_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~585_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~505_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~377_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~441_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~313_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~584_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~473_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~345_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~409_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~281_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~583_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~582_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~265_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~233_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~249_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~217_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~581_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~137_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~105_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~121_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~89_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~580_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~201_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~169_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~185_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~153_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~579_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~73_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~41_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~57_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~578_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~577_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~513_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~481_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~385_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~353_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~576_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~497_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~465_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~369_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~337_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~575_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~449_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~417_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~321_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~289_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~574_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~433_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~401_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~305_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~273_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~573_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~572_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~257_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~225_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~193_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~161_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~571_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~129_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~97_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~65_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~570_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~241_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~209_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~605_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~330_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~322_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~314_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~306_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~604_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~603_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~266_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~250_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~202_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~186_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~602_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~258_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~242_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~194_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~178_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~601_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~138_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~122_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~74_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~58_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~600_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~130_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~114_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~66_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~50_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~599_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~598_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~490_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~362_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~474_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~346_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~597_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~482_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~354_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~466_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~338_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~596_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~426_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~298_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~410_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~282_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~595_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~418_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~290_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~402_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~274_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~594_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~593_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~234_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~226_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~218_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~210_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~592_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~106_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~98_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~90_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~82_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~591_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~170_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~162_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~154_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~146_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~590_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~42_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[2]~1_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~589_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~588_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~587_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~521_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~393_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~227_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~107_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~99_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~622_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~203_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~195_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~75_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~67_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~621_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~171_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~163_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~43_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~620_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~619_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~507_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~499_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~443_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~435_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~618_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~475_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~467_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~411_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~403_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~617_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~379_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~371_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~315_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~307_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~616_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~347_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~339_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~283_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~275_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~615_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~614_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~251_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~243_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~219_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~211_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~613_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~123_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~115_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~91_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~83_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~612_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~187_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~179_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~155_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~147_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~611_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~59_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~51_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[3]~2_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~610_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~609_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~608_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~522_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~514_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~506_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~498_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~607_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~394_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~386_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~378_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~370_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~606_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~458_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~450_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~442_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~434_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~641_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~640_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~516_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~484_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~388_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~356_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~639_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~500_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~468_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~372_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~340_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~638_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~452_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~420_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~324_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~292_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~637_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~436_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~404_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~308_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~276_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~636_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~635_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~260_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~228_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~244_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~212_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~634_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~132_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~100_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~116_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~84_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~633_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~196_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~164_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~180_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~148_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~632_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~68_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~52_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[4]~3_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~631_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~630_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~629_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~523_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~515_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~491_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~483_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~628_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~395_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~387_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~363_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~355_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~627_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~459_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~451_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~427_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~419_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~626_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~331_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~323_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~299_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~291_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~625_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~624_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~267_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~259_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~139_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~131_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~623_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~235_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~659_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~429_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~301_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~413_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~285_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~658_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~421_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~293_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~405_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~277_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~657_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~656_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~237_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~221_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~173_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~157_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~655_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~229_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~213_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~165_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~149_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~654_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~109_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~93_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~45_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~653_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~101_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~85_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[5]~4_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~652_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~651_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~650_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~524_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~492_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~460_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~428_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~649_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~396_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~364_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~332_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~300_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~648_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~508_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~476_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~444_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~412_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~647_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~380_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~348_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~316_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~284_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~646_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~645_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~268_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~236_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~252_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~220_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~644_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~140_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~108_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~124_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~92_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~643_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~204_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~172_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~188_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~156_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~642_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~76_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~44_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~60_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~222_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~126_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~94_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~676_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~246_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~214_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~118_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~86_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~675_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~190_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~158_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~62_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~674_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~182_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~150_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~54_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[6]~5_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~673_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~672_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~671_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~525_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~509_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~461_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~445_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~670_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~517_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~501_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~453_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~437_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~669_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~397_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~381_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~333_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~317_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~668_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~389_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~373_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~325_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~309_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~667_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~666_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~269_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~261_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~253_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~245_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~665_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~141_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~133_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~125_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~117_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~664_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~205_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~197_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~189_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~181_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~663_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~77_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~69_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~61_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~53_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~662_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~661_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~493_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~365_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~477_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~349_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~660_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~485_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~357_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~469_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~341_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~699_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~697_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~695_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~25_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[7]~6_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~694_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~693_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~692_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~526_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~518_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~398_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~390_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~691_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~494_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~486_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~366_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~358_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~690_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~462_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~454_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~334_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~326_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~689_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~430_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~422_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~302_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~294_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~688_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~687_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~510_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~478_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~446_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~414_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~686_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~502_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~470_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~438_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~406_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~685_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~382_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~350_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~318_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~286_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~684_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~374_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~342_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~310_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~278_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~683_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~682_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~270_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~262_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~142_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~134_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~681_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~238_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~230_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~110_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~102_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~680_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~206_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~198_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~78_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~70_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~679_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~174_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~166_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~46_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~678_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~677_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~254_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~801_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~799_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~797_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~795_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~793_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~791_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~789_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~787_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~785_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~783_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~781_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~779_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~777_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~775_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~773_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~771_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~769_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~767_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~765_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~763_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~761_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~759_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~757_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~755_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~753_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~751_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~749_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~747_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~745_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~743_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~741_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~739_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~737_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~735_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~733_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~731_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~729_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~727_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~725_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~723_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~721_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~719_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~717_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~715_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~713_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~711_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~709_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~707_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~705_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~703_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~701_combout\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_FPGA_RESET~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~54_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~53_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~52_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~51_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~50_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~49_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~48_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~47_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~46_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~45_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~44_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~43_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~42_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~41_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~40_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~39_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~38_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~37_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~36_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~35_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~34_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~33_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~32_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~31_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~30_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~29_combout\ : std_logic;
SIGNAL \CPU|FLAG_IGUAL|ALT_INV_DOUT~1_combout\ : std_logic;
SIGNAL \detectorSub1|ALT_INV_saidaQ~q\ : std_logic;
SIGNAL \detectorSub0|ALT_INV_saidaQ~q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~28_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~27_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~26_combout\ : std_logic;
SIGNAL \ALT_INV_RESET_KEY1~combout\ : std_logic;
SIGNAL \ALT_INV_RESET_KEY0~combout\ : std_logic;
SIGNAL \ALT_INV_RESET_KEY0~0_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~821_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~819_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~817_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~815_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~813_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~811_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~809_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~807_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~805_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~803_combout\ : std_logic;
SIGNAL \REG_HEX5|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
ww_FPGA_RESET <= FPGA_RESET;
LEDR <= ww_LEDR;
Teste_Endereco <= ww_Teste_Endereco;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ROM1|ALT_INV_memROM~3_combout\ <= NOT \ROM1|memROM~3_combout\;
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\REG_HEX5|ALT_INV_DOUT\(2) <= NOT \REG_HEX5|DOUT\(2);
\REG_HEX5|ALT_INV_DOUT\(1) <= NOT \REG_HEX5|DOUT\(1);
\REG_HEX5|ALT_INV_DOUT\(3) <= NOT \REG_HEX5|DOUT\(3);
\REG_HEX5|ALT_INV_DOUT\(0) <= NOT \REG_HEX5|DOUT\(0);
\REG_HEX4|ALT_INV_DOUT\(2) <= NOT \REG_HEX4|DOUT\(2);
\REG_HEX4|ALT_INV_DOUT\(1) <= NOT \REG_HEX4|DOUT\(1);
\REG_HEX4|ALT_INV_DOUT\(3) <= NOT \REG_HEX4|DOUT\(3);
\REG_HEX4|ALT_INV_DOUT\(0) <= NOT \REG_HEX4|DOUT\(0);
\REG_HEX3|ALT_INV_DOUT\(2) <= NOT \REG_HEX3|DOUT\(2);
\REG_HEX3|ALT_INV_DOUT\(1) <= NOT \REG_HEX3|DOUT\(1);
\REG_HEX3|ALT_INV_DOUT\(3) <= NOT \REG_HEX3|DOUT\(3);
\REG_HEX3|ALT_INV_DOUT\(0) <= NOT \REG_HEX3|DOUT\(0);
\REG_HEX2|ALT_INV_DOUT\(2) <= NOT \REG_HEX2|DOUT\(2);
\REG_HEX2|ALT_INV_DOUT\(1) <= NOT \REG_HEX2|DOUT\(1);
\REG_HEX2|ALT_INV_DOUT\(3) <= NOT \REG_HEX2|DOUT\(3);
\REG_HEX2|ALT_INV_DOUT\(0) <= NOT \REG_HEX2|DOUT\(0);
\REG_HEX1|ALT_INV_DOUT\(2) <= NOT \REG_HEX1|DOUT\(2);
\REG_HEX1|ALT_INV_DOUT\(1) <= NOT \REG_HEX1|DOUT\(1);
\REG_HEX1|ALT_INV_DOUT\(3) <= NOT \REG_HEX1|DOUT\(3);
\REG_HEX1|ALT_INV_DOUT\(0) <= NOT \REG_HEX1|DOUT\(0);
\REG_HEX0|ALT_INV_DOUT\(2) <= NOT \REG_HEX0|DOUT\(2);
\REG_HEX0|ALT_INV_DOUT\(1) <= NOT \REG_HEX0|DOUT\(1);
\REG_HEX0|ALT_INV_DOUT\(3) <= NOT \REG_HEX0|DOUT\(3);
\REG_HEX0|ALT_INV_DOUT\(0) <= NOT \REG_HEX0|DOUT\(0);
\REGLEDR9|ALT_INV_DOUT~q\ <= NOT \REGLEDR9|DOUT~q\;
\REGLEDR8|ALT_INV_DOUT~q\ <= NOT \REGLEDR8|DOUT~q\;
\ROM1|ALT_INV_memROM~55_combout\ <= NOT \ROM1|memROM~55_combout\;
\CPU|ULA1|ALT_INV_Add1~29_sumout\ <= NOT \CPU|ULA1|Add1~29_sumout\;
\CPU|ULA1|ALT_INV_Add1~25_sumout\ <= NOT \CPU|ULA1|Add1~25_sumout\;
\CPU|ULA1|ALT_INV_Add1~21_sumout\ <= NOT \CPU|ULA1|Add1~21_sumout\;
\CPU|ULA1|ALT_INV_Add1~17_sumout\ <= NOT \CPU|ULA1|Add1~17_sumout\;
\CPU|ULA1|ALT_INV_Add1~13_sumout\ <= NOT \CPU|ULA1|Add1~13_sumout\;
\CPU|ULA1|ALT_INV_Add1~9_sumout\ <= NOT \CPU|ULA1|Add1~9_sumout\;
\CPU|ULA1|ALT_INV_Add1~5_sumout\ <= NOT \CPU|ULA1|Add1~5_sumout\;
\CPU|ULA1|ALT_INV_Add1~1_sumout\ <= NOT \CPU|ULA1|Add1~1_sumout\;
\CPU|somaUm|ALT_INV_Add0~33_sumout\ <= NOT \CPU|somaUm|Add0~33_sumout\;
\CPU|somaUm|ALT_INV_Add0~29_sumout\ <= NOT \CPU|somaUm|Add0~29_sumout\;
\CPU|somaUm|ALT_INV_Add0~25_sumout\ <= NOT \CPU|somaUm|Add0~25_sumout\;
\CPU|somaUm|ALT_INV_Add0~21_sumout\ <= NOT \CPU|somaUm|Add0~21_sumout\;
\CPU|somaUm|ALT_INV_Add0~17_sumout\ <= NOT \CPU|somaUm|Add0~17_sumout\;
\CPU|somaUm|ALT_INV_Add0~13_sumout\ <= NOT \CPU|somaUm|Add0~13_sumout\;
\CPU|somaUm|ALT_INV_Add0~9_sumout\ <= NOT \CPU|somaUm|Add0~9_sumout\;
\CPU|somaUm|ALT_INV_Add0~5_sumout\ <= NOT \CPU|somaUm|Add0~5_sumout\;
\CPU|somaUm|ALT_INV_Add0~1_sumout\ <= NOT \CPU|somaUm|Add0~1_sumout\;
\CPU|REG1|ALT_INV_DOUT\(7) <= NOT \CPU|REG1|DOUT\(7);
\CPU|REG1|ALT_INV_DOUT\(6) <= NOT \CPU|REG1|DOUT\(6);
\CPU|REG1|ALT_INV_DOUT\(5) <= NOT \CPU|REG1|DOUT\(5);
\CPU|REG1|ALT_INV_DOUT\(4) <= NOT \CPU|REG1|DOUT\(4);
\CPU|REG1|ALT_INV_DOUT\(3) <= NOT \CPU|REG1|DOUT\(3);
\CPU|REG1|ALT_INV_DOUT\(2) <= NOT \CPU|REG1|DOUT\(2);
\CPU|REG1|ALT_INV_DOUT\(1) <= NOT \CPU|REG1|DOUT\(1);
\CPU|REG1|ALT_INV_DOUT\(0) <= NOT \CPU|REG1|DOUT\(0);
\CPU|PC|ALT_INV_DOUT\(8) <= NOT \CPU|PC|DOUT\(8);
\CPU|PC|ALT_INV_DOUT\(7) <= NOT \CPU|PC|DOUT\(7);
\CPU|PC|ALT_INV_DOUT\(6) <= NOT \CPU|PC|DOUT\(6);
\CPU|PC|ALT_INV_DOUT\(5) <= NOT \CPU|PC|DOUT\(5);
\CPU|PC|ALT_INV_DOUT\(4) <= NOT \CPU|PC|DOUT\(4);
\CPU|PC|ALT_INV_DOUT\(3) <= NOT \CPU|PC|DOUT\(3);
\CPU|PC|ALT_INV_DOUT\(2) <= NOT \CPU|PC|DOUT\(2);
\CPU|PC|ALT_INV_DOUT\(1) <= NOT \CPU|PC|DOUT\(1);
\CPU|PC|ALT_INV_DOUT\(0) <= NOT \CPU|PC|DOUT\(0);
\memoriaDados|ALT_INV_ram~536_combout\ <= NOT \memoriaDados|ram~536_combout\;
\memoriaDados|ALT_INV_ram~535_combout\ <= NOT \memoriaDados|ram~535_combout\;
\memoriaDados|ALT_INV_ram~503_q\ <= NOT \memoriaDados|ram~503_q\;
\memoriaDados|ALT_INV_ram~247_q\ <= NOT \memoriaDados|ram~247_q\;
\memoriaDados|ALT_INV_ram~495_q\ <= NOT \memoriaDados|ram~495_q\;
\memoriaDados|ALT_INV_ram~239_q\ <= NOT \memoriaDados|ram~239_q\;
\memoriaDados|ALT_INV_ram~534_combout\ <= NOT \memoriaDados|ram~534_combout\;
\memoriaDados|ALT_INV_ram~375_q\ <= NOT \memoriaDados|ram~375_q\;
\memoriaDados|ALT_INV_ram~119_q\ <= NOT \memoriaDados|ram~119_q\;
\memoriaDados|ALT_INV_ram~367_q\ <= NOT \memoriaDados|ram~367_q\;
\memoriaDados|ALT_INV_ram~111_q\ <= NOT \memoriaDados|ram~111_q\;
\memoriaDados|ALT_INV_ram~533_combout\ <= NOT \memoriaDados|ram~533_combout\;
\memoriaDados|ALT_INV_ram~439_q\ <= NOT \memoriaDados|ram~439_q\;
\memoriaDados|ALT_INV_ram~183_q\ <= NOT \memoriaDados|ram~183_q\;
\memoriaDados|ALT_INV_ram~431_q\ <= NOT \memoriaDados|ram~431_q\;
\memoriaDados|ALT_INV_ram~175_q\ <= NOT \memoriaDados|ram~175_q\;
\memoriaDados|ALT_INV_ram~532_combout\ <= NOT \memoriaDados|ram~532_combout\;
\memoriaDados|ALT_INV_ram~311_q\ <= NOT \memoriaDados|ram~311_q\;
\memoriaDados|ALT_INV_ram~55_q\ <= NOT \memoriaDados|ram~55_q\;
\memoriaDados|ALT_INV_ram~303_q\ <= NOT \memoriaDados|ram~303_q\;
\memoriaDados|ALT_INV_ram~47_q\ <= NOT \memoriaDados|ram~47_q\;
\memoriaDados|ALT_INV_ram~531_combout\ <= NOT \memoriaDados|ram~531_combout\;
\memoriaDados|ALT_INV_ram~530_combout\ <= NOT \memoriaDados|ram~530_combout\;
\memoriaDados|ALT_INV_ram~471_q\ <= NOT \memoriaDados|ram~471_q\;
\memoriaDados|ALT_INV_ram~215_q\ <= NOT \memoriaDados|ram~215_q\;
\memoriaDados|ALT_INV_ram~463_q\ <= NOT \memoriaDados|ram~463_q\;
\memoriaDados|ALT_INV_ram~207_q\ <= NOT \memoriaDados|ram~207_q\;
\memoriaDados|ALT_INV_ram~529_combout\ <= NOT \memoriaDados|ram~529_combout\;
\memoriaDados|ALT_INV_ram~343_q\ <= NOT \memoriaDados|ram~343_q\;
\memoriaDados|ALT_INV_ram~87_q\ <= NOT \memoriaDados|ram~87_q\;
\memoriaDados|ALT_INV_ram~335_q\ <= NOT \memoriaDados|ram~335_q\;
\memoriaDados|ALT_INV_ram~79_q\ <= NOT \memoriaDados|ram~79_q\;
\memoriaDados|ALT_INV_ram~528_combout\ <= NOT \memoriaDados|ram~528_combout\;
\memoriaDados|ALT_INV_ram~407_q\ <= NOT \memoriaDados|ram~407_q\;
\memoriaDados|ALT_INV_ram~151_q\ <= NOT \memoriaDados|ram~151_q\;
\memoriaDados|ALT_INV_ram~399_q\ <= NOT \memoriaDados|ram~399_q\;
\memoriaDados|ALT_INV_ram~143_q\ <= NOT \memoriaDados|ram~143_q\;
\memoriaDados|ALT_INV_ram~527_combout\ <= NOT \memoriaDados|ram~527_combout\;
\memoriaDados|ALT_INV_ram~279_q\ <= NOT \memoriaDados|ram~279_q\;
\memoriaDados|ALT_INV_ram~23_q\ <= NOT \memoriaDados|ram~23_q\;
\memoriaDados|ALT_INV_ram~271_q\ <= NOT \memoriaDados|ram~271_q\;
\memoriaDados|ALT_INV_ram~15_q\ <= NOT \memoriaDados|ram~15_q\;
\CPU|Decoder|ALT_INV_Equal1~0_combout\ <= NOT \CPU|Decoder|Equal1~0_combout\;
\ALT_INV_AND_HEX5~0_combout\ <= NOT \AND_HEX5~0_combout\;
\CPU|END_RET|ALT_INV_DOUT\(8) <= NOT \CPU|END_RET|DOUT\(8);
\CPU|END_RET|ALT_INV_DOUT\(7) <= NOT \CPU|END_RET|DOUT\(7);
\CPU|END_RET|ALT_INV_DOUT\(6) <= NOT \CPU|END_RET|DOUT\(6);
\CPU|END_RET|ALT_INV_DOUT\(5) <= NOT \CPU|END_RET|DOUT\(5);
\ROM1|ALT_INV_memROM~24_combout\ <= NOT \ROM1|memROM~24_combout\;
\ROM1|ALT_INV_memROM~23_combout\ <= NOT \ROM1|memROM~23_combout\;
\ROM1|ALT_INV_memROM~22_combout\ <= NOT \ROM1|memROM~22_combout\;
\ROM1|ALT_INV_memROM~21_combout\ <= NOT \ROM1|memROM~21_combout\;
\ROM1|ALT_INV_memROM~20_combout\ <= NOT \ROM1|memROM~20_combout\;
\CPU|END_RET|ALT_INV_DOUT\(4) <= NOT \CPU|END_RET|DOUT\(4);
\ROM1|ALT_INV_memROM~19_combout\ <= NOT \ROM1|memROM~19_combout\;
\CPU|END_RET|ALT_INV_DOUT\(3) <= NOT \CPU|END_RET|DOUT\(3);
\CPU|END_RET|ALT_INV_DOUT\(2) <= NOT \CPU|END_RET|DOUT\(2);
\CPU|END_RET|ALT_INV_DOUT\(1) <= NOT \CPU|END_RET|DOUT\(1);
\CPU|MUX4x2_PC|ALT_INV_Equal1~0_combout\ <= NOT \CPU|MUX4x2_PC|Equal1~0_combout\;
\CPU|END_RET|ALT_INV_DOUT\(0) <= NOT \CPU|END_RET|DOUT\(0);
\CPU|MUX4x2_PC|ALT_INV_Equal2~0_combout\ <= NOT \CPU|MUX4x2_PC|Equal2~0_combout\;
\CPU|FLAG_IGUAL|ALT_INV_DOUT~q\ <= NOT \CPU|FLAG_IGUAL|DOUT~q\;
\ROM1|ALT_INV_memROM~18_combout\ <= NOT \ROM1|memROM~18_combout\;
\ROM1|ALT_INV_memROM~17_combout\ <= NOT \ROM1|memROM~17_combout\;
\ROM1|ALT_INV_memROM~16_combout\ <= NOT \ROM1|memROM~16_combout\;
\ROM1|ALT_INV_memROM~15_combout\ <= NOT \ROM1|memROM~15_combout\;
\ALT_INV_ANDLEDR8~0_combout\ <= NOT \ANDLEDR8~0_combout\;
\ROM1|ALT_INV_memROM~14_combout\ <= NOT \ROM1|memROM~14_combout\;
\ROM1|ALT_INV_memROM~13_combout\ <= NOT \ROM1|memROM~13_combout\;
\ALT_INV_AND_HEX0~1_combout\ <= NOT \AND_HEX0~1_combout\;
\ROM1|ALT_INV_memROM~12_combout\ <= NOT \ROM1|memROM~12_combout\;
\ROM1|ALT_INV_memROM~11_combout\ <= NOT \ROM1|memROM~11_combout\;
\ALT_INV_AND_HEX0~0_combout\ <= NOT \AND_HEX0~0_combout\;
\DECODER_BLOCOS|ALT_INV_OUTPUT[5]~0_combout\ <= NOT \DECODER_BLOCOS|OUTPUT[5]~0_combout\;
\ROM1|ALT_INV_memROM~10_combout\ <= NOT \ROM1|memROM~10_combout\;
\ROM1|ALT_INV_memROM~9_combout\ <= NOT \ROM1|memROM~9_combout\;
\ROM1|ALT_INV_memROM~8_combout\ <= NOT \ROM1|memROM~8_combout\;
\ROM1|ALT_INV_memROM~7_combout\ <= NOT \ROM1|memROM~7_combout\;
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\memoriaDados|ALT_INV_ram~384_q\ <= NOT \memoriaDados|ram~384_q\;
\memoriaDados|ALT_INV_ram~128_q\ <= NOT \memoriaDados|ram~128_q\;
\memoriaDados|ALT_INV_ram~368_q\ <= NOT \memoriaDados|ram~368_q\;
\memoriaDados|ALT_INV_ram~112_q\ <= NOT \memoriaDados|ram~112_q\;
\memoriaDados|ALT_INV_ram~550_combout\ <= NOT \memoriaDados|ram~550_combout\;
\memoriaDados|ALT_INV_ram~352_q\ <= NOT \memoriaDados|ram~352_q\;
\memoriaDados|ALT_INV_ram~96_q\ <= NOT \memoriaDados|ram~96_q\;
\memoriaDados|ALT_INV_ram~336_q\ <= NOT \memoriaDados|ram~336_q\;
\memoriaDados|ALT_INV_ram~80_q\ <= NOT \memoriaDados|ram~80_q\;
\memoriaDados|ALT_INV_ram~549_combout\ <= NOT \memoriaDados|ram~549_combout\;
\memoriaDados|ALT_INV_ram~320_q\ <= NOT \memoriaDados|ram~320_q\;
\memoriaDados|ALT_INV_ram~64_q\ <= NOT \memoriaDados|ram~64_q\;
\memoriaDados|ALT_INV_ram~304_q\ <= NOT \memoriaDados|ram~304_q\;
\memoriaDados|ALT_INV_ram~48_q\ <= NOT \memoriaDados|ram~48_q\;
\memoriaDados|ALT_INV_ram~548_combout\ <= NOT \memoriaDados|ram~548_combout\;
\memoriaDados|ALT_INV_ram~288_q\ <= NOT \memoriaDados|ram~288_q\;
\memoriaDados|ALT_INV_ram~32_q\ <= NOT \memoriaDados|ram~32_q\;
\memoriaDados|ALT_INV_ram~272_q\ <= NOT \memoriaDados|ram~272_q\;
\memoriaDados|ALT_INV_ram~16_q\ <= NOT \memoriaDados|ram~16_q\;
\CPU|Decoder|ALT_INV_Operacao~0_combout\ <= NOT \CPU|Decoder|Operacao~0_combout\;
\ALT_INV_Data_IN[0]~4_combout\ <= NOT \Data_IN[0]~4_combout\;
\ALT_INV_Data_IN[0]~3_combout\ <= NOT \Data_IN[0]~3_combout\;
\ALT_INV_Data_IN[0]~2_combout\ <= NOT \Data_IN[0]~2_combout\;
\ALT_INV_Data_IN[0]~1_combout\ <= NOT \Data_IN[0]~1_combout\;
\DEB_MEM_KEY1|ALT_INV_DOUT~q\ <= NOT \DEB_MEM_KEY1|DOUT~q\;
\DEB_MEM_KEY0|ALT_INV_DOUT~q\ <= NOT \DEB_MEM_KEY0|DOUT~q\;
\ALT_INV_AND_ENABLE_BUFFER_8BITS~2_combout\ <= NOT \AND_ENABLE_BUFFER_8BITS~2_combout\;
\ALT_INV_AND_ENABLE_BUFFER_8BITS~1_combout\ <= NOT \AND_ENABLE_BUFFER_8BITS~1_combout\;
\ALT_INV_AND_ENABLE_BUFFER_8BITS~0_combout\ <= NOT \AND_ENABLE_BUFFER_8BITS~0_combout\;
\ALT_INV_Data_IN[0]~0_combout\ <= NOT \Data_IN[0]~0_combout\;
\memoriaDados|ALT_INV_process_0~0_combout\ <= NOT \memoriaDados|process_0~0_combout\;
\CPU|Decoder|ALT_INV_Habilita_A~0_combout\ <= NOT \CPU|Decoder|Habilita_A~0_combout\;
\CPU|Decoder|ALT_INV_Equal1~1_combout\ <= NOT \CPU|Decoder|Equal1~1_combout\;
\memoriaDados|ALT_INV_ram~547_combout\ <= NOT \memoriaDados|ram~547_combout\;
\memoriaDados|ALT_INV_ram~546_combout\ <= NOT \memoriaDados|ram~546_combout\;
\memoriaDados|ALT_INV_ram~545_combout\ <= NOT \memoriaDados|ram~545_combout\;
\memoriaDados|ALT_INV_ram~519_q\ <= NOT \memoriaDados|ram~519_q\;
\memoriaDados|ALT_INV_ram~263_q\ <= NOT \memoriaDados|ram~263_q\;
\memoriaDados|ALT_INV_ram~391_q\ <= NOT \memoriaDados|ram~391_q\;
\memoriaDados|ALT_INV_ram~135_q\ <= NOT \memoriaDados|ram~135_q\;
\memoriaDados|ALT_INV_ram~544_combout\ <= NOT \memoriaDados|ram~544_combout\;
\memoriaDados|ALT_INV_ram~511_q\ <= NOT \memoriaDados|ram~511_q\;
\memoriaDados|ALT_INV_ram~255_q\ <= NOT \memoriaDados|ram~255_q\;
\memoriaDados|ALT_INV_ram~383_q\ <= NOT \memoriaDados|ram~383_q\;
\memoriaDados|ALT_INV_ram~127_q\ <= NOT \memoriaDados|ram~127_q\;
\memoriaDados|ALT_INV_ram~543_combout\ <= NOT \memoriaDados|ram~543_combout\;
\memoriaDados|ALT_INV_ram~455_q\ <= NOT \memoriaDados|ram~455_q\;
\memoriaDados|ALT_INV_ram~199_q\ <= NOT \memoriaDados|ram~199_q\;
\memoriaDados|ALT_INV_ram~327_q\ <= NOT \memoriaDados|ram~327_q\;
\memoriaDados|ALT_INV_ram~71_q\ <= NOT \memoriaDados|ram~71_q\;
\memoriaDados|ALT_INV_ram~542_combout\ <= NOT \memoriaDados|ram~542_combout\;
\memoriaDados|ALT_INV_ram~447_q\ <= NOT \memoriaDados|ram~447_q\;
\memoriaDados|ALT_INV_ram~191_q\ <= NOT \memoriaDados|ram~191_q\;
\memoriaDados|ALT_INV_ram~319_q\ <= NOT \memoriaDados|ram~319_q\;
\memoriaDados|ALT_INV_ram~63_q\ <= NOT \memoriaDados|ram~63_q\;
\memoriaDados|ALT_INV_ram~541_combout\ <= NOT \memoriaDados|ram~541_combout\;
\memoriaDados|ALT_INV_ram~540_combout\ <= NOT \memoriaDados|ram~540_combout\;
\memoriaDados|ALT_INV_ram~487_q\ <= NOT \memoriaDados|ram~487_q\;
\memoriaDados|ALT_INV_ram~231_q\ <= NOT \memoriaDados|ram~231_q\;
\memoriaDados|ALT_INV_ram~479_q\ <= NOT \memoriaDados|ram~479_q\;
\memoriaDados|ALT_INV_ram~223_q\ <= NOT \memoriaDados|ram~223_q\;
\memoriaDados|ALT_INV_ram~539_combout\ <= NOT \memoriaDados|ram~539_combout\;
\memoriaDados|ALT_INV_ram~359_q\ <= NOT \memoriaDados|ram~359_q\;
\memoriaDados|ALT_INV_ram~103_q\ <= NOT \memoriaDados|ram~103_q\;
\memoriaDados|ALT_INV_ram~351_q\ <= NOT \memoriaDados|ram~351_q\;
\memoriaDados|ALT_INV_ram~95_q\ <= NOT \memoriaDados|ram~95_q\;
\memoriaDados|ALT_INV_ram~538_combout\ <= NOT \memoriaDados|ram~538_combout\;
\memoriaDados|ALT_INV_ram~423_q\ <= NOT \memoriaDados|ram~423_q\;
\memoriaDados|ALT_INV_ram~167_q\ <= NOT \memoriaDados|ram~167_q\;
\memoriaDados|ALT_INV_ram~415_q\ <= NOT \memoriaDados|ram~415_q\;
\memoriaDados|ALT_INV_ram~159_q\ <= NOT \memoriaDados|ram~159_q\;
\memoriaDados|ALT_INV_ram~537_combout\ <= NOT \memoriaDados|ram~537_combout\;
\memoriaDados|ALT_INV_ram~295_q\ <= NOT \memoriaDados|ram~295_q\;
\memoriaDados|ALT_INV_ram~39_q\ <= NOT \memoriaDados|ram~39_q\;
\memoriaDados|ALT_INV_ram~287_q\ <= NOT \memoriaDados|ram~287_q\;
\memoriaDados|ALT_INV_ram~31_q\ <= NOT \memoriaDados|ram~31_q\;
\memoriaDados|ALT_INV_ram~177_q\ <= NOT \memoriaDados|ram~177_q\;
\memoriaDados|ALT_INV_ram~145_q\ <= NOT \memoriaDados|ram~145_q\;
\memoriaDados|ALT_INV_ram~569_combout\ <= NOT \memoriaDados|ram~569_combout\;
\memoriaDados|ALT_INV_ram~113_q\ <= NOT \memoriaDados|ram~113_q\;
\memoriaDados|ALT_INV_ram~81_q\ <= NOT \memoriaDados|ram~81_q\;
\memoriaDados|ALT_INV_ram~49_q\ <= NOT \memoriaDados|ram~49_q\;
\memoriaDados|ALT_INV_ram~17_q\ <= NOT \memoriaDados|ram~17_q\;
\CPU|MUX1|ALT_INV_saida_MUX[1]~0_combout\ <= NOT \CPU|MUX1|saida_MUX[1]~0_combout\;
\memoriaDados|ALT_INV_ram~568_combout\ <= NOT \memoriaDados|ram~568_combout\;
\memoriaDados|ALT_INV_ram~567_combout\ <= NOT \memoriaDados|ram~567_combout\;
\memoriaDados|ALT_INV_ram~566_combout\ <= NOT \memoriaDados|ram~566_combout\;
\memoriaDados|ALT_INV_ram~520_q\ <= NOT \memoriaDados|ram~520_q\;
\memoriaDados|ALT_INV_ram~264_q\ <= NOT \memoriaDados|ram~264_q\;
\memoriaDados|ALT_INV_ram~504_q\ <= NOT \memoriaDados|ram~504_q\;
\memoriaDados|ALT_INV_ram~248_q\ <= NOT \memoriaDados|ram~248_q\;
\memoriaDados|ALT_INV_ram~565_combout\ <= NOT \memoriaDados|ram~565_combout\;
\memoriaDados|ALT_INV_ram~488_q\ <= NOT \memoriaDados|ram~488_q\;
\memoriaDados|ALT_INV_ram~232_q\ <= NOT \memoriaDados|ram~232_q\;
\memoriaDados|ALT_INV_ram~472_q\ <= NOT \memoriaDados|ram~472_q\;
\memoriaDados|ALT_INV_ram~216_q\ <= NOT \memoriaDados|ram~216_q\;
\memoriaDados|ALT_INV_ram~564_combout\ <= NOT \memoriaDados|ram~564_combout\;
\memoriaDados|ALT_INV_ram~456_q\ <= NOT \memoriaDados|ram~456_q\;
\memoriaDados|ALT_INV_ram~200_q\ <= NOT \memoriaDados|ram~200_q\;
\memoriaDados|ALT_INV_ram~440_q\ <= NOT \memoriaDados|ram~440_q\;
\memoriaDados|ALT_INV_ram~184_q\ <= NOT \memoriaDados|ram~184_q\;
\memoriaDados|ALT_INV_ram~563_combout\ <= NOT \memoriaDados|ram~563_combout\;
\memoriaDados|ALT_INV_ram~424_q\ <= NOT \memoriaDados|ram~424_q\;
\memoriaDados|ALT_INV_ram~168_q\ <= NOT \memoriaDados|ram~168_q\;
\memoriaDados|ALT_INV_ram~408_q\ <= NOT \memoriaDados|ram~408_q\;
\memoriaDados|ALT_INV_ram~152_q\ <= NOT \memoriaDados|ram~152_q\;
\memoriaDados|ALT_INV_ram~562_combout\ <= NOT \memoriaDados|ram~562_combout\;
\memoriaDados|ALT_INV_ram~561_combout\ <= NOT \memoriaDados|ram~561_combout\;
\memoriaDados|ALT_INV_ram~512_q\ <= NOT \memoriaDados|ram~512_q\;
\memoriaDados|ALT_INV_ram~256_q\ <= NOT \memoriaDados|ram~256_q\;
\memoriaDados|ALT_INV_ram~480_q\ <= NOT \memoriaDados|ram~480_q\;
\memoriaDados|ALT_INV_ram~224_q\ <= NOT \memoriaDados|ram~224_q\;
\memoriaDados|ALT_INV_ram~560_combout\ <= NOT \memoriaDados|ram~560_combout\;
\memoriaDados|ALT_INV_ram~496_q\ <= NOT \memoriaDados|ram~496_q\;
\memoriaDados|ALT_INV_ram~240_q\ <= NOT \memoriaDados|ram~240_q\;
\memoriaDados|ALT_INV_ram~464_q\ <= NOT \memoriaDados|ram~464_q\;
\memoriaDados|ALT_INV_ram~208_q\ <= NOT \memoriaDados|ram~208_q\;
\memoriaDados|ALT_INV_ram~559_combout\ <= NOT \memoriaDados|ram~559_combout\;
\memoriaDados|ALT_INV_ram~448_q\ <= NOT \memoriaDados|ram~448_q\;
\memoriaDados|ALT_INV_ram~192_q\ <= NOT \memoriaDados|ram~192_q\;
\memoriaDados|ALT_INV_ram~416_q\ <= NOT \memoriaDados|ram~416_q\;
\memoriaDados|ALT_INV_ram~160_q\ <= NOT \memoriaDados|ram~160_q\;
\memoriaDados|ALT_INV_ram~558_combout\ <= NOT \memoriaDados|ram~558_combout\;
\memoriaDados|ALT_INV_ram~432_q\ <= NOT \memoriaDados|ram~432_q\;
\memoriaDados|ALT_INV_ram~176_q\ <= NOT \memoriaDados|ram~176_q\;
\memoriaDados|ALT_INV_ram~400_q\ <= NOT \memoriaDados|ram~400_q\;
\memoriaDados|ALT_INV_ram~144_q\ <= NOT \memoriaDados|ram~144_q\;
\memoriaDados|ALT_INV_ram~557_combout\ <= NOT \memoriaDados|ram~557_combout\;
\memoriaDados|ALT_INV_ram~556_combout\ <= NOT \memoriaDados|ram~556_combout\;
\memoriaDados|ALT_INV_ram~392_q\ <= NOT \memoriaDados|ram~392_q\;
\memoriaDados|ALT_INV_ram~136_q\ <= NOT \memoriaDados|ram~136_q\;
\memoriaDados|ALT_INV_ram~328_q\ <= NOT \memoriaDados|ram~328_q\;
\memoriaDados|ALT_INV_ram~72_q\ <= NOT \memoriaDados|ram~72_q\;
\memoriaDados|ALT_INV_ram~555_combout\ <= NOT \memoriaDados|ram~555_combout\;
\memoriaDados|ALT_INV_ram~360_q\ <= NOT \memoriaDados|ram~360_q\;
\memoriaDados|ALT_INV_ram~104_q\ <= NOT \memoriaDados|ram~104_q\;
\memoriaDados|ALT_INV_ram~296_q\ <= NOT \memoriaDados|ram~296_q\;
\memoriaDados|ALT_INV_ram~40_q\ <= NOT \memoriaDados|ram~40_q\;
\memoriaDados|ALT_INV_ram~554_combout\ <= NOT \memoriaDados|ram~554_combout\;
\memoriaDados|ALT_INV_ram~376_q\ <= NOT \memoriaDados|ram~376_q\;
\memoriaDados|ALT_INV_ram~120_q\ <= NOT \memoriaDados|ram~120_q\;
\memoriaDados|ALT_INV_ram~312_q\ <= NOT \memoriaDados|ram~312_q\;
\memoriaDados|ALT_INV_ram~56_q\ <= NOT \memoriaDados|ram~56_q\;
\memoriaDados|ALT_INV_ram~553_combout\ <= NOT \memoriaDados|ram~553_combout\;
\memoriaDados|ALT_INV_ram~344_q\ <= NOT \memoriaDados|ram~344_q\;
\memoriaDados|ALT_INV_ram~88_q\ <= NOT \memoriaDados|ram~88_q\;
\memoriaDados|ALT_INV_ram~280_q\ <= NOT \memoriaDados|ram~280_q\;
\memoriaDados|ALT_INV_ram~24_q\ <= NOT \memoriaDados|ram~24_q\;
\memoriaDados|ALT_INV_ram~552_combout\ <= NOT \memoriaDados|ram~552_combout\;
\memoriaDados|ALT_INV_ram~551_combout\ <= NOT \memoriaDados|ram~551_combout\;
\memoriaDados|ALT_INV_ram~457_q\ <= NOT \memoriaDados|ram~457_q\;
\memoriaDados|ALT_INV_ram~329_q\ <= NOT \memoriaDados|ram~329_q\;
\memoriaDados|ALT_INV_ram~586_combout\ <= NOT \memoriaDados|ram~586_combout\;
\memoriaDados|ALT_INV_ram~489_q\ <= NOT \memoriaDados|ram~489_q\;
\memoriaDados|ALT_INV_ram~361_q\ <= NOT \memoriaDados|ram~361_q\;
\memoriaDados|ALT_INV_ram~425_q\ <= NOT \memoriaDados|ram~425_q\;
\memoriaDados|ALT_INV_ram~297_q\ <= NOT \memoriaDados|ram~297_q\;
\memoriaDados|ALT_INV_ram~585_combout\ <= NOT \memoriaDados|ram~585_combout\;
\memoriaDados|ALT_INV_ram~505_q\ <= NOT \memoriaDados|ram~505_q\;
\memoriaDados|ALT_INV_ram~377_q\ <= NOT \memoriaDados|ram~377_q\;
\memoriaDados|ALT_INV_ram~441_q\ <= NOT \memoriaDados|ram~441_q\;
\memoriaDados|ALT_INV_ram~313_q\ <= NOT \memoriaDados|ram~313_q\;
\memoriaDados|ALT_INV_ram~584_combout\ <= NOT \memoriaDados|ram~584_combout\;
\memoriaDados|ALT_INV_ram~473_q\ <= NOT \memoriaDados|ram~473_q\;
\memoriaDados|ALT_INV_ram~345_q\ <= NOT \memoriaDados|ram~345_q\;
\memoriaDados|ALT_INV_ram~409_q\ <= NOT \memoriaDados|ram~409_q\;
\memoriaDados|ALT_INV_ram~281_q\ <= NOT \memoriaDados|ram~281_q\;
\memoriaDados|ALT_INV_ram~583_combout\ <= NOT \memoriaDados|ram~583_combout\;
\memoriaDados|ALT_INV_ram~582_combout\ <= NOT \memoriaDados|ram~582_combout\;
\memoriaDados|ALT_INV_ram~265_q\ <= NOT \memoriaDados|ram~265_q\;
\memoriaDados|ALT_INV_ram~233_q\ <= NOT \memoriaDados|ram~233_q\;
\memoriaDados|ALT_INV_ram~249_q\ <= NOT \memoriaDados|ram~249_q\;
\memoriaDados|ALT_INV_ram~217_q\ <= NOT \memoriaDados|ram~217_q\;
\memoriaDados|ALT_INV_ram~581_combout\ <= NOT \memoriaDados|ram~581_combout\;
\memoriaDados|ALT_INV_ram~137_q\ <= NOT \memoriaDados|ram~137_q\;
\memoriaDados|ALT_INV_ram~105_q\ <= NOT \memoriaDados|ram~105_q\;
\memoriaDados|ALT_INV_ram~121_q\ <= NOT \memoriaDados|ram~121_q\;
\memoriaDados|ALT_INV_ram~89_q\ <= NOT \memoriaDados|ram~89_q\;
\memoriaDados|ALT_INV_ram~580_combout\ <= NOT \memoriaDados|ram~580_combout\;
\memoriaDados|ALT_INV_ram~201_q\ <= NOT \memoriaDados|ram~201_q\;
\memoriaDados|ALT_INV_ram~169_q\ <= NOT \memoriaDados|ram~169_q\;
\memoriaDados|ALT_INV_ram~185_q\ <= NOT \memoriaDados|ram~185_q\;
\memoriaDados|ALT_INV_ram~153_q\ <= NOT \memoriaDados|ram~153_q\;
\memoriaDados|ALT_INV_ram~579_combout\ <= NOT \memoriaDados|ram~579_combout\;
\memoriaDados|ALT_INV_ram~73_q\ <= NOT \memoriaDados|ram~73_q\;
\memoriaDados|ALT_INV_ram~41_q\ <= NOT \memoriaDados|ram~41_q\;
\memoriaDados|ALT_INV_ram~57_q\ <= NOT \memoriaDados|ram~57_q\;
\memoriaDados|ALT_INV_ram~25_q\ <= NOT \memoriaDados|ram~25_q\;
\memoriaDados|ALT_INV_ram~578_combout\ <= NOT \memoriaDados|ram~578_combout\;
\memoriaDados|ALT_INV_ram~577_combout\ <= NOT \memoriaDados|ram~577_combout\;
\memoriaDados|ALT_INV_ram~513_q\ <= NOT \memoriaDados|ram~513_q\;
\memoriaDados|ALT_INV_ram~481_q\ <= NOT \memoriaDados|ram~481_q\;
\memoriaDados|ALT_INV_ram~385_q\ <= NOT \memoriaDados|ram~385_q\;
\memoriaDados|ALT_INV_ram~353_q\ <= NOT \memoriaDados|ram~353_q\;
\memoriaDados|ALT_INV_ram~576_combout\ <= NOT \memoriaDados|ram~576_combout\;
\memoriaDados|ALT_INV_ram~497_q\ <= NOT \memoriaDados|ram~497_q\;
\memoriaDados|ALT_INV_ram~465_q\ <= NOT \memoriaDados|ram~465_q\;
\memoriaDados|ALT_INV_ram~369_q\ <= NOT \memoriaDados|ram~369_q\;
\memoriaDados|ALT_INV_ram~337_q\ <= NOT \memoriaDados|ram~337_q\;
\memoriaDados|ALT_INV_ram~575_combout\ <= NOT \memoriaDados|ram~575_combout\;
\memoriaDados|ALT_INV_ram~449_q\ <= NOT \memoriaDados|ram~449_q\;
\memoriaDados|ALT_INV_ram~417_q\ <= NOT \memoriaDados|ram~417_q\;
\memoriaDados|ALT_INV_ram~321_q\ <= NOT \memoriaDados|ram~321_q\;
\memoriaDados|ALT_INV_ram~289_q\ <= NOT \memoriaDados|ram~289_q\;
\memoriaDados|ALT_INV_ram~574_combout\ <= NOT \memoriaDados|ram~574_combout\;
\memoriaDados|ALT_INV_ram~433_q\ <= NOT \memoriaDados|ram~433_q\;
\memoriaDados|ALT_INV_ram~401_q\ <= NOT \memoriaDados|ram~401_q\;
\memoriaDados|ALT_INV_ram~305_q\ <= NOT \memoriaDados|ram~305_q\;
\memoriaDados|ALT_INV_ram~273_q\ <= NOT \memoriaDados|ram~273_q\;
\memoriaDados|ALT_INV_ram~573_combout\ <= NOT \memoriaDados|ram~573_combout\;
\memoriaDados|ALT_INV_ram~572_combout\ <= NOT \memoriaDados|ram~572_combout\;
\memoriaDados|ALT_INV_ram~257_q\ <= NOT \memoriaDados|ram~257_q\;
\memoriaDados|ALT_INV_ram~225_q\ <= NOT \memoriaDados|ram~225_q\;
\memoriaDados|ALT_INV_ram~193_q\ <= NOT \memoriaDados|ram~193_q\;
\memoriaDados|ALT_INV_ram~161_q\ <= NOT \memoriaDados|ram~161_q\;
\memoriaDados|ALT_INV_ram~571_combout\ <= NOT \memoriaDados|ram~571_combout\;
\memoriaDados|ALT_INV_ram~129_q\ <= NOT \memoriaDados|ram~129_q\;
\memoriaDados|ALT_INV_ram~97_q\ <= NOT \memoriaDados|ram~97_q\;
\memoriaDados|ALT_INV_ram~65_q\ <= NOT \memoriaDados|ram~65_q\;
\memoriaDados|ALT_INV_ram~33_q\ <= NOT \memoriaDados|ram~33_q\;
\memoriaDados|ALT_INV_ram~570_combout\ <= NOT \memoriaDados|ram~570_combout\;
\memoriaDados|ALT_INV_ram~241_q\ <= NOT \memoriaDados|ram~241_q\;
\memoriaDados|ALT_INV_ram~209_q\ <= NOT \memoriaDados|ram~209_q\;
\memoriaDados|ALT_INV_ram~605_combout\ <= NOT \memoriaDados|ram~605_combout\;
\memoriaDados|ALT_INV_ram~330_q\ <= NOT \memoriaDados|ram~330_q\;
\memoriaDados|ALT_INV_ram~322_q\ <= NOT \memoriaDados|ram~322_q\;
\memoriaDados|ALT_INV_ram~314_q\ <= NOT \memoriaDados|ram~314_q\;
\memoriaDados|ALT_INV_ram~306_q\ <= NOT \memoriaDados|ram~306_q\;
\memoriaDados|ALT_INV_ram~604_combout\ <= NOT \memoriaDados|ram~604_combout\;
\memoriaDados|ALT_INV_ram~603_combout\ <= NOT \memoriaDados|ram~603_combout\;
\memoriaDados|ALT_INV_ram~266_q\ <= NOT \memoriaDados|ram~266_q\;
\memoriaDados|ALT_INV_ram~250_q\ <= NOT \memoriaDados|ram~250_q\;
\memoriaDados|ALT_INV_ram~202_q\ <= NOT \memoriaDados|ram~202_q\;
\memoriaDados|ALT_INV_ram~186_q\ <= NOT \memoriaDados|ram~186_q\;
\memoriaDados|ALT_INV_ram~602_combout\ <= NOT \memoriaDados|ram~602_combout\;
\memoriaDados|ALT_INV_ram~258_q\ <= NOT \memoriaDados|ram~258_q\;
\memoriaDados|ALT_INV_ram~242_q\ <= NOT \memoriaDados|ram~242_q\;
\memoriaDados|ALT_INV_ram~194_q\ <= NOT \memoriaDados|ram~194_q\;
\memoriaDados|ALT_INV_ram~178_q\ <= NOT \memoriaDados|ram~178_q\;
\memoriaDados|ALT_INV_ram~601_combout\ <= NOT \memoriaDados|ram~601_combout\;
\memoriaDados|ALT_INV_ram~138_q\ <= NOT \memoriaDados|ram~138_q\;
\memoriaDados|ALT_INV_ram~122_q\ <= NOT \memoriaDados|ram~122_q\;
\memoriaDados|ALT_INV_ram~74_q\ <= NOT \memoriaDados|ram~74_q\;
\memoriaDados|ALT_INV_ram~58_q\ <= NOT \memoriaDados|ram~58_q\;
\memoriaDados|ALT_INV_ram~600_combout\ <= NOT \memoriaDados|ram~600_combout\;
\memoriaDados|ALT_INV_ram~130_q\ <= NOT \memoriaDados|ram~130_q\;
\memoriaDados|ALT_INV_ram~114_q\ <= NOT \memoriaDados|ram~114_q\;
\memoriaDados|ALT_INV_ram~66_q\ <= NOT \memoriaDados|ram~66_q\;
\memoriaDados|ALT_INV_ram~50_q\ <= NOT \memoriaDados|ram~50_q\;
\memoriaDados|ALT_INV_ram~599_combout\ <= NOT \memoriaDados|ram~599_combout\;
\memoriaDados|ALT_INV_ram~598_combout\ <= NOT \memoriaDados|ram~598_combout\;
\memoriaDados|ALT_INV_ram~490_q\ <= NOT \memoriaDados|ram~490_q\;
\memoriaDados|ALT_INV_ram~362_q\ <= NOT \memoriaDados|ram~362_q\;
\memoriaDados|ALT_INV_ram~474_q\ <= NOT \memoriaDados|ram~474_q\;
\memoriaDados|ALT_INV_ram~346_q\ <= NOT \memoriaDados|ram~346_q\;
\memoriaDados|ALT_INV_ram~597_combout\ <= NOT \memoriaDados|ram~597_combout\;
\memoriaDados|ALT_INV_ram~482_q\ <= NOT \memoriaDados|ram~482_q\;
\memoriaDados|ALT_INV_ram~354_q\ <= NOT \memoriaDados|ram~354_q\;
\memoriaDados|ALT_INV_ram~466_q\ <= NOT \memoriaDados|ram~466_q\;
\memoriaDados|ALT_INV_ram~338_q\ <= NOT \memoriaDados|ram~338_q\;
\memoriaDados|ALT_INV_ram~596_combout\ <= NOT \memoriaDados|ram~596_combout\;
\memoriaDados|ALT_INV_ram~426_q\ <= NOT \memoriaDados|ram~426_q\;
\memoriaDados|ALT_INV_ram~298_q\ <= NOT \memoriaDados|ram~298_q\;
\memoriaDados|ALT_INV_ram~410_q\ <= NOT \memoriaDados|ram~410_q\;
\memoriaDados|ALT_INV_ram~282_q\ <= NOT \memoriaDados|ram~282_q\;
\memoriaDados|ALT_INV_ram~595_combout\ <= NOT \memoriaDados|ram~595_combout\;
\memoriaDados|ALT_INV_ram~418_q\ <= NOT \memoriaDados|ram~418_q\;
\memoriaDados|ALT_INV_ram~290_q\ <= NOT \memoriaDados|ram~290_q\;
\memoriaDados|ALT_INV_ram~402_q\ <= NOT \memoriaDados|ram~402_q\;
\memoriaDados|ALT_INV_ram~274_q\ <= NOT \memoriaDados|ram~274_q\;
\memoriaDados|ALT_INV_ram~594_combout\ <= NOT \memoriaDados|ram~594_combout\;
\memoriaDados|ALT_INV_ram~593_combout\ <= NOT \memoriaDados|ram~593_combout\;
\memoriaDados|ALT_INV_ram~234_q\ <= NOT \memoriaDados|ram~234_q\;
\memoriaDados|ALT_INV_ram~226_q\ <= NOT \memoriaDados|ram~226_q\;
\memoriaDados|ALT_INV_ram~218_q\ <= NOT \memoriaDados|ram~218_q\;
\memoriaDados|ALT_INV_ram~210_q\ <= NOT \memoriaDados|ram~210_q\;
\memoriaDados|ALT_INV_ram~592_combout\ <= NOT \memoriaDados|ram~592_combout\;
\memoriaDados|ALT_INV_ram~106_q\ <= NOT \memoriaDados|ram~106_q\;
\memoriaDados|ALT_INV_ram~98_q\ <= NOT \memoriaDados|ram~98_q\;
\memoriaDados|ALT_INV_ram~90_q\ <= NOT \memoriaDados|ram~90_q\;
\memoriaDados|ALT_INV_ram~82_q\ <= NOT \memoriaDados|ram~82_q\;
\memoriaDados|ALT_INV_ram~591_combout\ <= NOT \memoriaDados|ram~591_combout\;
\memoriaDados|ALT_INV_ram~170_q\ <= NOT \memoriaDados|ram~170_q\;
\memoriaDados|ALT_INV_ram~162_q\ <= NOT \memoriaDados|ram~162_q\;
\memoriaDados|ALT_INV_ram~154_q\ <= NOT \memoriaDados|ram~154_q\;
\memoriaDados|ALT_INV_ram~146_q\ <= NOT \memoriaDados|ram~146_q\;
\memoriaDados|ALT_INV_ram~590_combout\ <= NOT \memoriaDados|ram~590_combout\;
\memoriaDados|ALT_INV_ram~42_q\ <= NOT \memoriaDados|ram~42_q\;
\memoriaDados|ALT_INV_ram~34_q\ <= NOT \memoriaDados|ram~34_q\;
\memoriaDados|ALT_INV_ram~26_q\ <= NOT \memoriaDados|ram~26_q\;
\memoriaDados|ALT_INV_ram~18_q\ <= NOT \memoriaDados|ram~18_q\;
\CPU|MUX1|ALT_INV_saida_MUX[2]~1_combout\ <= NOT \CPU|MUX1|saida_MUX[2]~1_combout\;
\memoriaDados|ALT_INV_ram~589_combout\ <= NOT \memoriaDados|ram~589_combout\;
\memoriaDados|ALT_INV_ram~588_combout\ <= NOT \memoriaDados|ram~588_combout\;
\memoriaDados|ALT_INV_ram~587_combout\ <= NOT \memoriaDados|ram~587_combout\;
\memoriaDados|ALT_INV_ram~521_q\ <= NOT \memoriaDados|ram~521_q\;
\memoriaDados|ALT_INV_ram~393_q\ <= NOT \memoriaDados|ram~393_q\;
\memoriaDados|ALT_INV_ram~227_q\ <= NOT \memoriaDados|ram~227_q\;
\memoriaDados|ALT_INV_ram~107_q\ <= NOT \memoriaDados|ram~107_q\;
\memoriaDados|ALT_INV_ram~99_q\ <= NOT \memoriaDados|ram~99_q\;
\memoriaDados|ALT_INV_ram~622_combout\ <= NOT \memoriaDados|ram~622_combout\;
\memoriaDados|ALT_INV_ram~203_q\ <= NOT \memoriaDados|ram~203_q\;
\memoriaDados|ALT_INV_ram~195_q\ <= NOT \memoriaDados|ram~195_q\;
\memoriaDados|ALT_INV_ram~75_q\ <= NOT \memoriaDados|ram~75_q\;
\memoriaDados|ALT_INV_ram~67_q\ <= NOT \memoriaDados|ram~67_q\;
\memoriaDados|ALT_INV_ram~621_combout\ <= NOT \memoriaDados|ram~621_combout\;
\memoriaDados|ALT_INV_ram~171_q\ <= NOT \memoriaDados|ram~171_q\;
\memoriaDados|ALT_INV_ram~163_q\ <= NOT \memoriaDados|ram~163_q\;
\memoriaDados|ALT_INV_ram~43_q\ <= NOT \memoriaDados|ram~43_q\;
\memoriaDados|ALT_INV_ram~35_q\ <= NOT \memoriaDados|ram~35_q\;
\memoriaDados|ALT_INV_ram~620_combout\ <= NOT \memoriaDados|ram~620_combout\;
\memoriaDados|ALT_INV_ram~619_combout\ <= NOT \memoriaDados|ram~619_combout\;
\memoriaDados|ALT_INV_ram~507_q\ <= NOT \memoriaDados|ram~507_q\;
\memoriaDados|ALT_INV_ram~499_q\ <= NOT \memoriaDados|ram~499_q\;
\memoriaDados|ALT_INV_ram~443_q\ <= NOT \memoriaDados|ram~443_q\;
\memoriaDados|ALT_INV_ram~435_q\ <= NOT \memoriaDados|ram~435_q\;
\memoriaDados|ALT_INV_ram~618_combout\ <= NOT \memoriaDados|ram~618_combout\;
\memoriaDados|ALT_INV_ram~475_q\ <= NOT \memoriaDados|ram~475_q\;
\memoriaDados|ALT_INV_ram~467_q\ <= NOT \memoriaDados|ram~467_q\;
\memoriaDados|ALT_INV_ram~411_q\ <= NOT \memoriaDados|ram~411_q\;
\memoriaDados|ALT_INV_ram~403_q\ <= NOT \memoriaDados|ram~403_q\;
\memoriaDados|ALT_INV_ram~617_combout\ <= NOT \memoriaDados|ram~617_combout\;
\memoriaDados|ALT_INV_ram~379_q\ <= NOT \memoriaDados|ram~379_q\;
\memoriaDados|ALT_INV_ram~371_q\ <= NOT \memoriaDados|ram~371_q\;
\memoriaDados|ALT_INV_ram~315_q\ <= NOT \memoriaDados|ram~315_q\;
\memoriaDados|ALT_INV_ram~307_q\ <= NOT \memoriaDados|ram~307_q\;
\memoriaDados|ALT_INV_ram~616_combout\ <= NOT \memoriaDados|ram~616_combout\;
\memoriaDados|ALT_INV_ram~347_q\ <= NOT \memoriaDados|ram~347_q\;
\memoriaDados|ALT_INV_ram~339_q\ <= NOT \memoriaDados|ram~339_q\;
\memoriaDados|ALT_INV_ram~283_q\ <= NOT \memoriaDados|ram~283_q\;
\memoriaDados|ALT_INV_ram~275_q\ <= NOT \memoriaDados|ram~275_q\;
\memoriaDados|ALT_INV_ram~615_combout\ <= NOT \memoriaDados|ram~615_combout\;
\memoriaDados|ALT_INV_ram~614_combout\ <= NOT \memoriaDados|ram~614_combout\;
\memoriaDados|ALT_INV_ram~251_q\ <= NOT \memoriaDados|ram~251_q\;
\memoriaDados|ALT_INV_ram~243_q\ <= NOT \memoriaDados|ram~243_q\;
\memoriaDados|ALT_INV_ram~219_q\ <= NOT \memoriaDados|ram~219_q\;
\memoriaDados|ALT_INV_ram~211_q\ <= NOT \memoriaDados|ram~211_q\;
\memoriaDados|ALT_INV_ram~613_combout\ <= NOT \memoriaDados|ram~613_combout\;
\memoriaDados|ALT_INV_ram~123_q\ <= NOT \memoriaDados|ram~123_q\;
\memoriaDados|ALT_INV_ram~115_q\ <= NOT \memoriaDados|ram~115_q\;
\memoriaDados|ALT_INV_ram~91_q\ <= NOT \memoriaDados|ram~91_q\;
\memoriaDados|ALT_INV_ram~83_q\ <= NOT \memoriaDados|ram~83_q\;
\memoriaDados|ALT_INV_ram~612_combout\ <= NOT \memoriaDados|ram~612_combout\;
\memoriaDados|ALT_INV_ram~187_q\ <= NOT \memoriaDados|ram~187_q\;
\memoriaDados|ALT_INV_ram~179_q\ <= NOT \memoriaDados|ram~179_q\;
\memoriaDados|ALT_INV_ram~155_q\ <= NOT \memoriaDados|ram~155_q\;
\memoriaDados|ALT_INV_ram~147_q\ <= NOT \memoriaDados|ram~147_q\;
\memoriaDados|ALT_INV_ram~611_combout\ <= NOT \memoriaDados|ram~611_combout\;
\memoriaDados|ALT_INV_ram~59_q\ <= NOT \memoriaDados|ram~59_q\;
\memoriaDados|ALT_INV_ram~51_q\ <= NOT \memoriaDados|ram~51_q\;
\memoriaDados|ALT_INV_ram~27_q\ <= NOT \memoriaDados|ram~27_q\;
\memoriaDados|ALT_INV_ram~19_q\ <= NOT \memoriaDados|ram~19_q\;
\CPU|MUX1|ALT_INV_saida_MUX[3]~2_combout\ <= NOT \CPU|MUX1|saida_MUX[3]~2_combout\;
\memoriaDados|ALT_INV_ram~610_combout\ <= NOT \memoriaDados|ram~610_combout\;
\memoriaDados|ALT_INV_ram~609_combout\ <= NOT \memoriaDados|ram~609_combout\;
\memoriaDados|ALT_INV_ram~608_combout\ <= NOT \memoriaDados|ram~608_combout\;
\memoriaDados|ALT_INV_ram~522_q\ <= NOT \memoriaDados|ram~522_q\;
\memoriaDados|ALT_INV_ram~514_q\ <= NOT \memoriaDados|ram~514_q\;
\memoriaDados|ALT_INV_ram~506_q\ <= NOT \memoriaDados|ram~506_q\;
\memoriaDados|ALT_INV_ram~498_q\ <= NOT \memoriaDados|ram~498_q\;
\memoriaDados|ALT_INV_ram~607_combout\ <= NOT \memoriaDados|ram~607_combout\;
\memoriaDados|ALT_INV_ram~394_q\ <= NOT \memoriaDados|ram~394_q\;
\memoriaDados|ALT_INV_ram~386_q\ <= NOT \memoriaDados|ram~386_q\;
\memoriaDados|ALT_INV_ram~378_q\ <= NOT \memoriaDados|ram~378_q\;
\memoriaDados|ALT_INV_ram~370_q\ <= NOT \memoriaDados|ram~370_q\;
\memoriaDados|ALT_INV_ram~606_combout\ <= NOT \memoriaDados|ram~606_combout\;
\memoriaDados|ALT_INV_ram~458_q\ <= NOT \memoriaDados|ram~458_q\;
\memoriaDados|ALT_INV_ram~450_q\ <= NOT \memoriaDados|ram~450_q\;
\memoriaDados|ALT_INV_ram~442_q\ <= NOT \memoriaDados|ram~442_q\;
\memoriaDados|ALT_INV_ram~434_q\ <= NOT \memoriaDados|ram~434_q\;
\memoriaDados|ALT_INV_ram~28_q\ <= NOT \memoriaDados|ram~28_q\;
\memoriaDados|ALT_INV_ram~641_combout\ <= NOT \memoriaDados|ram~641_combout\;
\memoriaDados|ALT_INV_ram~640_combout\ <= NOT \memoriaDados|ram~640_combout\;
\memoriaDados|ALT_INV_ram~516_q\ <= NOT \memoriaDados|ram~516_q\;
\memoriaDados|ALT_INV_ram~484_q\ <= NOT \memoriaDados|ram~484_q\;
\memoriaDados|ALT_INV_ram~388_q\ <= NOT \memoriaDados|ram~388_q\;
\memoriaDados|ALT_INV_ram~356_q\ <= NOT \memoriaDados|ram~356_q\;
\memoriaDados|ALT_INV_ram~639_combout\ <= NOT \memoriaDados|ram~639_combout\;
\memoriaDados|ALT_INV_ram~500_q\ <= NOT \memoriaDados|ram~500_q\;
\memoriaDados|ALT_INV_ram~468_q\ <= NOT \memoriaDados|ram~468_q\;
\memoriaDados|ALT_INV_ram~372_q\ <= NOT \memoriaDados|ram~372_q\;
\memoriaDados|ALT_INV_ram~340_q\ <= NOT \memoriaDados|ram~340_q\;
\memoriaDados|ALT_INV_ram~638_combout\ <= NOT \memoriaDados|ram~638_combout\;
\memoriaDados|ALT_INV_ram~452_q\ <= NOT \memoriaDados|ram~452_q\;
\memoriaDados|ALT_INV_ram~420_q\ <= NOT \memoriaDados|ram~420_q\;
\memoriaDados|ALT_INV_ram~324_q\ <= NOT \memoriaDados|ram~324_q\;
\memoriaDados|ALT_INV_ram~292_q\ <= NOT \memoriaDados|ram~292_q\;
\memoriaDados|ALT_INV_ram~637_combout\ <= NOT \memoriaDados|ram~637_combout\;
\memoriaDados|ALT_INV_ram~436_q\ <= NOT \memoriaDados|ram~436_q\;
\memoriaDados|ALT_INV_ram~404_q\ <= NOT \memoriaDados|ram~404_q\;
\memoriaDados|ALT_INV_ram~308_q\ <= NOT \memoriaDados|ram~308_q\;
\memoriaDados|ALT_INV_ram~276_q\ <= NOT \memoriaDados|ram~276_q\;
\memoriaDados|ALT_INV_ram~636_combout\ <= NOT \memoriaDados|ram~636_combout\;
\memoriaDados|ALT_INV_ram~635_combout\ <= NOT \memoriaDados|ram~635_combout\;
\memoriaDados|ALT_INV_ram~260_q\ <= NOT \memoriaDados|ram~260_q\;
\memoriaDados|ALT_INV_ram~228_q\ <= NOT \memoriaDados|ram~228_q\;
\memoriaDados|ALT_INV_ram~244_q\ <= NOT \memoriaDados|ram~244_q\;
\memoriaDados|ALT_INV_ram~212_q\ <= NOT \memoriaDados|ram~212_q\;
\memoriaDados|ALT_INV_ram~634_combout\ <= NOT \memoriaDados|ram~634_combout\;
\memoriaDados|ALT_INV_ram~132_q\ <= NOT \memoriaDados|ram~132_q\;
\memoriaDados|ALT_INV_ram~100_q\ <= NOT \memoriaDados|ram~100_q\;
\memoriaDados|ALT_INV_ram~116_q\ <= NOT \memoriaDados|ram~116_q\;
\memoriaDados|ALT_INV_ram~84_q\ <= NOT \memoriaDados|ram~84_q\;
\memoriaDados|ALT_INV_ram~633_combout\ <= NOT \memoriaDados|ram~633_combout\;
\memoriaDados|ALT_INV_ram~196_q\ <= NOT \memoriaDados|ram~196_q\;
\memoriaDados|ALT_INV_ram~164_q\ <= NOT \memoriaDados|ram~164_q\;
\memoriaDados|ALT_INV_ram~180_q\ <= NOT \memoriaDados|ram~180_q\;
\memoriaDados|ALT_INV_ram~148_q\ <= NOT \memoriaDados|ram~148_q\;
\memoriaDados|ALT_INV_ram~632_combout\ <= NOT \memoriaDados|ram~632_combout\;
\memoriaDados|ALT_INV_ram~68_q\ <= NOT \memoriaDados|ram~68_q\;
\memoriaDados|ALT_INV_ram~36_q\ <= NOT \memoriaDados|ram~36_q\;
\memoriaDados|ALT_INV_ram~52_q\ <= NOT \memoriaDados|ram~52_q\;
\memoriaDados|ALT_INV_ram~20_q\ <= NOT \memoriaDados|ram~20_q\;
\CPU|MUX1|ALT_INV_saida_MUX[4]~3_combout\ <= NOT \CPU|MUX1|saida_MUX[4]~3_combout\;
\memoriaDados|ALT_INV_ram~631_combout\ <= NOT \memoriaDados|ram~631_combout\;
\memoriaDados|ALT_INV_ram~630_combout\ <= NOT \memoriaDados|ram~630_combout\;
\memoriaDados|ALT_INV_ram~629_combout\ <= NOT \memoriaDados|ram~629_combout\;
\memoriaDados|ALT_INV_ram~523_q\ <= NOT \memoriaDados|ram~523_q\;
\memoriaDados|ALT_INV_ram~515_q\ <= NOT \memoriaDados|ram~515_q\;
\memoriaDados|ALT_INV_ram~491_q\ <= NOT \memoriaDados|ram~491_q\;
\memoriaDados|ALT_INV_ram~483_q\ <= NOT \memoriaDados|ram~483_q\;
\memoriaDados|ALT_INV_ram~628_combout\ <= NOT \memoriaDados|ram~628_combout\;
\memoriaDados|ALT_INV_ram~395_q\ <= NOT \memoriaDados|ram~395_q\;
\memoriaDados|ALT_INV_ram~387_q\ <= NOT \memoriaDados|ram~387_q\;
\memoriaDados|ALT_INV_ram~363_q\ <= NOT \memoriaDados|ram~363_q\;
\memoriaDados|ALT_INV_ram~355_q\ <= NOT \memoriaDados|ram~355_q\;
\memoriaDados|ALT_INV_ram~627_combout\ <= NOT \memoriaDados|ram~627_combout\;
\memoriaDados|ALT_INV_ram~459_q\ <= NOT \memoriaDados|ram~459_q\;
\memoriaDados|ALT_INV_ram~451_q\ <= NOT \memoriaDados|ram~451_q\;
\memoriaDados|ALT_INV_ram~427_q\ <= NOT \memoriaDados|ram~427_q\;
\memoriaDados|ALT_INV_ram~419_q\ <= NOT \memoriaDados|ram~419_q\;
\memoriaDados|ALT_INV_ram~626_combout\ <= NOT \memoriaDados|ram~626_combout\;
\memoriaDados|ALT_INV_ram~331_q\ <= NOT \memoriaDados|ram~331_q\;
\memoriaDados|ALT_INV_ram~323_q\ <= NOT \memoriaDados|ram~323_q\;
\memoriaDados|ALT_INV_ram~299_q\ <= NOT \memoriaDados|ram~299_q\;
\memoriaDados|ALT_INV_ram~291_q\ <= NOT \memoriaDados|ram~291_q\;
\memoriaDados|ALT_INV_ram~625_combout\ <= NOT \memoriaDados|ram~625_combout\;
\memoriaDados|ALT_INV_ram~624_combout\ <= NOT \memoriaDados|ram~624_combout\;
\memoriaDados|ALT_INV_ram~267_q\ <= NOT \memoriaDados|ram~267_q\;
\memoriaDados|ALT_INV_ram~259_q\ <= NOT \memoriaDados|ram~259_q\;
\memoriaDados|ALT_INV_ram~139_q\ <= NOT \memoriaDados|ram~139_q\;
\memoriaDados|ALT_INV_ram~131_q\ <= NOT \memoriaDados|ram~131_q\;
\memoriaDados|ALT_INV_ram~623_combout\ <= NOT \memoriaDados|ram~623_combout\;
\memoriaDados|ALT_INV_ram~235_q\ <= NOT \memoriaDados|ram~235_q\;
\memoriaDados|ALT_INV_ram~659_combout\ <= NOT \memoriaDados|ram~659_combout\;
\memoriaDados|ALT_INV_ram~429_q\ <= NOT \memoriaDados|ram~429_q\;
\memoriaDados|ALT_INV_ram~301_q\ <= NOT \memoriaDados|ram~301_q\;
\memoriaDados|ALT_INV_ram~413_q\ <= NOT \memoriaDados|ram~413_q\;
\memoriaDados|ALT_INV_ram~285_q\ <= NOT \memoriaDados|ram~285_q\;
\memoriaDados|ALT_INV_ram~658_combout\ <= NOT \memoriaDados|ram~658_combout\;
\memoriaDados|ALT_INV_ram~421_q\ <= NOT \memoriaDados|ram~421_q\;
\memoriaDados|ALT_INV_ram~293_q\ <= NOT \memoriaDados|ram~293_q\;
\memoriaDados|ALT_INV_ram~405_q\ <= NOT \memoriaDados|ram~405_q\;
\memoriaDados|ALT_INV_ram~277_q\ <= NOT \memoriaDados|ram~277_q\;
\memoriaDados|ALT_INV_ram~657_combout\ <= NOT \memoriaDados|ram~657_combout\;
\memoriaDados|ALT_INV_ram~656_combout\ <= NOT \memoriaDados|ram~656_combout\;
\memoriaDados|ALT_INV_ram~237_q\ <= NOT \memoriaDados|ram~237_q\;
\memoriaDados|ALT_INV_ram~221_q\ <= NOT \memoriaDados|ram~221_q\;
\memoriaDados|ALT_INV_ram~173_q\ <= NOT \memoriaDados|ram~173_q\;
\memoriaDados|ALT_INV_ram~157_q\ <= NOT \memoriaDados|ram~157_q\;
\memoriaDados|ALT_INV_ram~655_combout\ <= NOT \memoriaDados|ram~655_combout\;
\memoriaDados|ALT_INV_ram~229_q\ <= NOT \memoriaDados|ram~229_q\;
\memoriaDados|ALT_INV_ram~213_q\ <= NOT \memoriaDados|ram~213_q\;
\memoriaDados|ALT_INV_ram~165_q\ <= NOT \memoriaDados|ram~165_q\;
\memoriaDados|ALT_INV_ram~149_q\ <= NOT \memoriaDados|ram~149_q\;
\memoriaDados|ALT_INV_ram~654_combout\ <= NOT \memoriaDados|ram~654_combout\;
\memoriaDados|ALT_INV_ram~109_q\ <= NOT \memoriaDados|ram~109_q\;
\memoriaDados|ALT_INV_ram~93_q\ <= NOT \memoriaDados|ram~93_q\;
\memoriaDados|ALT_INV_ram~45_q\ <= NOT \memoriaDados|ram~45_q\;
\memoriaDados|ALT_INV_ram~29_q\ <= NOT \memoriaDados|ram~29_q\;
\memoriaDados|ALT_INV_ram~653_combout\ <= NOT \memoriaDados|ram~653_combout\;
\memoriaDados|ALT_INV_ram~101_q\ <= NOT \memoriaDados|ram~101_q\;
\memoriaDados|ALT_INV_ram~85_q\ <= NOT \memoriaDados|ram~85_q\;
\memoriaDados|ALT_INV_ram~37_q\ <= NOT \memoriaDados|ram~37_q\;
\memoriaDados|ALT_INV_ram~21_q\ <= NOT \memoriaDados|ram~21_q\;
\CPU|MUX1|ALT_INV_saida_MUX[5]~4_combout\ <= NOT \CPU|MUX1|saida_MUX[5]~4_combout\;
\memoriaDados|ALT_INV_ram~652_combout\ <= NOT \memoriaDados|ram~652_combout\;
\memoriaDados|ALT_INV_ram~651_combout\ <= NOT \memoriaDados|ram~651_combout\;
\memoriaDados|ALT_INV_ram~650_combout\ <= NOT \memoriaDados|ram~650_combout\;
\memoriaDados|ALT_INV_ram~524_q\ <= NOT \memoriaDados|ram~524_q\;
\memoriaDados|ALT_INV_ram~492_q\ <= NOT \memoriaDados|ram~492_q\;
\memoriaDados|ALT_INV_ram~460_q\ <= NOT \memoriaDados|ram~460_q\;
\memoriaDados|ALT_INV_ram~428_q\ <= NOT \memoriaDados|ram~428_q\;
\memoriaDados|ALT_INV_ram~649_combout\ <= NOT \memoriaDados|ram~649_combout\;
\memoriaDados|ALT_INV_ram~396_q\ <= NOT \memoriaDados|ram~396_q\;
\memoriaDados|ALT_INV_ram~364_q\ <= NOT \memoriaDados|ram~364_q\;
\memoriaDados|ALT_INV_ram~332_q\ <= NOT \memoriaDados|ram~332_q\;
\memoriaDados|ALT_INV_ram~300_q\ <= NOT \memoriaDados|ram~300_q\;
\memoriaDados|ALT_INV_ram~648_combout\ <= NOT \memoriaDados|ram~648_combout\;
\memoriaDados|ALT_INV_ram~508_q\ <= NOT \memoriaDados|ram~508_q\;
\memoriaDados|ALT_INV_ram~476_q\ <= NOT \memoriaDados|ram~476_q\;
\memoriaDados|ALT_INV_ram~444_q\ <= NOT \memoriaDados|ram~444_q\;
\memoriaDados|ALT_INV_ram~412_q\ <= NOT \memoriaDados|ram~412_q\;
\memoriaDados|ALT_INV_ram~647_combout\ <= NOT \memoriaDados|ram~647_combout\;
\memoriaDados|ALT_INV_ram~380_q\ <= NOT \memoriaDados|ram~380_q\;
\memoriaDados|ALT_INV_ram~348_q\ <= NOT \memoriaDados|ram~348_q\;
\memoriaDados|ALT_INV_ram~316_q\ <= NOT \memoriaDados|ram~316_q\;
\memoriaDados|ALT_INV_ram~284_q\ <= NOT \memoriaDados|ram~284_q\;
\memoriaDados|ALT_INV_ram~646_combout\ <= NOT \memoriaDados|ram~646_combout\;
\memoriaDados|ALT_INV_ram~645_combout\ <= NOT \memoriaDados|ram~645_combout\;
\memoriaDados|ALT_INV_ram~268_q\ <= NOT \memoriaDados|ram~268_q\;
\memoriaDados|ALT_INV_ram~236_q\ <= NOT \memoriaDados|ram~236_q\;
\memoriaDados|ALT_INV_ram~252_q\ <= NOT \memoriaDados|ram~252_q\;
\memoriaDados|ALT_INV_ram~220_q\ <= NOT \memoriaDados|ram~220_q\;
\memoriaDados|ALT_INV_ram~644_combout\ <= NOT \memoriaDados|ram~644_combout\;
\memoriaDados|ALT_INV_ram~140_q\ <= NOT \memoriaDados|ram~140_q\;
\memoriaDados|ALT_INV_ram~108_q\ <= NOT \memoriaDados|ram~108_q\;
\memoriaDados|ALT_INV_ram~124_q\ <= NOT \memoriaDados|ram~124_q\;
\memoriaDados|ALT_INV_ram~92_q\ <= NOT \memoriaDados|ram~92_q\;
\memoriaDados|ALT_INV_ram~643_combout\ <= NOT \memoriaDados|ram~643_combout\;
\memoriaDados|ALT_INV_ram~204_q\ <= NOT \memoriaDados|ram~204_q\;
\memoriaDados|ALT_INV_ram~172_q\ <= NOT \memoriaDados|ram~172_q\;
\memoriaDados|ALT_INV_ram~188_q\ <= NOT \memoriaDados|ram~188_q\;
\memoriaDados|ALT_INV_ram~156_q\ <= NOT \memoriaDados|ram~156_q\;
\memoriaDados|ALT_INV_ram~642_combout\ <= NOT \memoriaDados|ram~642_combout\;
\memoriaDados|ALT_INV_ram~76_q\ <= NOT \memoriaDados|ram~76_q\;
\memoriaDados|ALT_INV_ram~44_q\ <= NOT \memoriaDados|ram~44_q\;
\memoriaDados|ALT_INV_ram~60_q\ <= NOT \memoriaDados|ram~60_q\;
\memoriaDados|ALT_INV_ram~222_q\ <= NOT \memoriaDados|ram~222_q\;
\memoriaDados|ALT_INV_ram~126_q\ <= NOT \memoriaDados|ram~126_q\;
\memoriaDados|ALT_INV_ram~94_q\ <= NOT \memoriaDados|ram~94_q\;
\memoriaDados|ALT_INV_ram~676_combout\ <= NOT \memoriaDados|ram~676_combout\;
\memoriaDados|ALT_INV_ram~246_q\ <= NOT \memoriaDados|ram~246_q\;
\memoriaDados|ALT_INV_ram~214_q\ <= NOT \memoriaDados|ram~214_q\;
\memoriaDados|ALT_INV_ram~118_q\ <= NOT \memoriaDados|ram~118_q\;
\memoriaDados|ALT_INV_ram~86_q\ <= NOT \memoriaDados|ram~86_q\;
\memoriaDados|ALT_INV_ram~675_combout\ <= NOT \memoriaDados|ram~675_combout\;
\memoriaDados|ALT_INV_ram~190_q\ <= NOT \memoriaDados|ram~190_q\;
\memoriaDados|ALT_INV_ram~158_q\ <= NOT \memoriaDados|ram~158_q\;
\memoriaDados|ALT_INV_ram~62_q\ <= NOT \memoriaDados|ram~62_q\;
\memoriaDados|ALT_INV_ram~30_q\ <= NOT \memoriaDados|ram~30_q\;
\memoriaDados|ALT_INV_ram~674_combout\ <= NOT \memoriaDados|ram~674_combout\;
\memoriaDados|ALT_INV_ram~182_q\ <= NOT \memoriaDados|ram~182_q\;
\memoriaDados|ALT_INV_ram~150_q\ <= NOT \memoriaDados|ram~150_q\;
\memoriaDados|ALT_INV_ram~54_q\ <= NOT \memoriaDados|ram~54_q\;
\memoriaDados|ALT_INV_ram~22_q\ <= NOT \memoriaDados|ram~22_q\;
\CPU|MUX1|ALT_INV_saida_MUX[6]~5_combout\ <= NOT \CPU|MUX1|saida_MUX[6]~5_combout\;
\memoriaDados|ALT_INV_ram~673_combout\ <= NOT \memoriaDados|ram~673_combout\;
\memoriaDados|ALT_INV_ram~672_combout\ <= NOT \memoriaDados|ram~672_combout\;
\memoriaDados|ALT_INV_ram~671_combout\ <= NOT \memoriaDados|ram~671_combout\;
\memoriaDados|ALT_INV_ram~525_q\ <= NOT \memoriaDados|ram~525_q\;
\memoriaDados|ALT_INV_ram~509_q\ <= NOT \memoriaDados|ram~509_q\;
\memoriaDados|ALT_INV_ram~461_q\ <= NOT \memoriaDados|ram~461_q\;
\memoriaDados|ALT_INV_ram~445_q\ <= NOT \memoriaDados|ram~445_q\;
\memoriaDados|ALT_INV_ram~670_combout\ <= NOT \memoriaDados|ram~670_combout\;
\memoriaDados|ALT_INV_ram~517_q\ <= NOT \memoriaDados|ram~517_q\;
\memoriaDados|ALT_INV_ram~501_q\ <= NOT \memoriaDados|ram~501_q\;
\memoriaDados|ALT_INV_ram~453_q\ <= NOT \memoriaDados|ram~453_q\;
\memoriaDados|ALT_INV_ram~437_q\ <= NOT \memoriaDados|ram~437_q\;
\memoriaDados|ALT_INV_ram~669_combout\ <= NOT \memoriaDados|ram~669_combout\;
\memoriaDados|ALT_INV_ram~397_q\ <= NOT \memoriaDados|ram~397_q\;
\memoriaDados|ALT_INV_ram~381_q\ <= NOT \memoriaDados|ram~381_q\;
\memoriaDados|ALT_INV_ram~333_q\ <= NOT \memoriaDados|ram~333_q\;
\memoriaDados|ALT_INV_ram~317_q\ <= NOT \memoriaDados|ram~317_q\;
\memoriaDados|ALT_INV_ram~668_combout\ <= NOT \memoriaDados|ram~668_combout\;
\memoriaDados|ALT_INV_ram~389_q\ <= NOT \memoriaDados|ram~389_q\;
\memoriaDados|ALT_INV_ram~373_q\ <= NOT \memoriaDados|ram~373_q\;
\memoriaDados|ALT_INV_ram~325_q\ <= NOT \memoriaDados|ram~325_q\;
\memoriaDados|ALT_INV_ram~309_q\ <= NOT \memoriaDados|ram~309_q\;
\memoriaDados|ALT_INV_ram~667_combout\ <= NOT \memoriaDados|ram~667_combout\;
\memoriaDados|ALT_INV_ram~666_combout\ <= NOT \memoriaDados|ram~666_combout\;
\memoriaDados|ALT_INV_ram~269_q\ <= NOT \memoriaDados|ram~269_q\;
\memoriaDados|ALT_INV_ram~261_q\ <= NOT \memoriaDados|ram~261_q\;
\memoriaDados|ALT_INV_ram~253_q\ <= NOT \memoriaDados|ram~253_q\;
\memoriaDados|ALT_INV_ram~245_q\ <= NOT \memoriaDados|ram~245_q\;
\memoriaDados|ALT_INV_ram~665_combout\ <= NOT \memoriaDados|ram~665_combout\;
\memoriaDados|ALT_INV_ram~141_q\ <= NOT \memoriaDados|ram~141_q\;
\memoriaDados|ALT_INV_ram~133_q\ <= NOT \memoriaDados|ram~133_q\;
\memoriaDados|ALT_INV_ram~125_q\ <= NOT \memoriaDados|ram~125_q\;
\memoriaDados|ALT_INV_ram~117_q\ <= NOT \memoriaDados|ram~117_q\;
\memoriaDados|ALT_INV_ram~664_combout\ <= NOT \memoriaDados|ram~664_combout\;
\memoriaDados|ALT_INV_ram~205_q\ <= NOT \memoriaDados|ram~205_q\;
\memoriaDados|ALT_INV_ram~197_q\ <= NOT \memoriaDados|ram~197_q\;
\memoriaDados|ALT_INV_ram~189_q\ <= NOT \memoriaDados|ram~189_q\;
\memoriaDados|ALT_INV_ram~181_q\ <= NOT \memoriaDados|ram~181_q\;
\memoriaDados|ALT_INV_ram~663_combout\ <= NOT \memoriaDados|ram~663_combout\;
\memoriaDados|ALT_INV_ram~77_q\ <= NOT \memoriaDados|ram~77_q\;
\memoriaDados|ALT_INV_ram~69_q\ <= NOT \memoriaDados|ram~69_q\;
\memoriaDados|ALT_INV_ram~61_q\ <= NOT \memoriaDados|ram~61_q\;
\memoriaDados|ALT_INV_ram~53_q\ <= NOT \memoriaDados|ram~53_q\;
\memoriaDados|ALT_INV_ram~662_combout\ <= NOT \memoriaDados|ram~662_combout\;
\memoriaDados|ALT_INV_ram~661_combout\ <= NOT \memoriaDados|ram~661_combout\;
\memoriaDados|ALT_INV_ram~493_q\ <= NOT \memoriaDados|ram~493_q\;
\memoriaDados|ALT_INV_ram~365_q\ <= NOT \memoriaDados|ram~365_q\;
\memoriaDados|ALT_INV_ram~477_q\ <= NOT \memoriaDados|ram~477_q\;
\memoriaDados|ALT_INV_ram~349_q\ <= NOT \memoriaDados|ram~349_q\;
\memoriaDados|ALT_INV_ram~660_combout\ <= NOT \memoriaDados|ram~660_combout\;
\memoriaDados|ALT_INV_ram~485_q\ <= NOT \memoriaDados|ram~485_q\;
\memoriaDados|ALT_INV_ram~357_q\ <= NOT \memoriaDados|ram~357_q\;
\memoriaDados|ALT_INV_ram~469_q\ <= NOT \memoriaDados|ram~469_q\;
\memoriaDados|ALT_INV_ram~341_q\ <= NOT \memoriaDados|ram~341_q\;
\memoriaDados|ALT_INV_ram~699_combout\ <= NOT \memoriaDados|ram~699_combout\;
\memoriaDados|ALT_INV_ram~697_combout\ <= NOT \memoriaDados|ram~697_combout\;
\memoriaDados|ALT_INV_process_0~1_combout\ <= NOT \memoriaDados|process_0~1_combout\;
\memoriaDados|ALT_INV_ram~695_combout\ <= NOT \memoriaDados|ram~695_combout\;
\ROM1|ALT_INV_memROM~25_combout\ <= NOT \ROM1|memROM~25_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[7]~6_combout\ <= NOT \CPU|MUX1|saida_MUX[7]~6_combout\;
\memoriaDados|ALT_INV_ram~694_combout\ <= NOT \memoriaDados|ram~694_combout\;
\memoriaDados|ALT_INV_ram~693_combout\ <= NOT \memoriaDados|ram~693_combout\;
\memoriaDados|ALT_INV_ram~692_combout\ <= NOT \memoriaDados|ram~692_combout\;
\memoriaDados|ALT_INV_ram~526_q\ <= NOT \memoriaDados|ram~526_q\;
\memoriaDados|ALT_INV_ram~518_q\ <= NOT \memoriaDados|ram~518_q\;
\memoriaDados|ALT_INV_ram~398_q\ <= NOT \memoriaDados|ram~398_q\;
\memoriaDados|ALT_INV_ram~390_q\ <= NOT \memoriaDados|ram~390_q\;
\memoriaDados|ALT_INV_ram~691_combout\ <= NOT \memoriaDados|ram~691_combout\;
\memoriaDados|ALT_INV_ram~494_q\ <= NOT \memoriaDados|ram~494_q\;
\memoriaDados|ALT_INV_ram~486_q\ <= NOT \memoriaDados|ram~486_q\;
\memoriaDados|ALT_INV_ram~366_q\ <= NOT \memoriaDados|ram~366_q\;
\memoriaDados|ALT_INV_ram~358_q\ <= NOT \memoriaDados|ram~358_q\;
\memoriaDados|ALT_INV_ram~690_combout\ <= NOT \memoriaDados|ram~690_combout\;
\memoriaDados|ALT_INV_ram~462_q\ <= NOT \memoriaDados|ram~462_q\;
\memoriaDados|ALT_INV_ram~454_q\ <= NOT \memoriaDados|ram~454_q\;
\memoriaDados|ALT_INV_ram~334_q\ <= NOT \memoriaDados|ram~334_q\;
\memoriaDados|ALT_INV_ram~326_q\ <= NOT \memoriaDados|ram~326_q\;
\memoriaDados|ALT_INV_ram~689_combout\ <= NOT \memoriaDados|ram~689_combout\;
\memoriaDados|ALT_INV_ram~430_q\ <= NOT \memoriaDados|ram~430_q\;
\memoriaDados|ALT_INV_ram~422_q\ <= NOT \memoriaDados|ram~422_q\;
\memoriaDados|ALT_INV_ram~302_q\ <= NOT \memoriaDados|ram~302_q\;
\memoriaDados|ALT_INV_ram~294_q\ <= NOT \memoriaDados|ram~294_q\;
\memoriaDados|ALT_INV_ram~688_combout\ <= NOT \memoriaDados|ram~688_combout\;
\memoriaDados|ALT_INV_ram~687_combout\ <= NOT \memoriaDados|ram~687_combout\;
\memoriaDados|ALT_INV_ram~510_q\ <= NOT \memoriaDados|ram~510_q\;
\memoriaDados|ALT_INV_ram~478_q\ <= NOT \memoriaDados|ram~478_q\;
\memoriaDados|ALT_INV_ram~446_q\ <= NOT \memoriaDados|ram~446_q\;
\memoriaDados|ALT_INV_ram~414_q\ <= NOT \memoriaDados|ram~414_q\;
\memoriaDados|ALT_INV_ram~686_combout\ <= NOT \memoriaDados|ram~686_combout\;
\memoriaDados|ALT_INV_ram~502_q\ <= NOT \memoriaDados|ram~502_q\;
\memoriaDados|ALT_INV_ram~470_q\ <= NOT \memoriaDados|ram~470_q\;
\memoriaDados|ALT_INV_ram~438_q\ <= NOT \memoriaDados|ram~438_q\;
\memoriaDados|ALT_INV_ram~406_q\ <= NOT \memoriaDados|ram~406_q\;
\memoriaDados|ALT_INV_ram~685_combout\ <= NOT \memoriaDados|ram~685_combout\;
\memoriaDados|ALT_INV_ram~382_q\ <= NOT \memoriaDados|ram~382_q\;
\memoriaDados|ALT_INV_ram~350_q\ <= NOT \memoriaDados|ram~350_q\;
\memoriaDados|ALT_INV_ram~318_q\ <= NOT \memoriaDados|ram~318_q\;
\memoriaDados|ALT_INV_ram~286_q\ <= NOT \memoriaDados|ram~286_q\;
\memoriaDados|ALT_INV_ram~684_combout\ <= NOT \memoriaDados|ram~684_combout\;
\memoriaDados|ALT_INV_ram~374_q\ <= NOT \memoriaDados|ram~374_q\;
\memoriaDados|ALT_INV_ram~342_q\ <= NOT \memoriaDados|ram~342_q\;
\memoriaDados|ALT_INV_ram~310_q\ <= NOT \memoriaDados|ram~310_q\;
\memoriaDados|ALT_INV_ram~278_q\ <= NOT \memoriaDados|ram~278_q\;
\memoriaDados|ALT_INV_ram~683_combout\ <= NOT \memoriaDados|ram~683_combout\;
\memoriaDados|ALT_INV_ram~682_combout\ <= NOT \memoriaDados|ram~682_combout\;
\memoriaDados|ALT_INV_ram~270_q\ <= NOT \memoriaDados|ram~270_q\;
\memoriaDados|ALT_INV_ram~262_q\ <= NOT \memoriaDados|ram~262_q\;
\memoriaDados|ALT_INV_ram~142_q\ <= NOT \memoriaDados|ram~142_q\;
\memoriaDados|ALT_INV_ram~134_q\ <= NOT \memoriaDados|ram~134_q\;
\memoriaDados|ALT_INV_ram~681_combout\ <= NOT \memoriaDados|ram~681_combout\;
\memoriaDados|ALT_INV_ram~238_q\ <= NOT \memoriaDados|ram~238_q\;
\memoriaDados|ALT_INV_ram~230_q\ <= NOT \memoriaDados|ram~230_q\;
\memoriaDados|ALT_INV_ram~110_q\ <= NOT \memoriaDados|ram~110_q\;
\memoriaDados|ALT_INV_ram~102_q\ <= NOT \memoriaDados|ram~102_q\;
\memoriaDados|ALT_INV_ram~680_combout\ <= NOT \memoriaDados|ram~680_combout\;
\memoriaDados|ALT_INV_ram~206_q\ <= NOT \memoriaDados|ram~206_q\;
\memoriaDados|ALT_INV_ram~198_q\ <= NOT \memoriaDados|ram~198_q\;
\memoriaDados|ALT_INV_ram~78_q\ <= NOT \memoriaDados|ram~78_q\;
\memoriaDados|ALT_INV_ram~70_q\ <= NOT \memoriaDados|ram~70_q\;
\memoriaDados|ALT_INV_ram~679_combout\ <= NOT \memoriaDados|ram~679_combout\;
\memoriaDados|ALT_INV_ram~174_q\ <= NOT \memoriaDados|ram~174_q\;
\memoriaDados|ALT_INV_ram~166_q\ <= NOT \memoriaDados|ram~166_q\;
\memoriaDados|ALT_INV_ram~46_q\ <= NOT \memoriaDados|ram~46_q\;
\memoriaDados|ALT_INV_ram~38_q\ <= NOT \memoriaDados|ram~38_q\;
\memoriaDados|ALT_INV_ram~678_combout\ <= NOT \memoriaDados|ram~678_combout\;
\memoriaDados|ALT_INV_ram~677_combout\ <= NOT \memoriaDados|ram~677_combout\;
\memoriaDados|ALT_INV_ram~254_q\ <= NOT \memoriaDados|ram~254_q\;
\memoriaDados|ALT_INV_ram~801_combout\ <= NOT \memoriaDados|ram~801_combout\;
\memoriaDados|ALT_INV_ram~799_combout\ <= NOT \memoriaDados|ram~799_combout\;
\memoriaDados|ALT_INV_ram~797_combout\ <= NOT \memoriaDados|ram~797_combout\;
\memoriaDados|ALT_INV_ram~795_combout\ <= NOT \memoriaDados|ram~795_combout\;
\memoriaDados|ALT_INV_ram~793_combout\ <= NOT \memoriaDados|ram~793_combout\;
\memoriaDados|ALT_INV_ram~791_combout\ <= NOT \memoriaDados|ram~791_combout\;
\memoriaDados|ALT_INV_ram~789_combout\ <= NOT \memoriaDados|ram~789_combout\;
\memoriaDados|ALT_INV_ram~787_combout\ <= NOT \memoriaDados|ram~787_combout\;
\memoriaDados|ALT_INV_ram~785_combout\ <= NOT \memoriaDados|ram~785_combout\;
\memoriaDados|ALT_INV_ram~783_combout\ <= NOT \memoriaDados|ram~783_combout\;
\memoriaDados|ALT_INV_ram~781_combout\ <= NOT \memoriaDados|ram~781_combout\;
\memoriaDados|ALT_INV_ram~779_combout\ <= NOT \memoriaDados|ram~779_combout\;
\memoriaDados|ALT_INV_ram~777_combout\ <= NOT \memoriaDados|ram~777_combout\;
\memoriaDados|ALT_INV_ram~775_combout\ <= NOT \memoriaDados|ram~775_combout\;
\memoriaDados|ALT_INV_ram~773_combout\ <= NOT \memoriaDados|ram~773_combout\;
\memoriaDados|ALT_INV_ram~771_combout\ <= NOT \memoriaDados|ram~771_combout\;
\memoriaDados|ALT_INV_ram~769_combout\ <= NOT \memoriaDados|ram~769_combout\;
\memoriaDados|ALT_INV_ram~767_combout\ <= NOT \memoriaDados|ram~767_combout\;
\memoriaDados|ALT_INV_ram~765_combout\ <= NOT \memoriaDados|ram~765_combout\;
\memoriaDados|ALT_INV_ram~763_combout\ <= NOT \memoriaDados|ram~763_combout\;
\memoriaDados|ALT_INV_ram~761_combout\ <= NOT \memoriaDados|ram~761_combout\;
\memoriaDados|ALT_INV_ram~759_combout\ <= NOT \memoriaDados|ram~759_combout\;
\memoriaDados|ALT_INV_ram~757_combout\ <= NOT \memoriaDados|ram~757_combout\;
\memoriaDados|ALT_INV_ram~755_combout\ <= NOT \memoriaDados|ram~755_combout\;
\memoriaDados|ALT_INV_ram~753_combout\ <= NOT \memoriaDados|ram~753_combout\;
\memoriaDados|ALT_INV_ram~751_combout\ <= NOT \memoriaDados|ram~751_combout\;
\memoriaDados|ALT_INV_ram~749_combout\ <= NOT \memoriaDados|ram~749_combout\;
\memoriaDados|ALT_INV_ram~747_combout\ <= NOT \memoriaDados|ram~747_combout\;
\memoriaDados|ALT_INV_ram~745_combout\ <= NOT \memoriaDados|ram~745_combout\;
\memoriaDados|ALT_INV_ram~743_combout\ <= NOT \memoriaDados|ram~743_combout\;
\memoriaDados|ALT_INV_ram~741_combout\ <= NOT \memoriaDados|ram~741_combout\;
\memoriaDados|ALT_INV_ram~739_combout\ <= NOT \memoriaDados|ram~739_combout\;
\memoriaDados|ALT_INV_ram~737_combout\ <= NOT \memoriaDados|ram~737_combout\;
\memoriaDados|ALT_INV_ram~735_combout\ <= NOT \memoriaDados|ram~735_combout\;
\memoriaDados|ALT_INV_ram~733_combout\ <= NOT \memoriaDados|ram~733_combout\;
\memoriaDados|ALT_INV_ram~731_combout\ <= NOT \memoriaDados|ram~731_combout\;
\memoriaDados|ALT_INV_ram~729_combout\ <= NOT \memoriaDados|ram~729_combout\;
\memoriaDados|ALT_INV_ram~727_combout\ <= NOT \memoriaDados|ram~727_combout\;
\memoriaDados|ALT_INV_ram~725_combout\ <= NOT \memoriaDados|ram~725_combout\;
\memoriaDados|ALT_INV_ram~723_combout\ <= NOT \memoriaDados|ram~723_combout\;
\memoriaDados|ALT_INV_ram~721_combout\ <= NOT \memoriaDados|ram~721_combout\;
\memoriaDados|ALT_INV_ram~719_combout\ <= NOT \memoriaDados|ram~719_combout\;
\memoriaDados|ALT_INV_ram~717_combout\ <= NOT \memoriaDados|ram~717_combout\;
\memoriaDados|ALT_INV_ram~715_combout\ <= NOT \memoriaDados|ram~715_combout\;
\memoriaDados|ALT_INV_ram~713_combout\ <= NOT \memoriaDados|ram~713_combout\;
\memoriaDados|ALT_INV_ram~711_combout\ <= NOT \memoriaDados|ram~711_combout\;
\memoriaDados|ALT_INV_ram~709_combout\ <= NOT \memoriaDados|ram~709_combout\;
\memoriaDados|ALT_INV_ram~707_combout\ <= NOT \memoriaDados|ram~707_combout\;
\memoriaDados|ALT_INV_ram~705_combout\ <= NOT \memoriaDados|ram~705_combout\;
\memoriaDados|ALT_INV_ram~703_combout\ <= NOT \memoriaDados|ram~703_combout\;
\memoriaDados|ALT_INV_ram~701_combout\ <= NOT \memoriaDados|ram~701_combout\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_FPGA_RESET~input_o\ <= NOT \FPGA_RESET~input_o\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;
\ALT_INV_KEY[2]~input_o\ <= NOT \KEY[2]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ROM1|ALT_INV_memROM~54_combout\ <= NOT \ROM1|memROM~54_combout\;
\ROM1|ALT_INV_memROM~53_combout\ <= NOT \ROM1|memROM~53_combout\;
\ROM1|ALT_INV_memROM~52_combout\ <= NOT \ROM1|memROM~52_combout\;
\ROM1|ALT_INV_memROM~51_combout\ <= NOT \ROM1|memROM~51_combout\;
\ROM1|ALT_INV_memROM~50_combout\ <= NOT \ROM1|memROM~50_combout\;
\ROM1|ALT_INV_memROM~49_combout\ <= NOT \ROM1|memROM~49_combout\;
\ROM1|ALT_INV_memROM~48_combout\ <= NOT \ROM1|memROM~48_combout\;
\ROM1|ALT_INV_memROM~47_combout\ <= NOT \ROM1|memROM~47_combout\;
\ROM1|ALT_INV_memROM~46_combout\ <= NOT \ROM1|memROM~46_combout\;
\ROM1|ALT_INV_memROM~45_combout\ <= NOT \ROM1|memROM~45_combout\;
\ROM1|ALT_INV_memROM~44_combout\ <= NOT \ROM1|memROM~44_combout\;
\ROM1|ALT_INV_memROM~43_combout\ <= NOT \ROM1|memROM~43_combout\;
\ROM1|ALT_INV_memROM~42_combout\ <= NOT \ROM1|memROM~42_combout\;
\ROM1|ALT_INV_memROM~41_combout\ <= NOT \ROM1|memROM~41_combout\;
\ROM1|ALT_INV_memROM~40_combout\ <= NOT \ROM1|memROM~40_combout\;
\ROM1|ALT_INV_memROM~39_combout\ <= NOT \ROM1|memROM~39_combout\;
\ROM1|ALT_INV_memROM~38_combout\ <= NOT \ROM1|memROM~38_combout\;
\ROM1|ALT_INV_memROM~37_combout\ <= NOT \ROM1|memROM~37_combout\;
\ROM1|ALT_INV_memROM~36_combout\ <= NOT \ROM1|memROM~36_combout\;
\ROM1|ALT_INV_memROM~35_combout\ <= NOT \ROM1|memROM~35_combout\;
\ROM1|ALT_INV_memROM~34_combout\ <= NOT \ROM1|memROM~34_combout\;
\ROM1|ALT_INV_memROM~33_combout\ <= NOT \ROM1|memROM~33_combout\;
\ROM1|ALT_INV_memROM~32_combout\ <= NOT \ROM1|memROM~32_combout\;
\ROM1|ALT_INV_memROM~31_combout\ <= NOT \ROM1|memROM~31_combout\;
\ROM1|ALT_INV_memROM~30_combout\ <= NOT \ROM1|memROM~30_combout\;
\ROM1|ALT_INV_memROM~29_combout\ <= NOT \ROM1|memROM~29_combout\;
\CPU|FLAG_IGUAL|ALT_INV_DOUT~1_combout\ <= NOT \CPU|FLAG_IGUAL|DOUT~1_combout\;
\detectorSub1|ALT_INV_saidaQ~q\ <= NOT \detectorSub1|saidaQ~q\;
\detectorSub0|ALT_INV_saidaQ~q\ <= NOT \detectorSub0|saidaQ~q\;
\ROM1|ALT_INV_memROM~28_combout\ <= NOT \ROM1|memROM~28_combout\;
\ROM1|ALT_INV_memROM~27_combout\ <= NOT \ROM1|memROM~27_combout\;
\ROM1|ALT_INV_memROM~26_combout\ <= NOT \ROM1|memROM~26_combout\;
\ALT_INV_RESET_KEY1~combout\ <= NOT \RESET_KEY1~combout\;
\ALT_INV_RESET_KEY0~combout\ <= NOT \RESET_KEY0~combout\;
\ALT_INV_RESET_KEY0~0_combout\ <= NOT \RESET_KEY0~0_combout\;
\memoriaDados|ALT_INV_ram~821_combout\ <= NOT \memoriaDados|ram~821_combout\;
\memoriaDados|ALT_INV_ram~819_combout\ <= NOT \memoriaDados|ram~819_combout\;
\memoriaDados|ALT_INV_ram~817_combout\ <= NOT \memoriaDados|ram~817_combout\;
\memoriaDados|ALT_INV_ram~815_combout\ <= NOT \memoriaDados|ram~815_combout\;
\memoriaDados|ALT_INV_ram~813_combout\ <= NOT \memoriaDados|ram~813_combout\;
\memoriaDados|ALT_INV_ram~811_combout\ <= NOT \memoriaDados|ram~811_combout\;
\memoriaDados|ALT_INV_ram~809_combout\ <= NOT \memoriaDados|ram~809_combout\;
\memoriaDados|ALT_INV_ram~807_combout\ <= NOT \memoriaDados|ram~807_combout\;
\memoriaDados|ALT_INV_ram~805_combout\ <= NOT \memoriaDados|ram~805_combout\;
\memoriaDados|ALT_INV_ram~803_combout\ <= NOT \memoriaDados|ram~803_combout\;
\REG_HEX5|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \REG_HEX5|DOUT[2]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[8]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[3]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[2]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[1]~DUPLICATE_q\;

-- Location: IOOBUF_X0_Y18_N79
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGLEDR|DOUT\(0),
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X0_Y18_N96
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGLEDR|DOUT\(1),
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X0_Y18_N62
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGLEDR|DOUT\(2),
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X0_Y18_N45
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGLEDR|DOUT\(3),
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X0_Y19_N39
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGLEDR|DOUT\(4),
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X0_Y19_N56
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGLEDR|DOUT\(5),
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X0_Y19_N5
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGLEDR|DOUT\(6),
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X0_Y19_N22
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGLEDR|DOUT\(7),
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X0_Y20_N39
\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGLEDR8|DOUT~q\,
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X0_Y20_N56
\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGLEDR9|DOUT~q\,
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOOBUF_X54_Y14_N96
\Teste_Endereco[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(0),
	devoe => ww_devoe,
	o => ww_Teste_Endereco(0));

-- Location: IOOBUF_X38_Y0_N2
\Teste_Endereco[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT[1]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_Teste_Endereco(1));

-- Location: IOOBUF_X25_Y0_N19
\Teste_Endereco[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT[2]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_Teste_Endereco(2));

-- Location: IOOBUF_X34_Y45_N53
\Teste_Endereco[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT[3]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_Teste_Endereco(3));

-- Location: IOOBUF_X54_Y14_N79
\Teste_Endereco[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(4),
	devoe => ww_devoe,
	o => ww_Teste_Endereco(4));

-- Location: IOOBUF_X36_Y45_N19
\Teste_Endereco[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(5),
	devoe => ww_devoe,
	o => ww_Teste_Endereco(5));

-- Location: IOOBUF_X25_Y0_N53
\Teste_Endereco[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(6),
	devoe => ww_devoe,
	o => ww_Teste_Endereco(6));

-- Location: IOOBUF_X29_Y0_N36
\Teste_Endereco[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(7),
	devoe => ww_devoe,
	o => ww_Teste_Endereco(7));

-- Location: IOOBUF_X24_Y0_N36
\Teste_Endereco[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT[8]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_Teste_Endereco(8));

-- Location: IOOBUF_X52_Y0_N53
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED_HEX0|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X51_Y0_N36
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED_HEX0|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X48_Y0_N76
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED_HEX0|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X50_Y0_N36
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED_HEX0|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X48_Y0_N93
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED_HEX0|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X50_Y0_N53
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED_HEX0|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X46_Y0_N36
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED_HEX0|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X44_Y0_N36
\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED_HEX1|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X40_Y0_N93
\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED_HEX1|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X44_Y0_N53
\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED_HEX1|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X43_Y0_N36
\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED_HEX1|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X38_Y0_N36
\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED_HEX1|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X43_Y0_N53
\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED_HEX1|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X51_Y0_N53
\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED_HEX1|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X48_Y0_N42
\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED_HEX2|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X38_Y0_N53
\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED_HEX2|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X22_Y0_N53
\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED_HEX2|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X36_Y0_N19
\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED_HEX2|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X38_Y0_N19
\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED_HEX2|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X46_Y0_N53
\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED_HEX2|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X40_Y0_N76
\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED_HEX2|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X40_Y0_N59
\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED_HEX3|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(0));

-- Location: IOOBUF_X46_Y0_N2
\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED_HEX3|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(1));

-- Location: IOOBUF_X40_Y0_N42
\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED_HEX3|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(2));

-- Location: IOOBUF_X46_Y0_N19
\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED_HEX3|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(3));

-- Location: IOOBUF_X52_Y0_N2
\HEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED_HEX3|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(4));

-- Location: IOOBUF_X51_Y0_N2
\HEX3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED_HEX3|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(5));

-- Location: IOOBUF_X51_Y0_N19
\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED_HEX3|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOOBUF_X52_Y0_N36
\HEX4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED_HEX4|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(0));

-- Location: IOOBUF_X48_Y0_N59
\HEX4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED_HEX4|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(1));

-- Location: IOOBUF_X44_Y0_N19
\HEX4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED_HEX4|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(2));

-- Location: IOOBUF_X52_Y0_N19
\HEX4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED_HEX4|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(3));

-- Location: IOOBUF_X43_Y0_N2
\HEX4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED_HEX4|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(4));

-- Location: IOOBUF_X36_Y0_N2
\HEX4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED_HEX4|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(5));

-- Location: IOOBUF_X29_Y0_N19
\HEX4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED_HEX4|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(6));

-- Location: IOOBUF_X29_Y0_N2
\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED_HEX5|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(0));

-- Location: IOOBUF_X22_Y0_N19
\HEX5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED_HEX5|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(1));

-- Location: IOOBUF_X43_Y0_N19
\HEX5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED_HEX5|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(2));

-- Location: IOOBUF_X50_Y0_N19
\HEX5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED_HEX5|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(3));

-- Location: IOOBUF_X0_Y21_N56
\HEX5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED_HEX5|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(4));

-- Location: IOOBUF_X0_Y21_N39
\HEX5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED_HEX5|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(5));

-- Location: IOOBUF_X44_Y0_N2
\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED_HEX5|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOIBUF_X22_Y0_N1
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G6
\CLOCK_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~input_o\,
	outclk => \CLOCK_50~inputCLKENA0_outclk\);

-- Location: FF_X36_Y6_N14
\CPU|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX4x2_PC|saida_MUX[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(8));

-- Location: LABCELL_X36_Y6_N45
\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = ( !\CPU|PC|DOUT[8]~DUPLICATE_q\ & ( !\CPU|PC|DOUT\(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(7),
	dataf => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	combout => \ROM1|memROM~4_combout\);

-- Location: MLABCELL_X37_Y6_N30
\CPU|somaUm|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|somaUm|Add0~1_sumout\ = SUM(( \CPU|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \CPU|somaUm|Add0~2\ = CARRY(( \CPU|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \CPU|somaUm|Add0~1_sumout\,
	cout => \CPU|somaUm|Add0~2\);

-- Location: FF_X36_Y5_N58
\CPU|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|MUX4x2_PC|saida_MUX[3]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(3));

-- Location: FF_X36_Y5_N46
\CPU|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX4x2_PC|saida_MUX[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(2));

-- Location: MLABCELL_X34_Y5_N36
\ROM1|memROM~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~53_combout\ = ( \CPU|PC|DOUT\(2) & ( \CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT\(1)))) ) ) ) # ( !\CPU|PC|DOUT\(2) & ( \CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(4) & 
-- (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & (\CPU|PC|DOUT\(0) & \CPU|PC|DOUT\(1)))) ) ) ) # ( \CPU|PC|DOUT\(2) & ( !\CPU|PC|DOUT\(6) & ( (\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT[3]~DUPLICATE_q\ $ (!\CPU|PC|DOUT\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000100000000000000000010001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	datae => \CPU|PC|ALT_INV_DOUT\(2),
	dataf => \CPU|PC|ALT_INV_DOUT\(6),
	combout => \ROM1|memROM~53_combout\);

-- Location: LABCELL_X35_Y5_N48
\ROM1|memROM~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~52_combout\ = ( \CPU|PC|DOUT\(1) & ( \CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT[2]~DUPLICATE_q\ & \CPU|PC|DOUT\(6)) ) ) ) # ( !\CPU|PC|DOUT\(1) & ( \CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT[2]~DUPLICATE_q\ & (\CPU|PC|DOUT[3]~DUPLICATE_q\ & 
-- (\CPU|PC|DOUT\(4) & !\CPU|PC|DOUT\(6)))) ) ) ) # ( !\CPU|PC|DOUT\(1) & ( !\CPU|PC|DOUT\(0) & ( (\CPU|PC|DOUT[2]~DUPLICATE_q\ & \CPU|PC|DOUT\(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000000000000000010000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(4),
	datad => \CPU|PC|ALT_INV_DOUT\(6),
	datae => \CPU|PC|ALT_INV_DOUT\(1),
	dataf => \CPU|PC|ALT_INV_DOUT\(0),
	combout => \ROM1|memROM~52_combout\);

-- Location: MLABCELL_X34_Y5_N24
\ROM1|memROM~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~54_combout\ = ( \ROM1|memROM~52_combout\ & ( (!\CPU|PC|DOUT\(5)) # (\ROM1|memROM~53_combout\) ) ) # ( !\ROM1|memROM~52_combout\ & ( (\ROM1|memROM~53_combout\ & \CPU|PC|DOUT\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~53_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	dataf => \ROM1|ALT_INV_memROM~52_combout\,
	combout => \ROM1|memROM~54_combout\);

-- Location: MLABCELL_X34_Y5_N57
\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = ( \ROM1|memROM~54_combout\ & ( (!\CPU|PC|DOUT[8]~DUPLICATE_q\ & !\CPU|PC|DOUT\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(7),
	dataf => \ROM1|ALT_INV_memROM~54_combout\,
	combout => \ROM1|memROM~5_combout\);

-- Location: MLABCELL_X37_Y6_N45
\CPU|somaUm|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|somaUm|Add0~21_sumout\ = SUM(( \CPU|PC|DOUT\(5) ) + ( GND ) + ( \CPU|somaUm|Add0~18\ ))
-- \CPU|somaUm|Add0~22\ = CARRY(( \CPU|PC|DOUT\(5) ) + ( GND ) + ( \CPU|somaUm|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	cin => \CPU|somaUm|Add0~18\,
	sumout => \CPU|somaUm|Add0~21_sumout\,
	cout => \CPU|somaUm|Add0~22\);

-- Location: MLABCELL_X37_Y6_N48
\CPU|somaUm|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|somaUm|Add0~25_sumout\ = SUM(( \CPU|PC|DOUT\(6) ) + ( GND ) + ( \CPU|somaUm|Add0~22\ ))
-- \CPU|somaUm|Add0~26\ = CARRY(( \CPU|PC|DOUT\(6) ) + ( GND ) + ( \CPU|somaUm|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(6),
	cin => \CPU|somaUm|Add0~22\,
	sumout => \CPU|somaUm|Add0~25_sumout\,
	cout => \CPU|somaUm|Add0~26\);

-- Location: FF_X37_Y6_N49
\CPU|END_RET|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|somaUm|Add0~25_sumout\,
	ena => \CPU|Decoder|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RET|DOUT\(6));

-- Location: MLABCELL_X37_Y6_N9
\CPU|MUX4x2_PC|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX4x2_PC|saida_MUX[6]~6_combout\ = ( \CPU|MUX4x2_PC|Equal1~0_combout\ & ( \CPU|somaUm|Add0~25_sumout\ & ( (!\CPU|MUX4x2_PC|Equal2~0_combout\) # (\ROM1|memROM~5_combout\) ) ) ) # ( !\CPU|MUX4x2_PC|Equal1~0_combout\ & ( \CPU|somaUm|Add0~25_sumout\ & ( 
-- (!\CPU|MUX4x2_PC|Equal2~0_combout\) # (\CPU|END_RET|DOUT\(6)) ) ) ) # ( \CPU|MUX4x2_PC|Equal1~0_combout\ & ( !\CPU|somaUm|Add0~25_sumout\ & ( (\ROM1|memROM~5_combout\ & \CPU|MUX4x2_PC|Equal2~0_combout\) ) ) ) # ( !\CPU|MUX4x2_PC|Equal1~0_combout\ & ( 
-- !\CPU|somaUm|Add0~25_sumout\ & ( (\CPU|END_RET|DOUT\(6) & \CPU|MUX4x2_PC|Equal2~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000001010000010111110011111100111111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \CPU|END_RET|ALT_INV_DOUT\(6),
	datac => \CPU|MUX4x2_PC|ALT_INV_Equal2~0_combout\,
	datae => \CPU|MUX4x2_PC|ALT_INV_Equal1~0_combout\,
	dataf => \CPU|somaUm|ALT_INV_Add0~25_sumout\,
	combout => \CPU|MUX4x2_PC|saida_MUX[6]~6_combout\);

-- Location: FF_X37_Y5_N59
\CPU|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|MUX4x2_PC|saida_MUX[6]~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(6));

-- Location: MLABCELL_X37_Y7_N36
\ROM1|memROM~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~49_combout\ = ( \CPU|PC|DOUT\(0) & ( \CPU|PC|DOUT\(5) & ( (\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(3))) # (\CPU|PC|DOUT\(4) & (\CPU|PC|DOUT\(3) & !\CPU|PC|DOUT\(6))))) ) ) ) # ( !\CPU|PC|DOUT\(0) & ( \CPU|PC|DOUT\(5) & ( 
-- (!\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(3) & \CPU|PC|DOUT\(6))) # (\CPU|PC|DOUT\(4) & (\CPU|PC|DOUT\(3) & !\CPU|PC|DOUT\(6))))) ) ) ) # ( \CPU|PC|DOUT\(0) & ( !\CPU|PC|DOUT\(5) & ( (\CPU|PC|DOUT\(1) & (((\CPU|PC|DOUT\(4) & 
-- \CPU|PC|DOUT\(3))) # (\CPU|PC|DOUT\(6)))) ) ) ) # ( !\CPU|PC|DOUT\(0) & ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000010011001100000100100000000010000100100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \CPU|PC|ALT_INV_DOUT\(6),
	datae => \CPU|PC|ALT_INV_DOUT\(0),
	dataf => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \ROM1|memROM~49_combout\);

-- Location: FF_X36_Y5_N43
\CPU|PC|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX4x2_PC|saida_MUX[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[1]~DUPLICATE_q\);

-- Location: MLABCELL_X37_Y7_N12
\ROM1|memROM~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~50_combout\ = ( \CPU|PC|DOUT\(0) & ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(4) & (\CPU|PC|DOUT\(6) & (\CPU|PC|DOUT[1]~DUPLICATE_q\ & \CPU|PC|DOUT\(3)))) # (\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT[1]~DUPLICATE_q\ & 
-- !\CPU|PC|DOUT\(3)))) ) ) ) # ( !\CPU|PC|DOUT\(0) & ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT[1]~DUPLICATE_q\ & ((!\CPU|PC|DOUT\(4) & (\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(3))) # (\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(6) & \CPU|PC|DOUT\(3))))) ) ) ) # ( 
-- !\CPU|PC|DOUT\(0) & ( !\CPU|PC|DOUT\(5) & ( (\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT[1]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000000000000000000100000010000000100000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(6),
	datac => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(0),
	dataf => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \ROM1|memROM~50_combout\);

-- Location: MLABCELL_X37_Y7_N42
\ROM1|memROM~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~51_combout\ = ( \ROM1|memROM~49_combout\ & ( \ROM1|memROM~50_combout\ ) ) # ( !\ROM1|memROM~49_combout\ & ( \ROM1|memROM~50_combout\ & ( \CPU|PC|DOUT[2]~DUPLICATE_q\ ) ) ) # ( \ROM1|memROM~49_combout\ & ( !\ROM1|memROM~50_combout\ & ( 
-- !\CPU|PC|DOUT[2]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datae => \ROM1|ALT_INV_memROM~49_combout\,
	dataf => \ROM1|ALT_INV_memROM~50_combout\,
	combout => \ROM1|memROM~51_combout\);

-- Location: MLABCELL_X37_Y7_N0
\ROM1|memROM~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~41_combout\ = ( \CPU|PC|DOUT\(0) & ( \CPU|PC|DOUT\(5) & ( (\CPU|PC|DOUT[1]~DUPLICATE_q\ & (\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(4) & \CPU|PC|DOUT\(3)))) ) ) ) # ( !\CPU|PC|DOUT\(0) & ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT[1]~DUPLICATE_q\ & 
-- (!\CPU|PC|DOUT\(6) & (\CPU|PC|DOUT\(4) & \CPU|PC|DOUT\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT\(6),
	datac => \CPU|PC|ALT_INV_DOUT\(4),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(0),
	dataf => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \ROM1|memROM~41_combout\);

-- Location: MLABCELL_X37_Y7_N30
\ROM1|memROM~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~40_combout\ = ( \CPU|PC|DOUT\(0) & ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(3) & !\CPU|PC|DOUT\(6)))) ) ) ) # ( !\CPU|PC|DOUT\(0) & ( \CPU|PC|DOUT\(5) & ( (\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(4) & 
-- (!\CPU|PC|DOUT\(3) & \CPU|PC|DOUT\(6))) # (\CPU|PC|DOUT\(4) & (\CPU|PC|DOUT\(3) & !\CPU|PC|DOUT\(6))))) ) ) ) # ( !\CPU|PC|DOUT\(0) & ( !\CPU|PC|DOUT\(5) & ( (\CPU|PC|DOUT\(1) & (((\CPU|PC|DOUT\(4) & \CPU|PC|DOUT\(3))) # (\CPU|PC|DOUT\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110011000000000000000000000001001000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \CPU|PC|ALT_INV_DOUT\(6),
	datae => \CPU|PC|ALT_INV_DOUT\(0),
	dataf => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \ROM1|memROM~40_combout\);

-- Location: MLABCELL_X37_Y7_N6
\ROM1|memROM~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~42_combout\ = ( \ROM1|memROM~40_combout\ & ( (!\CPU|PC|DOUT[2]~DUPLICATE_q\) # (\ROM1|memROM~41_combout\) ) ) # ( !\ROM1|memROM~40_combout\ & ( (\CPU|PC|DOUT[2]~DUPLICATE_q\ & \ROM1|memROM~41_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \ROM1|ALT_INV_memROM~41_combout\,
	dataf => \ROM1|ALT_INV_memROM~40_combout\,
	combout => \ROM1|memROM~42_combout\);

-- Location: MLABCELL_X37_Y8_N6
\CPU|Decoder|Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Decoder|Equal1~2_combout\ = ( \ROM1|memROM~48_combout\ & ( \ROM1|memROM~42_combout\ & ( (!\ROM1|memROM~51_combout\ & (\ROM1|memROM~4_combout\ & !\ROM1|memROM~45_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~51_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~45_combout\,
	datae => \ROM1|ALT_INV_memROM~48_combout\,
	dataf => \ROM1|ALT_INV_memROM~42_combout\,
	combout => \CPU|Decoder|Equal1~2_combout\);

-- Location: FF_X37_Y6_N31
\CPU|END_RET|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|somaUm|Add0~1_sumout\,
	ena => \CPU|Decoder|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RET|DOUT\(0));

-- Location: MLABCELL_X37_Y5_N42
\ROM1|memROM~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~37_combout\ = ( \CPU|PC|DOUT\(0) & ( \CPU|PC|DOUT\(1) & ( (!\CPU|PC|DOUT\(6) & ((!\CPU|PC|DOUT\(4) & ((\CPU|PC|DOUT\(3)))) # (\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(2))))) # (\CPU|PC|DOUT\(6) & ((!\CPU|PC|DOUT\(2)) # ((\CPU|PC|DOUT\(3))))) ) ) ) 
-- # ( !\CPU|PC|DOUT\(0) & ( \CPU|PC|DOUT\(1) & ( (!\CPU|PC|DOUT\(6) & (((!\CPU|PC|DOUT\(3) & !\CPU|PC|DOUT\(4))))) # (\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(2))) ) ) ) # ( \CPU|PC|DOUT\(0) & ( !\CPU|PC|DOUT\(1) & ( (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(3) & 
-- (\CPU|PC|DOUT\(6)))) # (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(3) $ (!\CPU|PC|DOUT\(4))))) ) ) ) # ( !\CPU|PC|DOUT\(0) & ( !\CPU|PC|DOUT\(1) & ( (!\CPU|PC|DOUT\(2) $ (!\CPU|PC|DOUT\(3))) # (\CPU|PC|DOUT\(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110111101101111000110000100100011001010000010100011101110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(2),
	datab => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	datae => \CPU|PC|ALT_INV_DOUT\(0),
	dataf => \CPU|PC|ALT_INV_DOUT\(1),
	combout => \ROM1|memROM~37_combout\);

-- Location: MLABCELL_X37_Y5_N48
\ROM1|memROM~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~38_combout\ = ( \CPU|PC|DOUT\(0) & ( \CPU|PC|DOUT\(1) & ( (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT\(4)) # (!\CPU|PC|DOUT\(6))))) # (\CPU|PC|DOUT\(3) & (((!\CPU|PC|DOUT\(6))))) ) ) ) # ( !\CPU|PC|DOUT\(0) & ( \CPU|PC|DOUT\(1) 
-- & ( (!\CPU|PC|DOUT\(4) & (\CPU|PC|DOUT\(6) & ((!\CPU|PC|DOUT\(2)) # (\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(2) $ (!\CPU|PC|DOUT\(3))))) ) ) ) # ( \CPU|PC|DOUT\(0) & ( !\CPU|PC|DOUT\(1) & ( (!\CPU|PC|DOUT\(3) & 
-- (!\CPU|PC|DOUT\(4) $ (((\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(6)))))) ) ) ) # ( !\CPU|PC|DOUT\(0) & ( !\CPU|PC|DOUT\(1) & ( (!\CPU|PC|DOUT\(4) & (((\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3))) # (\CPU|PC|DOUT\(6)))) # (\CPU|PC|DOUT\(4) & (((!\CPU|PC|DOUT\(6))))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110001111100100111000000000000011000001011001010100011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(2),
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(0),
	dataf => \CPU|PC|ALT_INV_DOUT\(1),
	combout => \ROM1|memROM~38_combout\);

-- Location: MLABCELL_X37_Y5_N39
\ROM1|memROM~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~39_combout\ = ( \ROM1|memROM~38_combout\ & ( (\ROM1|memROM~37_combout\) # (\CPU|PC|DOUT\(5)) ) ) # ( !\ROM1|memROM~38_combout\ & ( (!\CPU|PC|DOUT\(5) & \ROM1|memROM~37_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(5),
	datad => \ROM1|ALT_INV_memROM~37_combout\,
	dataf => \ROM1|ALT_INV_memROM~38_combout\,
	combout => \ROM1|memROM~39_combout\);

-- Location: MLABCELL_X37_Y5_N9
\ROM1|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~13_combout\ = ( \ROM1|memROM~39_combout\ & ( (!\CPU|PC|DOUT\(7) & !\CPU|PC|DOUT\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(7),
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	dataf => \ROM1|ALT_INV_memROM~39_combout\,
	combout => \ROM1|memROM~13_combout\);

-- Location: LABCELL_X36_Y6_N42
\CPU|MUX4x2_PC|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX4x2_PC|saida_MUX[0]~0_combout\ = ( \CPU|MUX4x2_PC|Equal2~0_combout\ & ( (!\CPU|MUX4x2_PC|Equal1~0_combout\ & (\CPU|END_RET|DOUT\(0))) # (\CPU|MUX4x2_PC|Equal1~0_combout\ & ((\ROM1|memROM~13_combout\))) ) ) # ( !\CPU|MUX4x2_PC|Equal2~0_combout\ & ( 
-- \CPU|somaUm|Add0~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX4x2_PC|ALT_INV_Equal1~0_combout\,
	datab => \CPU|END_RET|ALT_INV_DOUT\(0),
	datac => \ROM1|ALT_INV_memROM~13_combout\,
	datad => \CPU|somaUm|ALT_INV_Add0~1_sumout\,
	dataf => \CPU|MUX4x2_PC|ALT_INV_Equal2~0_combout\,
	combout => \CPU|MUX4x2_PC|saida_MUX[0]~0_combout\);

-- Location: FF_X36_Y5_N29
\CPU|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|MUX4x2_PC|saida_MUX[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(0));

-- Location: MLABCELL_X37_Y6_N33
\CPU|somaUm|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|somaUm|Add0~5_sumout\ = SUM(( \CPU|PC|DOUT\(1) ) + ( GND ) + ( \CPU|somaUm|Add0~2\ ))
-- \CPU|somaUm|Add0~6\ = CARRY(( \CPU|PC|DOUT\(1) ) + ( GND ) + ( \CPU|somaUm|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	cin => \CPU|somaUm|Add0~2\,
	sumout => \CPU|somaUm|Add0~5_sumout\,
	cout => \CPU|somaUm|Add0~6\);

-- Location: FF_X37_Y6_N34
\CPU|END_RET|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|somaUm|Add0~5_sumout\,
	ena => \CPU|Decoder|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RET|DOUT\(1));

-- Location: MLABCELL_X37_Y5_N12
\ROM1|memROM~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~34_combout\ = ( \CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT[1]~DUPLICATE_q\ & (\CPU|PC|DOUT\(6) & ((!\CPU|PC|DOUT\(3)) # (\CPU|PC|DOUT\(2))))) # (\CPU|PC|DOUT[1]~DUPLICATE_q\ & (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(6) & 
-- !\CPU|PC|DOUT\(3)))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT[1]~DUPLICATE_q\ & ((\CPU|PC|DOUT\(3)))) # (\CPU|PC|DOUT[1]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(2) & 
-- (((!\CPU|PC|DOUT[1]~DUPLICATE_q\ & \CPU|PC|DOUT\(3))) # (\CPU|PC|DOUT\(6)))) ) ) ) # ( \CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT[1]~DUPLICATE_q\ & ((!\CPU|PC|DOUT\(3)) # (\CPU|PC|DOUT\(6)))) # 
-- (\CPU|PC|DOUT[1]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(6))))) # (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT[1]~DUPLICATE_q\)) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT[1]~DUPLICATE_q\ & ((\CPU|PC|DOUT\(6)) # (\CPU|PC|DOUT\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110001001100111011000110110000100101110011010001110000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(2),
	datab => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT\(0),
	combout => \ROM1|memROM~34_combout\);

-- Location: MLABCELL_X37_Y5_N21
\ROM1|memROM~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~35_combout\ = ( \CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(0) & ( (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(6) & (\CPU|PC|DOUT\(3) & !\CPU|PC|DOUT\(1)))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(6) & 
-- (\CPU|PC|DOUT\(3) & \CPU|PC|DOUT\(1)))) # (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(6) $ ((!\CPU|PC|DOUT\(3))))) ) ) ) # ( \CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(1) $ (((\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3)))))) ) ) ) # 
-- ( !\CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(3) & !\CPU|PC|DOUT\(1)))) # (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(6) $ (((!\CPU|PC|DOUT\(3)) # (!\CPU|PC|DOUT\(1)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000100010100100011000100000000010100000101100000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(2),
	datab => \CPU|PC|ALT_INV_DOUT\(6),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT\(0),
	combout => \ROM1|memROM~35_combout\);

-- Location: MLABCELL_X37_Y5_N27
\ROM1|memROM~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~36_combout\ = ( \ROM1|memROM~35_combout\ & ( (\ROM1|memROM~34_combout\) # (\CPU|PC|DOUT\(5)) ) ) # ( !\ROM1|memROM~35_combout\ & ( (!\CPU|PC|DOUT\(5) & \ROM1|memROM~34_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \ROM1|ALT_INV_memROM~34_combout\,
	dataf => \ROM1|ALT_INV_memROM~35_combout\,
	combout => \ROM1|memROM~36_combout\);

-- Location: MLABCELL_X37_Y5_N3
\ROM1|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~14_combout\ = ( \ROM1|memROM~36_combout\ & ( \ROM1|memROM~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~36_combout\,
	combout => \ROM1|memROM~14_combout\);

-- Location: LABCELL_X36_Y5_N42
\CPU|MUX4x2_PC|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX4x2_PC|saida_MUX[1]~1_combout\ = ( \CPU|somaUm|Add0~5_sumout\ & ( (!\CPU|MUX4x2_PC|Equal2~0_combout\) # ((!\CPU|MUX4x2_PC|Equal1~0_combout\ & (\CPU|END_RET|DOUT\(1))) # (\CPU|MUX4x2_PC|Equal1~0_combout\ & ((\ROM1|memROM~14_combout\)))) ) ) # ( 
-- !\CPU|somaUm|Add0~5_sumout\ & ( (\CPU|MUX4x2_PC|Equal2~0_combout\ & ((!\CPU|MUX4x2_PC|Equal1~0_combout\ & (\CPU|END_RET|DOUT\(1))) # (\CPU|MUX4x2_PC|Equal1~0_combout\ & ((\ROM1|memROM~14_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011000000100001001111001110110111111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX4x2_PC|ALT_INV_Equal1~0_combout\,
	datab => \CPU|MUX4x2_PC|ALT_INV_Equal2~0_combout\,
	datac => \CPU|END_RET|ALT_INV_DOUT\(1),
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \CPU|somaUm|ALT_INV_Add0~5_sumout\,
	combout => \CPU|MUX4x2_PC|saida_MUX[1]~1_combout\);

-- Location: FF_X36_Y5_N44
\CPU|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX4x2_PC|saida_MUX[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(1));

-- Location: LABCELL_X35_Y5_N0
\ROM1|memROM~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~47_combout\ = ( !\CPU|PC|DOUT\(5) & ( \CPU|PC|DOUT\(6) & ( ((\CPU|PC|DOUT\(1) & \CPU|PC|DOUT[2]~DUPLICATE_q\)) # (\CPU|PC|DOUT\(0)) ) ) ) # ( \CPU|PC|DOUT\(5) & ( !\CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT[2]~DUPLICATE_q\ & 
-- (((!\CPU|PC|DOUT[3]~DUPLICATE_q\) # (\CPU|PC|DOUT\(0))))) # (\CPU|PC|DOUT[2]~DUPLICATE_q\ & ((!\CPU|PC|DOUT[3]~DUPLICATE_q\ $ (\CPU|PC|DOUT\(0))) # (\CPU|PC|DOUT\(1)))) ) ) ) # ( !\CPU|PC|DOUT\(5) & ( !\CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & 
-- (((!\CPU|PC|DOUT\(0))))) # (\CPU|PC|DOUT[3]~DUPLICATE_q\ & ((!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1))) # (\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT[2]~DUPLICATE_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111000110000110011011111011100000101111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	datae => \CPU|PC|ALT_INV_DOUT\(5),
	dataf => \CPU|PC|ALT_INV_DOUT\(6),
	combout => \ROM1|memROM~47_combout\);

-- Location: LABCELL_X35_Y5_N42
\ROM1|memROM~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~46_combout\ = ( \CPU|PC|DOUT\(6) & ( \CPU|PC|DOUT\(0) & ( (\CPU|PC|DOUT[2]~DUPLICATE_q\ & (\CPU|PC|DOUT[3]~DUPLICATE_q\ & (\CPU|PC|DOUT\(5) & \CPU|PC|DOUT\(1)))) ) ) ) # ( !\CPU|PC|DOUT\(6) & ( \CPU|PC|DOUT\(0) & ( 
-- (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & (\CPU|PC|DOUT\(5) & ((\CPU|PC|DOUT\(1)) # (\CPU|PC|DOUT[2]~DUPLICATE_q\)))) ) ) ) # ( \CPU|PC|DOUT\(6) & ( !\CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT[2]~DUPLICATE_q\ & ((!\CPU|PC|DOUT[3]~DUPLICATE_q\) # ((!\CPU|PC|DOUT\(5)) # 
-- (!\CPU|PC|DOUT\(1))))) # (\CPU|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT[3]~DUPLICATE_q\) # (!\CPU|PC|DOUT\(5))))) ) ) ) # ( !\CPU|PC|DOUT\(6) & ( !\CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & (((!\CPU|PC|DOUT[2]~DUPLICATE_q\ 
-- & !\CPU|PC|DOUT\(1))) # (\CPU|PC|DOUT\(5)))) # (\CPU|PC|DOUT[3]~DUPLICATE_q\ & (!\CPU|PC|DOUT[2]~DUPLICATE_q\ & (\CPU|PC|DOUT\(5) & !\CPU|PC|DOUT\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000111000001100111111101010100000000100000011000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(5),
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	datae => \CPU|PC|ALT_INV_DOUT\(6),
	dataf => \CPU|PC|ALT_INV_DOUT\(0),
	combout => \ROM1|memROM~46_combout\);

-- Location: LABCELL_X35_Y5_N24
\ROM1|memROM~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~48_combout\ = ( \ROM1|memROM~46_combout\ & ( (\CPU|PC|DOUT\(4) & \ROM1|memROM~47_combout\) ) ) # ( !\ROM1|memROM~46_combout\ & ( (!\CPU|PC|DOUT\(4)) # (\ROM1|memROM~47_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111100001111111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(4),
	datad => \ROM1|ALT_INV_memROM~47_combout\,
	dataf => \ROM1|ALT_INV_memROM~46_combout\,
	combout => \ROM1|memROM~48_combout\);

-- Location: LABCELL_X36_Y6_N39
\ROM1|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~16_combout\ = (\ROM1|memROM~48_combout\ & \ROM1|memROM~4_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~48_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \ROM1|memROM~16_combout\);

-- Location: MLABCELL_X37_Y7_N21
\ROM1|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~15_combout\ = ( \ROM1|memROM~51_combout\ & ( \ROM1|memROM~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~51_combout\,
	combout => \ROM1|memROM~15_combout\);

-- Location: LABCELL_X36_Y7_N57
\CPU|Decoder|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Decoder|Equal1~0_combout\ = ( !\ROM1|memROM~48_combout\ & ( (\ROM1|memROM~45_combout\ & (\ROM1|memROM~4_combout\ & (!\ROM1|memROM~51_combout\ & !\ROM1|memROM~42_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~45_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~51_combout\,
	datad => \ROM1|ALT_INV_memROM~42_combout\,
	dataf => \ROM1|ALT_INV_memROM~48_combout\,
	combout => \CPU|Decoder|Equal1~0_combout\);

-- Location: LABCELL_X36_Y5_N3
\ROM1|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~9_combout\ = ( \CPU|PC|DOUT\(2) & ( (\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & !\CPU|PC|DOUT\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	dataf => \CPU|PC|ALT_INV_DOUT\(2),
	combout => \ROM1|memROM~9_combout\);

-- Location: LABCELL_X35_Y5_N30
\ROM1|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~10_combout\ = ( \CPU|PC|DOUT\(1) & ( !\CPU|PC|DOUT\(0) & ( (\ROM1|memROM~9_combout\ & (\CPU|PC|DOUT\(5) & \ROM1|memROM~4_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~9_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \CPU|PC|ALT_INV_DOUT\(1),
	dataf => \CPU|PC|ALT_INV_DOUT\(0),
	combout => \ROM1|memROM~10_combout\);

-- Location: IOIBUF_X34_Y0_N35
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: LABCELL_X36_Y5_N21
\ROM1|memROM~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~30_combout\ = ( \CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & !\CPU|PC|DOUT\(4))) ) ) # ( !\CPU|PC|DOUT\(0) & ( \CPU|PC|DOUT[2]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT\(0),
	combout => \ROM1|memROM~30_combout\);

-- Location: LABCELL_X36_Y5_N30
\ROM1|memROM~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~29_combout\ = ( \CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT[3]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & ((\CPU|PC|DOUT[2]~DUPLICATE_q\)))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT[2]~DUPLICATE_q\ & ((!\CPU|PC|DOUT\(5)) # 
-- (\CPU|PC|DOUT\(1))))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT[3]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(5) & ((\CPU|PC|DOUT[2]~DUPLICATE_q\) # (\CPU|PC|DOUT\(1))))) ) ) ) # ( \CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT[3]~DUPLICATE_q\ & ( 
-- (!\CPU|PC|DOUT\(0) & \CPU|PC|DOUT\(5)) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT[3]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT[2]~DUPLICATE_q\ & (\CPU|PC|DOUT\(0))) # (\CPU|PC|DOUT[2]~DUPLICATE_q\ & ((!\CPU|PC|DOUT\(5)))))) # 
-- (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(5) & ((!\CPU|PC|DOUT\(0)) # (!\CPU|PC|DOUT[2]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010011100000000010100000101000000010000010100101000110001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(5),
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \ROM1|memROM~29_combout\);

-- Location: LABCELL_X36_Y5_N54
\ROM1|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~11_combout\ = ( \ROM1|memROM~30_combout\ & ( \ROM1|memROM~29_combout\ & ( (!\CPU|PC|DOUT\(6)) # ((!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(5)))) ) ) ) # ( !\ROM1|memROM~30_combout\ & ( \ROM1|memROM~29_combout\ & ( 
-- !\CPU|PC|DOUT\(6) ) ) ) # ( \ROM1|memROM~30_combout\ & ( !\ROM1|memROM~29_combout\ & ( (\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(1) $ (!\CPU|PC|DOUT\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100100001001011001100110011001100111011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \CPU|PC|ALT_INV_DOUT\(6),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	datae => \ROM1|ALT_INV_memROM~30_combout\,
	dataf => \ROM1|ALT_INV_memROM~29_combout\,
	combout => \ROM1|memROM~11_combout\);

-- Location: MLABCELL_X37_Y5_N0
\AND_HEX0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_HEX0~1_combout\ = ( \ROM1|memROM~39_combout\ & ( (!\CPU|PC|DOUT\(7) & !\CPU|PC|DOUT[8]~DUPLICATE_q\) ) ) # ( !\ROM1|memROM~39_combout\ & ( (\ROM1|memROM~36_combout\ & (!\CPU|PC|DOUT\(7) & !\CPU|PC|DOUT[8]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~36_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(7),
	datac => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	dataf => \ROM1|ALT_INV_memROM~39_combout\,
	combout => \AND_HEX0~1_combout\);

-- Location: LABCELL_X36_Y4_N9
\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = ( \CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(4) & ((!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT[3]~DUPLICATE_q\)) # (\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT\(0)))))) ) ) # ( !\CPU|PC|DOUT\(6) & ( (\CPU|PC|DOUT\(4) & ((!\CPU|PC|DOUT\(2)) # 
-- ((!\CPU|PC|DOUT[3]~DUPLICATE_q\ & !\CPU|PC|DOUT\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000100010001100100010001011000100100000001100010010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(2),
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	dataf => \CPU|PC|ALT_INV_DOUT\(6),
	combout => \ROM1|memROM~3_combout\);

-- Location: LABCELL_X36_Y4_N27
\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = ( \CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(2)) # ((\CPU|PC|DOUT\(4) & \CPU|PC|DOUT\(0))) ) ) # ( !\CPU|PC|DOUT\(6) & ( (\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT[3]~DUPLICATE_q\ & ((!\CPU|PC|DOUT\(0)))) # (\CPU|PC|DOUT[3]~DUPLICATE_q\ & 
-- (!\CPU|PC|DOUT\(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010000000100010101000000010010101010101110111010101010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(2),
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	dataf => \CPU|PC|ALT_INV_DOUT\(6),
	combout => \ROM1|memROM~2_combout\);

-- Location: LABCELL_X36_Y4_N51
\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = ( \CPU|PC|DOUT[3]~DUPLICATE_q\ & ( \CPU|PC|DOUT\(6) & ( (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(4))) ) ) ) # ( !\CPU|PC|DOUT[3]~DUPLICATE_q\ & ( \CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(0) $ 
-- (!\CPU|PC|DOUT\(2)))) ) ) ) # ( \CPU|PC|DOUT[3]~DUPLICATE_q\ & ( !\CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(4))) ) ) ) # ( !\CPU|PC|DOUT[3]~DUPLICATE_q\ & ( !\CPU|PC|DOUT\(6) & ( (\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(0) $ 
-- (!\CPU|PC|DOUT\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000000100000001001100000011000000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(4),
	datae => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(6),
	combout => \ROM1|memROM~1_combout\);

-- Location: LABCELL_X36_Y4_N6
\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = ( \CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(4) & (\CPU|PC|DOUT\(3) & \CPU|PC|DOUT\(0)))) # (\CPU|PC|DOUT\(2) & (((!\CPU|PC|DOUT\(0))))) ) ) # ( !\CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(4) & (\CPU|PC|DOUT\(2) & 
-- (!\CPU|PC|DOUT\(3) & \CPU|PC|DOUT\(0)))) # (\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(2)) # (\CPU|PC|DOUT\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001101000000001000110100000001010101000000100101010100000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(2),
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	dataf => \CPU|PC|ALT_INV_DOUT\(6),
	combout => \ROM1|memROM~0_combout\);

-- Location: LABCELL_X36_Y4_N42
\ROM1|memROM~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~55_combout\ = ( !\CPU|PC|DOUT\(1) & ( (\ROM1|memROM~4_combout\ & (((!\CPU|PC|DOUT\(5) & (\ROM1|memROM~0_combout\)) # (\CPU|PC|DOUT\(5) & ((\ROM1|memROM~1_combout\)))))) ) ) # ( \CPU|PC|DOUT\(1) & ( (\ROM1|memROM~4_combout\ & 
-- ((!\CPU|PC|DOUT\(5) & (((\ROM1|memROM~2_combout\)))) # (\CPU|PC|DOUT\(5) & (\ROM1|memROM~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010100000000000001010001000100000101010101010000010100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	datae => \CPU|PC|ALT_INV_DOUT\(1),
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	datag => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \ROM1|memROM~55_combout\);

-- Location: LABCELL_X36_Y6_N33
\AND_ENABLE_BUFFER_8BITS~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_ENABLE_BUFFER_8BITS~1_combout\ = ( !\ROM1|memROM~55_combout\ & ( (!\AND_HEX0~1_combout\ & ((!\ROM1|memROM~4_combout\) # (!\ROM1|memROM~11_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101000000000111110100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	datad => \ALT_INV_AND_HEX0~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~55_combout\,
	combout => \AND_ENABLE_BUFFER_8BITS~1_combout\);

-- Location: LABCELL_X35_Y5_N27
\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = ( \CPU|PC|DOUT\(6) & ( (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(5)))) ) ) # ( !\CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(5) & (((\CPU|PC|DOUT\(2)) # (\CPU|PC|DOUT\(0))) # (\CPU|PC|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111100000000011111110000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \CPU|PC|ALT_INV_DOUT\(0),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	dataf => \CPU|PC|ALT_INV_DOUT\(6),
	combout => \ROM1|memROM~6_combout\);

-- Location: LABCELL_X35_Y5_N6
\ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~7_combout\ = ( \CPU|PC|DOUT\(1) & ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT[3]~DUPLICATE_q\ $ (!\CPU|PC|DOUT\(4)))) ) ) ) # ( !\CPU|PC|DOUT\(1) & ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT[3]~DUPLICATE_q\ & 
-- ((\CPU|PC|DOUT\(4)))) # (\CPU|PC|DOUT[3]~DUPLICATE_q\ & (\CPU|PC|DOUT[2]~DUPLICATE_q\ & !\CPU|PC|DOUT\(4))))) ) ) ) # ( !\CPU|PC|DOUT\(1) & ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT[2]~DUPLICATE_q\ & (\CPU|PC|DOUT[3]~DUPLICATE_q\ & ((!\CPU|PC|DOUT\(4)) # 
-- (\CPU|PC|DOUT\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100010000000000000000000011100000000000011110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(4),
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	datae => \CPU|PC|ALT_INV_DOUT\(1),
	dataf => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \ROM1|memROM~7_combout\);

-- Location: LABCELL_X35_Y5_N54
\ROM1|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~8_combout\ = ( !\CPU|PC|DOUT\(6) & ( \CPU|PC|DOUT[3]~DUPLICATE_q\ & ( (\ROM1|memROM~7_combout\ & \ROM1|memROM~4_combout\) ) ) ) # ( \CPU|PC|DOUT\(6) & ( !\CPU|PC|DOUT[3]~DUPLICATE_q\ & ( (\ROM1|memROM~6_combout\ & (\ROM1|memROM~4_combout\ & 
-- !\CPU|PC|DOUT\(4))) ) ) ) # ( !\CPU|PC|DOUT\(6) & ( !\CPU|PC|DOUT[3]~DUPLICATE_q\ & ( (\ROM1|memROM~4_combout\ & (((\ROM1|memROM~6_combout\ & !\CPU|PC|DOUT\(4))) # (\ROM1|memROM~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000011000001010000000000000011000000110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datab => \ROM1|ALT_INV_memROM~7_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	datae => \CPU|PC|ALT_INV_DOUT\(6),
	dataf => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \ROM1|memROM~8_combout\);

-- Location: LABCELL_X36_Y6_N6
\DECODER_BLOCOS|OUTPUT[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_BLOCOS|OUTPUT[5]~0_combout\ = ( !\ROM1|memROM~10_combout\ & ( \ROM1|memROM~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \DECODER_BLOCOS|OUTPUT[5]~0_combout\);

-- Location: LABCELL_X36_Y6_N36
\CPU|Decoder|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Decoder|Equal1~1_combout\ = ( !\ROM1|memROM~51_combout\ & ( (!\ROM1|memROM~48_combout\ & (\ROM1|memROM~4_combout\ & (\ROM1|memROM~42_combout\ & !\ROM1|memROM~45_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~48_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~42_combout\,
	datad => \ROM1|ALT_INV_memROM~45_combout\,
	dataf => \ROM1|ALT_INV_memROM~51_combout\,
	combout => \CPU|Decoder|Equal1~1_combout\);

-- Location: LABCELL_X36_Y6_N15
\ROM1|memROM~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~18_combout\ = ( \ROM1|memROM~42_combout\ & ( \ROM1|memROM~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~42_combout\,
	combout => \ROM1|memROM~18_combout\);

-- Location: LABCELL_X36_Y6_N30
\CPU|Decoder|Habilita_A~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Decoder|Habilita_A~0_combout\ = ( !\ROM1|memROM~18_combout\ & ( (!\ROM1|memROM~17_combout\ & ((\ROM1|memROM~15_combout\) # (\ROM1|memROM~16_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011110000001100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~16_combout\,
	datac => \ROM1|ALT_INV_memROM~17_combout\,
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~18_combout\,
	combout => \CPU|Decoder|Habilita_A~0_combout\);

-- Location: LABCELL_X36_Y6_N9
\AND_ENABLE_BUFFER_8BITS~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_ENABLE_BUFFER_8BITS~2_combout\ = ( \CPU|Decoder|Habilita_A~0_combout\ & ( (\AND_ENABLE_BUFFER_8BITS~1_combout\ & (\ROM1|memROM~5_combout\ & \DECODER_BLOCOS|OUTPUT[5]~0_combout\)) ) ) # ( !\CPU|Decoder|Habilita_A~0_combout\ & ( 
-- (\AND_ENABLE_BUFFER_8BITS~1_combout\ & (\ROM1|memROM~5_combout\ & (\DECODER_BLOCOS|OUTPUT[5]~0_combout\ & \CPU|Decoder|Equal1~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AND_ENABLE_BUFFER_8BITS~1_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \DECODER_BLOCOS|ALT_INV_OUTPUT[5]~0_combout\,
	datad => \CPU|Decoder|ALT_INV_Equal1~1_combout\,
	dataf => \CPU|Decoder|ALT_INV_Habilita_A~0_combout\,
	combout => \AND_ENABLE_BUFFER_8BITS~2_combout\);

-- Location: LABCELL_X36_Y5_N39
\ROM1|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~12_combout\ = ( \ROM1|memROM~11_combout\ & ( \ROM1|memROM~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \ROM1|memROM~12_combout\);

-- Location: LABCELL_X36_Y5_N48
\ROM1|memROM~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~21_combout\ = ( \CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & (\CPU|PC|DOUT\(5) & !\CPU|PC|DOUT\(1))) ) ) # ( !\CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & (\CPU|PC|DOUT\(5) & \CPU|PC|DOUT\(1))) # 
-- (\CPU|PC|DOUT[3]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(5) & !\CPU|PC|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000001100001100000000110000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(5),
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	dataf => \CPU|PC|ALT_INV_DOUT\(0),
	combout => \ROM1|memROM~21_combout\);

-- Location: LABCELL_X36_Y5_N15
\ROM1|memROM~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~20_combout\ = ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(4) $ (\CPU|PC|DOUT[3]~DUPLICATE_q\))) ) ) # ( !\CPU|PC|DOUT\(5) & ( (\CPU|PC|DOUT\(4) & \CPU|PC|DOUT\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110100000010100001010000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \ROM1|memROM~20_combout\);

-- Location: LABCELL_X36_Y5_N18
\ROM1|memROM~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~23_combout\ = ( !\CPU|PC|DOUT\(7) & ( (\CPU|PC|DOUT\(4) & (\CPU|PC|DOUT[2]~DUPLICATE_q\ & !\CPU|PC|DOUT\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	dataf => \CPU|PC|ALT_INV_DOUT\(7),
	combout => \ROM1|memROM~23_combout\);

-- Location: LABCELL_X36_Y5_N12
\ROM1|memROM~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~22_combout\ = ( !\CPU|PC|DOUT\(7) & ( (!\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	dataf => \CPU|PC|ALT_INV_DOUT\(7),
	combout => \ROM1|memROM~22_combout\);

-- Location: LABCELL_X36_Y5_N36
\ROM1|memROM~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~24_combout\ = ( \ROM1|memROM~22_combout\ & ( (!\CPU|PC|DOUT[8]~DUPLICATE_q\ & (((\ROM1|memROM~21_combout\ & \ROM1|memROM~23_combout\)) # (\ROM1|memROM~20_combout\))) ) ) # ( !\ROM1|memROM~22_combout\ & ( (\ROM1|memROM~21_combout\ & 
-- (\ROM1|memROM~23_combout\ & !\CPU|PC|DOUT[8]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000110111000000000011011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~21_combout\,
	datab => \ROM1|ALT_INV_memROM~20_combout\,
	datac => \ROM1|ALT_INV_memROM~23_combout\,
	datad => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	dataf => \ROM1|ALT_INV_memROM~22_combout\,
	combout => \ROM1|memROM~24_combout\);

-- Location: MLABCELL_X37_Y5_N30
\ROM1|memROM~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~32_combout\ = ( \CPU|PC|DOUT\(3) & ( \CPU|PC|DOUT\(0) & ( (\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(2) $ (!\CPU|PC|DOUT[1]~DUPLICATE_q\)))) ) ) ) # ( !\CPU|PC|DOUT\(3) & ( \CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT\(2) & 
-- (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(6)))) # (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT[1]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(4) $ (!\CPU|PC|DOUT\(6))))) ) ) ) # ( \CPU|PC|DOUT\(3) & ( !\CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(6) 
-- & !\CPU|PC|DOUT[1]~DUPLICATE_q\))) # (\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(6) & ((!\CPU|PC|DOUT\(2)) # (!\CPU|PC|DOUT[1]~DUPLICATE_q\)))) ) ) ) # ( !\CPU|PC|DOUT\(3) & ( !\CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT\(4) & (\CPU|PC|DOUT\(6) & ((!\CPU|PC|DOUT\(2)) # 
-- (!\CPU|PC|DOUT[1]~DUPLICATE_q\)))) # (\CPU|PC|DOUT\(4) & (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(6) & \CPU|PC|DOUT[1]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000011000001110000010000010010100100000000001000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(2),
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datae => \CPU|PC|ALT_INV_DOUT\(3),
	dataf => \CPU|PC|ALT_INV_DOUT\(0),
	combout => \ROM1|memROM~32_combout\);

-- Location: LABCELL_X36_Y5_N6
\ROM1|memROM~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~31_combout\ = ( \CPU|PC|DOUT\(2) & ( \CPU|PC|DOUT[3]~DUPLICATE_q\ & ( (\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(1)) ) ) ) # ( !\CPU|PC|DOUT\(2) & ( \CPU|PC|DOUT[3]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(6) & (\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(0)))) # 
-- (\CPU|PC|DOUT\(6) & (((!\CPU|PC|DOUT\(0)) # (\CPU|PC|DOUT\(1))))) ) ) ) # ( \CPU|PC|DOUT\(2) & ( !\CPU|PC|DOUT[3]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(6) & (\CPU|PC|DOUT\(4))) # (\CPU|PC|DOUT\(6) & ((!\CPU|PC|DOUT\(1)))) ) ) ) # ( !\CPU|PC|DOUT\(2) & ( 
-- !\CPU|PC|DOUT[3]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(0) & (((\CPU|PC|DOUT\(4) & \CPU|PC|DOUT\(1))) # (\CPU|PC|DOUT\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001110000011101110100010001110000011100110011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(6),
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	datae => \CPU|PC|ALT_INV_DOUT\(2),
	dataf => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \ROM1|memROM~31_combout\);

-- Location: LABCELL_X36_Y5_N24
\ROM1|memROM~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~33_combout\ = ( \ROM1|memROM~31_combout\ & ( (!\CPU|PC|DOUT\(5)) # (\ROM1|memROM~32_combout\) ) ) # ( !\ROM1|memROM~31_combout\ & ( (\ROM1|memROM~32_combout\ & \CPU|PC|DOUT\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~32_combout\,
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	dataf => \ROM1|ALT_INV_memROM~31_combout\,
	combout => \ROM1|memROM~33_combout\);

-- Location: LABCELL_X36_Y5_N51
\ROM1|memROM~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~19_combout\ = ( \ROM1|memROM~33_combout\ & ( (!\CPU|PC|DOUT[8]~DUPLICATE_q\ & !\CPU|PC|DOUT\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(7),
	dataf => \ROM1|ALT_INV_memROM~33_combout\,
	combout => \ROM1|memROM~19_combout\);

-- Location: LABCELL_X40_Y5_N21
\memoriaDados|ram~761\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~761_combout\ = ( !\ROM1|memROM~55_combout\ & ( !\ROM1|memROM~19_combout\ & ( (\ROM1|memROM~12_combout\ & (!\ROM1|memROM~24_combout\ & (!\ROM1|memROM~13_combout\ & \ROM1|memROM~14_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~12_combout\,
	datab => \ROM1|ALT_INV_memROM~24_combout\,
	datac => \ROM1|ALT_INV_memROM~13_combout\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	datae => \ROM1|ALT_INV_memROM~55_combout\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \memoriaDados|ram~761_combout\);

-- Location: LABCELL_X35_Y6_N15
\memoriaDados|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|process_0~0_combout\ = ( \ROM1|memROM~54_combout\ & ( !\ROM1|memROM~8_combout\ & ( (!\ROM1|memROM~10_combout\ & ((\CPU|PC|DOUT\(7)) # (\CPU|PC|DOUT\(8)))) ) ) ) # ( !\ROM1|memROM~54_combout\ & ( !\ROM1|memROM~8_combout\ & ( 
-- !\ROM1|memROM~10_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010001010100010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~10_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \CPU|PC|ALT_INV_DOUT\(7),
	datae => \ROM1|ALT_INV_memROM~54_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \memoriaDados|process_0~0_combout\);

-- Location: LABCELL_X36_Y6_N18
\memoriaDados|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|process_0~1_combout\ = ( !\ROM1|memROM~18_combout\ & ( (\ROM1|memROM~16_combout\ & (\memoriaDados|process_0~0_combout\ & (\ROM1|memROM~17_combout\ & !\ROM1|memROM~15_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~16_combout\,
	datab => \memoriaDados|ALT_INV_process_0~0_combout\,
	datac => \ROM1|ALT_INV_memROM~17_combout\,
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~18_combout\,
	combout => \memoriaDados|process_0~1_combout\);

-- Location: LABCELL_X32_Y5_N54
\memoriaDados|ram~762\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~762_combout\ = ( \memoriaDados|process_0~1_combout\ & ( \memoriaDados|ram~761_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \memoriaDados|ALT_INV_ram~761_combout\,
	dataf => \memoriaDados|ALT_INV_process_0~1_combout\,
	combout => \memoriaDados|ram~762_combout\);

-- Location: FF_X32_Y5_N55
\memoriaDados|ram~294\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \memoriaDados|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~294_q\);

-- Location: LABCELL_X41_Y5_N39
\memoriaDados|ram~769\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~769_combout\ = ( !\ROM1|memROM~19_combout\ & ( \ROM1|memROM~12_combout\ & ( (!\ROM1|memROM~13_combout\ & (!\ROM1|memROM~55_combout\ & (\ROM1|memROM~14_combout\ & \ROM1|memROM~24_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \ROM1|ALT_INV_memROM~55_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \ROM1|ALT_INV_memROM~24_combout\,
	datae => \ROM1|ALT_INV_memROM~19_combout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \memoriaDados|ram~769_combout\);

-- Location: LABCELL_X41_Y5_N42
\memoriaDados|ram~770\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~770_combout\ = ( \memoriaDados|process_0~1_combout\ & ( \memoriaDados|ram~769_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \memoriaDados|ALT_INV_ram~769_combout\,
	dataf => \memoriaDados|ALT_INV_process_0~1_combout\,
	combout => \memoriaDados|ram~770_combout\);

-- Location: FF_X40_Y6_N25
\memoriaDados|ram~422\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \memoriaDados|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~422_q\);

-- Location: MLABCELL_X37_Y8_N18
\memoriaDados|ram~765\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~765_combout\ = ( \ROM1|memROM~13_combout\ & ( !\ROM1|memROM~19_combout\ & ( (\ROM1|memROM~12_combout\ & (!\ROM1|memROM~55_combout\ & (!\ROM1|memROM~24_combout\ & \ROM1|memROM~14_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~12_combout\,
	datab => \ROM1|ALT_INV_memROM~55_combout\,
	datac => \ROM1|ALT_INV_memROM~24_combout\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \memoriaDados|ram~765_combout\);

-- Location: LABCELL_X32_Y6_N42
\memoriaDados|ram~766\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~766_combout\ = ( \memoriaDados|ram~765_combout\ & ( \memoriaDados|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \memoriaDados|ALT_INV_process_0~1_combout\,
	dataf => \memoriaDados|ALT_INV_ram~765_combout\,
	combout => \memoriaDados|ram~766_combout\);

-- Location: FF_X32_Y5_N22
\memoriaDados|ram~302\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \memoriaDados|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~302_q\);

-- Location: LABCELL_X41_Y5_N27
\memoriaDados|ram~773\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~773_combout\ = ( !\ROM1|memROM~19_combout\ & ( \ROM1|memROM~24_combout\ & ( (\ROM1|memROM~14_combout\ & (\ROM1|memROM~12_combout\ & (!\ROM1|memROM~55_combout\ & \ROM1|memROM~13_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~14_combout\,
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	datac => \ROM1|ALT_INV_memROM~55_combout\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	datae => \ROM1|ALT_INV_memROM~19_combout\,
	dataf => \ROM1|ALT_INV_memROM~24_combout\,
	combout => \memoriaDados|ram~773_combout\);

-- Location: LABCELL_X41_Y5_N0
\memoriaDados|ram~774\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~774_combout\ = ( \memoriaDados|ram~773_combout\ & ( \memoriaDados|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \memoriaDados|ALT_INV_ram~773_combout\,
	dataf => \memoriaDados|ALT_INV_process_0~1_combout\,
	combout => \memoriaDados|ram~774_combout\);

-- Location: FF_X32_Y2_N50
\memoriaDados|ram~430\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \memoriaDados|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~430_q\);

-- Location: LABCELL_X32_Y2_N48
\memoriaDados|ram~689\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~689_combout\ = ( \memoriaDados|ram~430_q\ & ( \ROM1|memROM~13_combout\ & ( (\memoriaDados|ram~302_q\) # (\ROM1|memROM~24_combout\) ) ) ) # ( !\memoriaDados|ram~430_q\ & ( \ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~24_combout\ & 
-- \memoriaDados|ram~302_q\) ) ) ) # ( \memoriaDados|ram~430_q\ & ( !\ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~24_combout\ & (\memoriaDados|ram~294_q\)) # (\ROM1|memROM~24_combout\ & ((\memoriaDados|ram~422_q\))) ) ) ) # ( !\memoriaDados|ram~430_q\ & ( 
-- !\ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~24_combout\ & (\memoriaDados|ram~294_q\)) # (\ROM1|memROM~24_combout\ & ((\memoriaDados|ram~422_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~294_q\,
	datab => \memoriaDados|ALT_INV_ram~422_q\,
	datac => \ROM1|ALT_INV_memROM~24_combout\,
	datad => \memoriaDados|ALT_INV_ram~302_q\,
	datae => \memoriaDados|ALT_INV_ram~430_q\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \memoriaDados|ram~689_combout\);

-- Location: LABCELL_X40_Y4_N27
\memoriaDados|ram~785\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~785_combout\ = ( \ROM1|memROM~19_combout\ & ( !\ROM1|memROM~13_combout\ & ( (\ROM1|memROM~24_combout\ & (\ROM1|memROM~14_combout\ & (\ROM1|memROM~12_combout\ & !\ROM1|memROM~55_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~24_combout\,
	datab => \ROM1|ALT_INV_memROM~14_combout\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \ROM1|ALT_INV_memROM~55_combout\,
	datae => \ROM1|ALT_INV_memROM~19_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \memoriaDados|ram~785_combout\);

-- Location: LABCELL_X40_Y4_N15
\memoriaDados|ram~786\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~786_combout\ = ( \memoriaDados|ram~785_combout\ & ( \memoriaDados|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \memoriaDados|ALT_INV_ram~785_combout\,
	dataf => \memoriaDados|ALT_INV_process_0~1_combout\,
	combout => \memoriaDados|ram~786_combout\);

-- Location: FF_X39_Y5_N49
\memoriaDados|ram~486\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \memoriaDados|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~486_q\);

-- Location: LABCELL_X31_Y6_N21
\memoriaDados|ram~781\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~781_combout\ = ( \ROM1|memROM~13_combout\ & ( \ROM1|memROM~14_combout\ & ( (!\ROM1|memROM~24_combout\ & (\ROM1|memROM~19_combout\ & (\ROM1|memROM~12_combout\ & !\ROM1|memROM~55_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~24_combout\,
	datab => \ROM1|ALT_INV_memROM~19_combout\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \ROM1|ALT_INV_memROM~55_combout\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \memoriaDados|ram~781_combout\);

-- Location: LABCELL_X31_Y6_N12
\memoriaDados|ram~782\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~782_combout\ = ( \memoriaDados|ram~781_combout\ & ( \memoriaDados|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \memoriaDados|ALT_INV_ram~781_combout\,
	dataf => \memoriaDados|ALT_INV_process_0~1_combout\,
	combout => \memoriaDados|ram~782_combout\);

-- Location: FF_X31_Y6_N55
\memoriaDados|ram~366\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \memoriaDados|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~366_q\);

-- Location: LABCELL_X41_Y5_N30
\memoriaDados|ram~777\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~777_combout\ = ( \ROM1|memROM~19_combout\ & ( !\ROM1|memROM~24_combout\ & ( (!\ROM1|memROM~13_combout\ & (\ROM1|memROM~12_combout\ & (\ROM1|memROM~14_combout\ & !\ROM1|memROM~55_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \ROM1|ALT_INV_memROM~55_combout\,
	datae => \ROM1|ALT_INV_memROM~19_combout\,
	dataf => \ROM1|ALT_INV_memROM~24_combout\,
	combout => \memoriaDados|ram~777_combout\);

-- Location: LABCELL_X35_Y3_N12
\memoriaDados|ram~778\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~778_combout\ = ( \memoriaDados|process_0~1_combout\ & ( \memoriaDados|ram~777_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \memoriaDados|ALT_INV_process_0~1_combout\,
	dataf => \memoriaDados|ALT_INV_ram~777_combout\,
	combout => \memoriaDados|ram~778_combout\);

-- Location: FF_X34_Y2_N53
\memoriaDados|ram~358\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \memoriaDados|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~358_q\);

-- Location: LABCELL_X40_Y5_N45
\memoriaDados|ram~789\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~789_combout\ = ( !\ROM1|memROM~55_combout\ & ( \ROM1|memROM~13_combout\ & ( (\ROM1|memROM~19_combout\ & (\ROM1|memROM~12_combout\ & (\ROM1|memROM~24_combout\ & \ROM1|memROM~14_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~19_combout\,
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	datac => \ROM1|ALT_INV_memROM~24_combout\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	datae => \ROM1|ALT_INV_memROM~55_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \memoriaDados|ram~789_combout\);

-- Location: LABCELL_X31_Y5_N36
\memoriaDados|ram~790\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~790_combout\ = ( \memoriaDados|ram~789_combout\ & ( \memoriaDados|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \memoriaDados|ALT_INV_ram~789_combout\,
	dataf => \memoriaDados|ALT_INV_process_0~1_combout\,
	combout => \memoriaDados|ram~790_combout\);

-- Location: FF_X32_Y2_N32
\memoriaDados|ram~494\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \memoriaDados|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~494_q\);

-- Location: LABCELL_X32_Y2_N30
\memoriaDados|ram~691\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~691_combout\ = ( \memoriaDados|ram~494_q\ & ( \ROM1|memROM~13_combout\ & ( (\memoriaDados|ram~366_q\) # (\ROM1|memROM~24_combout\) ) ) ) # ( !\memoriaDados|ram~494_q\ & ( \ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~24_combout\ & 
-- \memoriaDados|ram~366_q\) ) ) ) # ( \memoriaDados|ram~494_q\ & ( !\ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~24_combout\ & ((\memoriaDados|ram~358_q\))) # (\ROM1|memROM~24_combout\ & (\memoriaDados|ram~486_q\)) ) ) ) # ( !\memoriaDados|ram~494_q\ & ( 
-- !\ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~24_combout\ & ((\memoriaDados|ram~358_q\))) # (\ROM1|memROM~24_combout\ & (\memoriaDados|ram~486_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000100011101110100001100000011000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~486_q\,
	datab => \ROM1|ALT_INV_memROM~24_combout\,
	datac => \memoriaDados|ALT_INV_ram~366_q\,
	datad => \memoriaDados|ALT_INV_ram~358_q\,
	datae => \memoriaDados|ALT_INV_ram~494_q\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \memoriaDados|ram~691_combout\);

-- Location: MLABCELL_X34_Y7_N24
\memoriaDados|ram~454feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~454feeder_combout\ = ( \CPU|REG1|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(7),
	combout => \memoriaDados|ram~454feeder_combout\);

-- Location: MLABCELL_X34_Y7_N45
\memoriaDados|ram~797\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~797_combout\ = ( \ROM1|memROM~24_combout\ & ( !\ROM1|memROM~13_combout\ & ( (\ROM1|memROM~12_combout\ & (\ROM1|memROM~14_combout\ & (!\ROM1|memROM~19_combout\ & \ROM1|memROM~55_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~12_combout\,
	datab => \ROM1|ALT_INV_memROM~14_combout\,
	datac => \ROM1|ALT_INV_memROM~19_combout\,
	datad => \ROM1|ALT_INV_memROM~55_combout\,
	datae => \ROM1|ALT_INV_memROM~24_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \memoriaDados|ram~797_combout\);

-- Location: LABCELL_X35_Y7_N48
\memoriaDados|ram~798\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~798_combout\ = ( \memoriaDados|process_0~1_combout\ & ( \memoriaDados|ram~797_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \memoriaDados|ALT_INV_process_0~1_combout\,
	dataf => \memoriaDados|ALT_INV_ram~797_combout\,
	combout => \memoriaDados|ram~798_combout\);

-- Location: FF_X34_Y7_N26
\memoriaDados|ram~454\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~454feeder_combout\,
	ena => \memoriaDados|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~454_q\);

-- Location: LABCELL_X36_Y7_N0
\memoriaDados|ram~801\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~801_combout\ = ( \ROM1|memROM~55_combout\ & ( \ROM1|memROM~13_combout\ & ( (\ROM1|memROM~12_combout\ & (!\ROM1|memROM~19_combout\ & (!\ROM1|memROM~24_combout\ & \ROM1|memROM~14_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~12_combout\,
	datab => \ROM1|ALT_INV_memROM~19_combout\,
	datac => \ROM1|ALT_INV_memROM~24_combout\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	datae => \ROM1|ALT_INV_memROM~55_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \memoriaDados|ram~801_combout\);

-- Location: LABCELL_X36_Y7_N12
\memoriaDados|ram~802\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~802_combout\ = ( \memoriaDados|process_0~1_combout\ & ( \memoriaDados|ram~801_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \memoriaDados|ALT_INV_ram~801_combout\,
	dataf => \memoriaDados|ALT_INV_process_0~1_combout\,
	combout => \memoriaDados|ram~802_combout\);

-- Location: FF_X36_Y7_N34
\memoriaDados|ram~334\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \memoriaDados|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~334_q\);

-- Location: LABCELL_X32_Y5_N33
\memoriaDados|ram~793\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~793_combout\ = ( \ROM1|memROM~55_combout\ & ( !\ROM1|memROM~13_combout\ & ( (\ROM1|memROM~14_combout\ & (!\ROM1|memROM~19_combout\ & (!\ROM1|memROM~24_combout\ & \ROM1|memROM~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~14_combout\,
	datab => \ROM1|ALT_INV_memROM~19_combout\,
	datac => \ROM1|ALT_INV_memROM~24_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \ROM1|ALT_INV_memROM~55_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \memoriaDados|ram~793_combout\);

-- Location: LABCELL_X36_Y7_N54
\memoriaDados|ram~794\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~794_combout\ = ( \memoriaDados|process_0~1_combout\ & ( \memoriaDados|ram~793_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \memoriaDados|ALT_INV_ram~793_combout\,
	dataf => \memoriaDados|ALT_INV_process_0~1_combout\,
	combout => \memoriaDados|ram~794_combout\);

-- Location: FF_X36_Y7_N47
\memoriaDados|ram~326\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \memoriaDados|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~326_q\);

-- Location: LABCELL_X36_Y2_N12
\memoriaDados|ram~805\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~805_combout\ = ( \ROM1|memROM~55_combout\ & ( \ROM1|memROM~13_combout\ & ( (\ROM1|memROM~12_combout\ & (\ROM1|memROM~24_combout\ & (\ROM1|memROM~14_combout\ & !\ROM1|memROM~19_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~12_combout\,
	datab => \ROM1|ALT_INV_memROM~24_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \ROM1|ALT_INV_memROM~19_combout\,
	datae => \ROM1|ALT_INV_memROM~55_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \memoriaDados|ram~805_combout\);

-- Location: MLABCELL_X37_Y1_N33
\memoriaDados|ram~806\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~806_combout\ = ( \memoriaDados|process_0~1_combout\ & ( \memoriaDados|ram~805_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \memoriaDados|ALT_INV_ram~805_combout\,
	dataf => \memoriaDados|ALT_INV_process_0~1_combout\,
	combout => \memoriaDados|ram~806_combout\);

-- Location: FF_X32_Y2_N56
\memoriaDados|ram~462\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \memoriaDados|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~462_q\);

-- Location: LABCELL_X32_Y2_N54
\memoriaDados|ram~690\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~690_combout\ = ( \memoriaDados|ram~462_q\ & ( \ROM1|memROM~13_combout\ & ( (\ROM1|memROM~24_combout\) # (\memoriaDados|ram~334_q\) ) ) ) # ( !\memoriaDados|ram~462_q\ & ( \ROM1|memROM~13_combout\ & ( (\memoriaDados|ram~334_q\ & 
-- !\ROM1|memROM~24_combout\) ) ) ) # ( \memoriaDados|ram~462_q\ & ( !\ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~24_combout\ & ((\memoriaDados|ram~326_q\))) # (\ROM1|memROM~24_combout\ & (\memoriaDados|ram~454_q\)) ) ) ) # ( !\memoriaDados|ram~462_q\ & ( 
-- !\ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~24_combout\ & ((\memoriaDados|ram~326_q\))) # (\ROM1|memROM~24_combout\ & (\memoriaDados|ram~454_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~454_q\,
	datab => \memoriaDados|ALT_INV_ram~334_q\,
	datac => \memoriaDados|ALT_INV_ram~326_q\,
	datad => \ROM1|ALT_INV_memROM~24_combout\,
	datae => \memoriaDados|ALT_INV_ram~462_q\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \memoriaDados|ram~690_combout\);

-- Location: MLABCELL_X34_Y1_N54
\memoriaDados|ram~821\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~821_combout\ = ( \ROM1|memROM~55_combout\ & ( \ROM1|memROM~12_combout\ & ( (\ROM1|memROM~14_combout\ & (\ROM1|memROM~19_combout\ & (\ROM1|memROM~24_combout\ & \ROM1|memROM~13_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~14_combout\,
	datab => \ROM1|ALT_INV_memROM~19_combout\,
	datac => \ROM1|ALT_INV_memROM~24_combout\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	datae => \ROM1|ALT_INV_memROM~55_combout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \memoriaDados|ram~821_combout\);

-- Location: MLABCELL_X34_Y1_N27
\memoriaDados|ram~822\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~822_combout\ = ( \memoriaDados|ram~821_combout\ & ( \memoriaDados|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \memoriaDados|ALT_INV_ram~821_combout\,
	dataf => \memoriaDados|ALT_INV_process_0~1_combout\,
	combout => \memoriaDados|ram~822_combout\);

-- Location: FF_X31_Y1_N16
\memoriaDados|ram~526\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \memoriaDados|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~526_q\);

-- Location: MLABCELL_X34_Y1_N42
\memoriaDados|ram~809\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~809_combout\ = ( \ROM1|memROM~55_combout\ & ( !\ROM1|memROM~13_combout\ & ( (\ROM1|memROM~12_combout\ & (\ROM1|memROM~14_combout\ & (!\ROM1|memROM~24_combout\ & \ROM1|memROM~19_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~12_combout\,
	datab => \ROM1|ALT_INV_memROM~14_combout\,
	datac => \ROM1|ALT_INV_memROM~24_combout\,
	datad => \ROM1|ALT_INV_memROM~19_combout\,
	datae => \ROM1|ALT_INV_memROM~55_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \memoriaDados|ram~809_combout\);

-- Location: MLABCELL_X34_Y1_N15
\memoriaDados|ram~810\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~810_combout\ = ( \memoriaDados|process_0~1_combout\ & ( \memoriaDados|ram~809_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \memoriaDados|ALT_INV_ram~809_combout\,
	dataf => \memoriaDados|ALT_INV_process_0~1_combout\,
	combout => \memoriaDados|ram~810_combout\);

-- Location: FF_X35_Y3_N35
\memoriaDados|ram~390\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \memoriaDados|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~390_q\);

-- Location: LABCELL_X29_Y1_N27
\memoriaDados|ram~518feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~518feeder_combout\ = ( \CPU|REG1|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(7),
	combout => \memoriaDados|ram~518feeder_combout\);

-- Location: LABCELL_X29_Y4_N6
\memoriaDados|ram~813\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~813_combout\ = ( \ROM1|memROM~24_combout\ & ( \ROM1|memROM~19_combout\ & ( (\ROM1|memROM~12_combout\ & (!\ROM1|memROM~13_combout\ & (\ROM1|memROM~14_combout\ & \ROM1|memROM~55_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~12_combout\,
	datab => \ROM1|ALT_INV_memROM~13_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \ROM1|ALT_INV_memROM~55_combout\,
	datae => \ROM1|ALT_INV_memROM~24_combout\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \memoriaDados|ram~813_combout\);

-- Location: LABCELL_X29_Y4_N21
\memoriaDados|ram~814\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~814_combout\ = ( \memoriaDados|process_0~1_combout\ & ( \memoriaDados|ram~813_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \memoriaDados|ALT_INV_ram~813_combout\,
	dataf => \memoriaDados|ALT_INV_process_0~1_combout\,
	combout => \memoriaDados|ram~814_combout\);

-- Location: FF_X29_Y1_N28
\memoriaDados|ram~518\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~518feeder_combout\,
	ena => \memoriaDados|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~518_q\);

-- Location: LABCELL_X31_Y2_N24
\memoriaDados|ram~817\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~817_combout\ = ( \ROM1|memROM~19_combout\ & ( \ROM1|memROM~13_combout\ & ( (\ROM1|memROM~14_combout\ & (\ROM1|memROM~12_combout\ & (\ROM1|memROM~55_combout\ & !\ROM1|memROM~24_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~14_combout\,
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	datac => \ROM1|ALT_INV_memROM~55_combout\,
	datad => \ROM1|ALT_INV_memROM~24_combout\,
	datae => \ROM1|ALT_INV_memROM~19_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \memoriaDados|ram~817_combout\);

-- Location: LABCELL_X31_Y2_N12
\memoriaDados|ram~818\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~818_combout\ = ( \memoriaDados|process_0~1_combout\ & ( \memoriaDados|ram~817_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \memoriaDados|ALT_INV_ram~817_combout\,
	dataf => \memoriaDados|ALT_INV_process_0~1_combout\,
	combout => \memoriaDados|ram~818_combout\);

-- Location: FF_X31_Y1_N2
\memoriaDados|ram~398\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \memoriaDados|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~398_q\);

-- Location: LABCELL_X31_Y1_N0
\memoriaDados|ram~692\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~692_combout\ = ( \memoriaDados|ram~398_q\ & ( \ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~24_combout\) # (\memoriaDados|ram~526_q\) ) ) ) # ( !\memoriaDados|ram~398_q\ & ( \ROM1|memROM~13_combout\ & ( (\memoriaDados|ram~526_q\ & 
-- \ROM1|memROM~24_combout\) ) ) ) # ( \memoriaDados|ram~398_q\ & ( !\ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~24_combout\ & (\memoriaDados|ram~390_q\)) # (\ROM1|memROM~24_combout\ & ((\memoriaDados|ram~518_q\))) ) ) ) # ( !\memoriaDados|ram~398_q\ & ( 
-- !\ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~24_combout\ & (\memoriaDados|ram~390_q\)) # (\ROM1|memROM~24_combout\ & ((\memoriaDados|ram~518_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111100000101000001011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~526_q\,
	datab => \memoriaDados|ALT_INV_ram~390_q\,
	datac => \ROM1|ALT_INV_memROM~24_combout\,
	datad => \memoriaDados|ALT_INV_ram~518_q\,
	datae => \memoriaDados|ALT_INV_ram~398_q\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \memoriaDados|ram~692_combout\);

-- Location: LABCELL_X32_Y2_N0
\memoriaDados|ram~693\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~693_combout\ = ( \memoriaDados|ram~690_combout\ & ( \memoriaDados|ram~692_combout\ & ( ((!\ROM1|memROM~19_combout\ & (\memoriaDados|ram~689_combout\)) # (\ROM1|memROM~19_combout\ & ((\memoriaDados|ram~691_combout\)))) # 
-- (\ROM1|memROM~55_combout\) ) ) ) # ( !\memoriaDados|ram~690_combout\ & ( \memoriaDados|ram~692_combout\ & ( (!\ROM1|memROM~55_combout\ & ((!\ROM1|memROM~19_combout\ & (\memoriaDados|ram~689_combout\)) # (\ROM1|memROM~19_combout\ & 
-- ((\memoriaDados|ram~691_combout\))))) # (\ROM1|memROM~55_combout\ & (((\ROM1|memROM~19_combout\)))) ) ) ) # ( \memoriaDados|ram~690_combout\ & ( !\memoriaDados|ram~692_combout\ & ( (!\ROM1|memROM~55_combout\ & ((!\ROM1|memROM~19_combout\ & 
-- (\memoriaDados|ram~689_combout\)) # (\ROM1|memROM~19_combout\ & ((\memoriaDados|ram~691_combout\))))) # (\ROM1|memROM~55_combout\ & (((!\ROM1|memROM~19_combout\)))) ) ) ) # ( !\memoriaDados|ram~690_combout\ & ( !\memoriaDados|ram~692_combout\ & ( 
-- (!\ROM1|memROM~55_combout\ & ((!\ROM1|memROM~19_combout\ & (\memoriaDados|ram~689_combout\)) # (\ROM1|memROM~19_combout\ & ((\memoriaDados|ram~691_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001001100011100000111110001000011010011110111001101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~689_combout\,
	datab => \ROM1|ALT_INV_memROM~55_combout\,
	datac => \ROM1|ALT_INV_memROM~19_combout\,
	datad => \memoriaDados|ALT_INV_ram~691_combout\,
	datae => \memoriaDados|ALT_INV_ram~690_combout\,
	dataf => \memoriaDados|ALT_INV_ram~692_combout\,
	combout => \memoriaDados|ram~693_combout\);

-- Location: LABCELL_X39_Y4_N21
\memoriaDados|ram~721\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~721_combout\ = ( \ROM1|memROM~12_combout\ & ( !\ROM1|memROM~55_combout\ & ( (\ROM1|memROM~24_combout\ & (!\ROM1|memROM~13_combout\ & (\ROM1|memROM~19_combout\ & !\ROM1|memROM~14_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~24_combout\,
	datab => \ROM1|ALT_INV_memROM~13_combout\,
	datac => \ROM1|ALT_INV_memROM~19_combout\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~55_combout\,
	combout => \memoriaDados|ram~721_combout\);

-- Location: LABCELL_X36_Y4_N24
\memoriaDados|ram~722\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~722_combout\ = ( \memoriaDados|process_0~1_combout\ & ( \memoriaDados|ram~721_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \memoriaDados|ALT_INV_ram~721_combout\,
	dataf => \memoriaDados|ALT_INV_process_0~1_combout\,
	combout => \memoriaDados|ram~722_combout\);

-- Location: FF_X36_Y4_N50
\memoriaDados|ram~470\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \memoriaDados|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~470_q\);

-- Location: LABCELL_X31_Y5_N24
\memoriaDados|ram~705\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~705_combout\ = ( !\ROM1|memROM~14_combout\ & ( !\ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~55_combout\ & (!\ROM1|memROM~19_combout\ & (\ROM1|memROM~24_combout\ & \ROM1|memROM~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~55_combout\,
	datab => \ROM1|ALT_INV_memROM~19_combout\,
	datac => \ROM1|ALT_INV_memROM~24_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \memoriaDados|ram~705_combout\);

-- Location: MLABCELL_X37_Y5_N6
\memoriaDados|ram~706\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~706_combout\ = ( \memoriaDados|process_0~1_combout\ & ( \memoriaDados|ram~705_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \memoriaDados|ALT_INV_ram~705_combout\,
	dataf => \memoriaDados|ALT_INV_process_0~1_combout\,
	combout => \memoriaDados|ram~706_combout\);

-- Location: FF_X37_Y6_N25
\memoriaDados|ram~406\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \memoriaDados|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~406_q\);

-- Location: LABCELL_X39_Y3_N24
\memoriaDados|ram~737\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~737_combout\ = ( \ROM1|memROM~24_combout\ & ( \ROM1|memROM~55_combout\ & ( (!\ROM1|memROM~13_combout\ & (!\ROM1|memROM~14_combout\ & (\ROM1|memROM~12_combout\ & !\ROM1|memROM~19_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \ROM1|ALT_INV_memROM~14_combout\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \ROM1|ALT_INV_memROM~19_combout\,
	datae => \ROM1|ALT_INV_memROM~24_combout\,
	dataf => \ROM1|ALT_INV_memROM~55_combout\,
	combout => \memoriaDados|ram~737_combout\);

-- Location: LABCELL_X39_Y3_N12
\memoriaDados|ram~738\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~738_combout\ = ( \memoriaDados|process_0~1_combout\ & ( \memoriaDados|ram~737_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \memoriaDados|ALT_INV_process_0~1_combout\,
	dataf => \memoriaDados|ALT_INV_ram~737_combout\,
	combout => \memoriaDados|ram~738_combout\);

-- Location: FF_X36_Y4_N32
\memoriaDados|ram~438\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \memoriaDados|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~438_q\);

-- Location: MLABCELL_X37_Y8_N27
\memoriaDados|ram~753\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~753_combout\ = ( !\ROM1|memROM~14_combout\ & ( \ROM1|memROM~19_combout\ & ( (!\ROM1|memROM~13_combout\ & (\ROM1|memROM~55_combout\ & (\ROM1|memROM~12_combout\ & \ROM1|memROM~24_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \ROM1|ALT_INV_memROM~55_combout\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \ROM1|ALT_INV_memROM~24_combout\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \memoriaDados|ram~753_combout\);

-- Location: MLABCELL_X37_Y8_N54
\memoriaDados|ram~754\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~754_combout\ = ( \memoriaDados|ram~753_combout\ & ( \memoriaDados|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \memoriaDados|ALT_INV_ram~753_combout\,
	dataf => \memoriaDados|ALT_INV_process_0~1_combout\,
	combout => \memoriaDados|ram~754_combout\);

-- Location: FF_X36_Y4_N20
\memoriaDados|ram~502\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \memoriaDados|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~502_q\);

-- Location: LABCELL_X36_Y4_N18
\memoriaDados|ram~686\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~686_combout\ = ( \memoriaDados|ram~502_q\ & ( \ROM1|memROM~19_combout\ & ( (\ROM1|memROM~55_combout\) # (\memoriaDados|ram~470_q\) ) ) ) # ( !\memoriaDados|ram~502_q\ & ( \ROM1|memROM~19_combout\ & ( (\memoriaDados|ram~470_q\ & 
-- !\ROM1|memROM~55_combout\) ) ) ) # ( \memoriaDados|ram~502_q\ & ( !\ROM1|memROM~19_combout\ & ( (!\ROM1|memROM~55_combout\ & (\memoriaDados|ram~406_q\)) # (\ROM1|memROM~55_combout\ & ((\memoriaDados|ram~438_q\))) ) ) ) # ( !\memoriaDados|ram~502_q\ & ( 
-- !\ROM1|memROM~19_combout\ & ( (!\ROM1|memROM~55_combout\ & (\memoriaDados|ram~406_q\)) # (\ROM1|memROM~55_combout\ & ((\memoriaDados|ram~438_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111101000100010001000111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~470_q\,
	datab => \ROM1|ALT_INV_memROM~55_combout\,
	datac => \memoriaDados|ALT_INV_ram~406_q\,
	datad => \memoriaDados|ALT_INV_ram~438_q\,
	datae => \memoriaDados|ALT_INV_ram~502_q\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \memoriaDados|ram~686_combout\);

-- Location: LABCELL_X31_Y3_N3
\memoriaDados|ram~701\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~701_combout\ = ( !\ROM1|memROM~24_combout\ & ( \ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~14_combout\ & (!\ROM1|memROM~19_combout\ & (!\ROM1|memROM~55_combout\ & \ROM1|memROM~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~14_combout\,
	datab => \ROM1|ALT_INV_memROM~19_combout\,
	datac => \ROM1|ALT_INV_memROM~55_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \ROM1|ALT_INV_memROM~24_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \memoriaDados|ram~701_combout\);

-- Location: LABCELL_X31_Y3_N21
\memoriaDados|ram~702\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~702_combout\ = ( \memoriaDados|process_0~1_combout\ & ( \memoriaDados|ram~701_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~701_combout\,
	dataf => \memoriaDados|ALT_INV_process_0~1_combout\,
	combout => \memoriaDados|ram~702_combout\);

-- Location: FF_X31_Y3_N23
\memoriaDados|ram~286\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \memoriaDados|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~286_q\);

-- Location: LABCELL_X32_Y6_N12
\memoriaDados|ram~733\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~733_combout\ = ( \ROM1|memROM~13_combout\ & ( \ROM1|memROM~12_combout\ & ( (!\ROM1|memROM~14_combout\ & (!\ROM1|memROM~24_combout\ & (\ROM1|memROM~55_combout\ & !\ROM1|memROM~19_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~14_combout\,
	datab => \ROM1|ALT_INV_memROM~24_combout\,
	datac => \ROM1|ALT_INV_memROM~55_combout\,
	datad => \ROM1|ALT_INV_memROM~19_combout\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \memoriaDados|ram~733_combout\);

-- Location: LABCELL_X32_Y6_N18
\memoriaDados|ram~734\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~734_combout\ = ( \memoriaDados|process_0~1_combout\ & ( \memoriaDados|ram~733_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \memoriaDados|ALT_INV_ram~733_combout\,
	dataf => \memoriaDados|ALT_INV_process_0~1_combout\,
	combout => \memoriaDados|ram~734_combout\);

-- Location: FF_X34_Y5_N41
\memoriaDados|ram~318\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \memoriaDados|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~318_q\);

-- Location: LABCELL_X32_Y6_N6
\memoriaDados|ram~749\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~749_combout\ = ( \ROM1|memROM~13_combout\ & ( \ROM1|memROM~12_combout\ & ( (!\ROM1|memROM~14_combout\ & (!\ROM1|memROM~24_combout\ & (\ROM1|memROM~55_combout\ & \ROM1|memROM~19_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~14_combout\,
	datab => \ROM1|ALT_INV_memROM~24_combout\,
	datac => \ROM1|ALT_INV_memROM~55_combout\,
	datad => \ROM1|ALT_INV_memROM~19_combout\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \memoriaDados|ram~749_combout\);

-- Location: LABCELL_X32_Y3_N21
\memoriaDados|ram~750\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~750_combout\ = ( \memoriaDados|ram~749_combout\ & ( \memoriaDados|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \memoriaDados|ALT_INV_ram~749_combout\,
	dataf => \memoriaDados|ALT_INV_process_0~1_combout\,
	combout => \memoriaDados|ram~750_combout\);

-- Location: FF_X34_Y5_N2
\memoriaDados|ram~382\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \memoriaDados|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~382_q\);

-- Location: MLABCELL_X34_Y1_N48
\memoriaDados|ram~717\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~717_combout\ = ( !\ROM1|memROM~55_combout\ & ( \ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~24_combout\ & (!\ROM1|memROM~14_combout\ & (\ROM1|memROM~12_combout\ & \ROM1|memROM~19_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~24_combout\,
	datab => \ROM1|ALT_INV_memROM~14_combout\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \ROM1|ALT_INV_memROM~19_combout\,
	datae => \ROM1|ALT_INV_memROM~55_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \memoriaDados|ram~717_combout\);

-- Location: MLABCELL_X34_Y1_N9
\memoriaDados|ram~718\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~718_combout\ = ( \memoriaDados|ram~717_combout\ & ( \memoriaDados|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \memoriaDados|ALT_INV_ram~717_combout\,
	dataf => \memoriaDados|ALT_INV_process_0~1_combout\,
	combout => \memoriaDados|ram~718_combout\);

-- Location: FF_X34_Y4_N35
\memoriaDados|ram~350\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \memoriaDados|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~350_q\);

-- Location: LABCELL_X32_Y2_N21
\memoriaDados|ram~685\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~685_combout\ = ( \ROM1|memROM~19_combout\ & ( \ROM1|memROM~55_combout\ & ( \memoriaDados|ram~382_q\ ) ) ) # ( !\ROM1|memROM~19_combout\ & ( \ROM1|memROM~55_combout\ & ( \memoriaDados|ram~318_q\ ) ) ) # ( \ROM1|memROM~19_combout\ & ( 
-- !\ROM1|memROM~55_combout\ & ( \memoriaDados|ram~350_q\ ) ) ) # ( !\ROM1|memROM~19_combout\ & ( !\ROM1|memROM~55_combout\ & ( \memoriaDados|ram~286_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~286_q\,
	datab => \memoriaDados|ALT_INV_ram~318_q\,
	datac => \memoriaDados|ALT_INV_ram~382_q\,
	datad => \memoriaDados|ALT_INV_ram~350_q\,
	datae => \ROM1|ALT_INV_memROM~19_combout\,
	dataf => \ROM1|ALT_INV_memROM~55_combout\,
	combout => \memoriaDados|ram~685_combout\);

-- Location: LABCELL_X31_Y2_N48
\memoriaDados|ram~278feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~278feeder_combout\ = ( \CPU|REG1|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(7),
	combout => \memoriaDados|ram~278feeder_combout\);

-- Location: LABCELL_X31_Y5_N12
\memoriaDados|ram~697\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~697_combout\ = ( !\ROM1|memROM~14_combout\ & ( !\ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~55_combout\ & (!\ROM1|memROM~19_combout\ & (!\ROM1|memROM~24_combout\ & \ROM1|memROM~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~55_combout\,
	datab => \ROM1|ALT_INV_memROM~19_combout\,
	datac => \ROM1|ALT_INV_memROM~24_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \memoriaDados|ram~697_combout\);

-- Location: LABCELL_X31_Y5_N57
\memoriaDados|ram~698\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~698_combout\ = ( \memoriaDados|process_0~1_combout\ & ( \memoriaDados|ram~697_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \memoriaDados|ALT_INV_ram~697_combout\,
	dataf => \memoriaDados|ALT_INV_process_0~1_combout\,
	combout => \memoriaDados|ram~698_combout\);

-- Location: FF_X31_Y2_N49
\memoriaDados|ram~278\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~278feeder_combout\,
	ena => \memoriaDados|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~278_q\);

-- Location: LABCELL_X31_Y2_N57
\memoriaDados|ram~745\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~745_combout\ = ( \ROM1|memROM~12_combout\ & ( !\ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~14_combout\ & (!\ROM1|memROM~24_combout\ & (\ROM1|memROM~19_combout\ & \ROM1|memROM~55_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~14_combout\,
	datab => \ROM1|ALT_INV_memROM~24_combout\,
	datac => \ROM1|ALT_INV_memROM~19_combout\,
	datad => \ROM1|ALT_INV_memROM~55_combout\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \memoriaDados|ram~745_combout\);

-- Location: LABCELL_X32_Y3_N39
\memoriaDados|ram~746\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~746_combout\ = ( \memoriaDados|ram~745_combout\ & ( \memoriaDados|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \memoriaDados|ALT_INV_process_0~1_combout\,
	dataf => \memoriaDados|ALT_INV_ram~745_combout\,
	combout => \memoriaDados|ram~746_combout\);

-- Location: FF_X34_Y5_N7
\memoriaDados|ram~374\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \memoriaDados|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~374_q\);

-- Location: LABCELL_X35_Y7_N15
\memoriaDados|ram~310feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~310feeder_combout\ = ( \CPU|REG1|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(7),
	combout => \memoriaDados|ram~310feeder_combout\);

-- Location: LABCELL_X32_Y5_N36
\memoriaDados|ram~729\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~729_combout\ = ( \ROM1|memROM~55_combout\ & ( !\ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~14_combout\ & (!\ROM1|memROM~24_combout\ & (\ROM1|memROM~12_combout\ & !\ROM1|memROM~19_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~14_combout\,
	datab => \ROM1|ALT_INV_memROM~24_combout\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \ROM1|ALT_INV_memROM~19_combout\,
	datae => \ROM1|ALT_INV_memROM~55_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \memoriaDados|ram~729_combout\);

-- Location: LABCELL_X35_Y7_N30
\memoriaDados|ram~730\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~730_combout\ = ( \memoriaDados|process_0~1_combout\ & ( \memoriaDados|ram~729_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \memoriaDados|ALT_INV_process_0~1_combout\,
	dataf => \memoriaDados|ALT_INV_ram~729_combout\,
	combout => \memoriaDados|ram~730_combout\);

-- Location: FF_X35_Y7_N17
\memoriaDados|ram~310\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~310feeder_combout\,
	ena => \memoriaDados|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~310_q\);

-- Location: LABCELL_X35_Y4_N42
\memoriaDados|ram~713\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~713_combout\ = ( !\ROM1|memROM~14_combout\ & ( !\ROM1|memROM~13_combout\ & ( (\ROM1|memROM~19_combout\ & (\ROM1|memROM~12_combout\ & (!\ROM1|memROM~55_combout\ & !\ROM1|memROM~24_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~19_combout\,
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	datac => \ROM1|ALT_INV_memROM~55_combout\,
	datad => \ROM1|ALT_INV_memROM~24_combout\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \memoriaDados|ram~713_combout\);

-- Location: LABCELL_X39_Y5_N33
\memoriaDados|ram~714\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~714_combout\ = ( \memoriaDados|process_0~1_combout\ & ( \memoriaDados|ram~713_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \memoriaDados|ALT_INV_ram~713_combout\,
	dataf => \memoriaDados|ALT_INV_process_0~1_combout\,
	combout => \memoriaDados|ram~714_combout\);

-- Location: FF_X39_Y5_N16
\memoriaDados|ram~342\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \memoriaDados|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~342_q\);

-- Location: LABCELL_X31_Y4_N36
\memoriaDados|ram~684\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~684_combout\ = ( \ROM1|memROM~55_combout\ & ( \ROM1|memROM~19_combout\ & ( \memoriaDados|ram~374_q\ ) ) ) # ( !\ROM1|memROM~55_combout\ & ( \ROM1|memROM~19_combout\ & ( \memoriaDados|ram~342_q\ ) ) ) # ( \ROM1|memROM~55_combout\ & ( 
-- !\ROM1|memROM~19_combout\ & ( \memoriaDados|ram~310_q\ ) ) ) # ( !\ROM1|memROM~55_combout\ & ( !\ROM1|memROM~19_combout\ & ( \memoriaDados|ram~278_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~278_q\,
	datab => \memoriaDados|ALT_INV_ram~374_q\,
	datac => \memoriaDados|ALT_INV_ram~310_q\,
	datad => \memoriaDados|ALT_INV_ram~342_q\,
	datae => \ROM1|ALT_INV_memROM~55_combout\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \memoriaDados|ram~684_combout\);

-- Location: LABCELL_X35_Y7_N18
\memoriaDados|ram~725\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~725_combout\ = ( \ROM1|memROM~13_combout\ & ( \ROM1|memROM~19_combout\ & ( (\ROM1|memROM~12_combout\ & (\ROM1|memROM~24_combout\ & (!\ROM1|memROM~14_combout\ & !\ROM1|memROM~55_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~12_combout\,
	datab => \ROM1|ALT_INV_memROM~24_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \ROM1|ALT_INV_memROM~55_combout\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \memoriaDados|ram~725_combout\);

-- Location: LABCELL_X35_Y4_N24
\memoriaDados|ram~726\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~726_combout\ = ( \memoriaDados|process_0~1_combout\ & ( \memoriaDados|ram~725_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \memoriaDados|ALT_INV_ram~725_combout\,
	dataf => \memoriaDados|ALT_INV_process_0~1_combout\,
	combout => \memoriaDados|ram~726_combout\);

-- Location: FF_X39_Y4_N56
\memoriaDados|ram~478\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \memoriaDados|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~478_q\);

-- Location: LABCELL_X39_Y4_N36
\memoriaDados|ram~741\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~741_combout\ = ( \ROM1|memROM~12_combout\ & ( !\ROM1|memROM~19_combout\ & ( (\ROM1|memROM~24_combout\ & (\ROM1|memROM~13_combout\ & (\ROM1|memROM~55_combout\ & !\ROM1|memROM~14_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~24_combout\,
	datab => \ROM1|ALT_INV_memROM~13_combout\,
	datac => \ROM1|ALT_INV_memROM~55_combout\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \memoriaDados|ram~741_combout\);

-- Location: LABCELL_X39_Y4_N48
\memoriaDados|ram~742\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~742_combout\ = ( \memoriaDados|process_0~1_combout\ & ( \memoriaDados|ram~741_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \memoriaDados|ALT_INV_process_0~1_combout\,
	dataf => \memoriaDados|ALT_INV_ram~741_combout\,
	combout => \memoriaDados|ram~742_combout\);

-- Location: FF_X39_Y4_N37
\memoriaDados|ram~446\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \memoriaDados|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~446_q\);

-- Location: LABCELL_X39_Y2_N21
\memoriaDados|ram~414feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~414feeder_combout\ = ( \CPU|REG1|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(7),
	combout => \memoriaDados|ram~414feeder_combout\);

-- Location: LABCELL_X32_Y3_N0
\memoriaDados|ram~709\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~709_combout\ = ( !\ROM1|memROM~55_combout\ & ( \ROM1|memROM~12_combout\ & ( (!\ROM1|memROM~19_combout\ & (\ROM1|memROM~24_combout\ & (!\ROM1|memROM~14_combout\ & \ROM1|memROM~13_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~19_combout\,
	datab => \ROM1|ALT_INV_memROM~24_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	datae => \ROM1|ALT_INV_memROM~55_combout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \memoriaDados|ram~709_combout\);

-- Location: LABCELL_X39_Y2_N39
\memoriaDados|ram~710\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~710_combout\ = ( \memoriaDados|ram~709_combout\ & ( \memoriaDados|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_process_0~1_combout\,
	dataf => \memoriaDados|ALT_INV_ram~709_combout\,
	combout => \memoriaDados|ram~710_combout\);

-- Location: FF_X39_Y2_N22
\memoriaDados|ram~414\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~414feeder_combout\,
	ena => \memoriaDados|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~414_q\);

-- Location: LABCELL_X36_Y7_N9
\memoriaDados|ram~757\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~757_combout\ = ( \ROM1|memROM~19_combout\ & ( \ROM1|memROM~55_combout\ & ( (\ROM1|memROM~24_combout\ & (!\ROM1|memROM~14_combout\ & (\ROM1|memROM~13_combout\ & \ROM1|memROM~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~24_combout\,
	datab => \ROM1|ALT_INV_memROM~14_combout\,
	datac => \ROM1|ALT_INV_memROM~13_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \ROM1|ALT_INV_memROM~19_combout\,
	dataf => \ROM1|ALT_INV_memROM~55_combout\,
	combout => \memoriaDados|ram~757_combout\);

-- Location: LABCELL_X36_Y7_N30
\memoriaDados|ram~758\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~758_combout\ = ( \memoriaDados|ram~757_combout\ & ( \memoriaDados|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \memoriaDados|ALT_INV_process_0~1_combout\,
	dataf => \memoriaDados|ALT_INV_ram~757_combout\,
	combout => \memoriaDados|ram~758_combout\);

-- Location: FF_X39_Y4_N44
\memoriaDados|ram~510\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \memoriaDados|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~510_q\);

-- Location: LABCELL_X39_Y4_N42
\memoriaDados|ram~687\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~687_combout\ = ( \memoriaDados|ram~510_q\ & ( \ROM1|memROM~19_combout\ & ( (\ROM1|memROM~55_combout\) # (\memoriaDados|ram~478_q\) ) ) ) # ( !\memoriaDados|ram~510_q\ & ( \ROM1|memROM~19_combout\ & ( (\memoriaDados|ram~478_q\ & 
-- !\ROM1|memROM~55_combout\) ) ) ) # ( \memoriaDados|ram~510_q\ & ( !\ROM1|memROM~19_combout\ & ( (!\ROM1|memROM~55_combout\ & ((\memoriaDados|ram~414_q\))) # (\ROM1|memROM~55_combout\ & (\memoriaDados|ram~446_q\)) ) ) ) # ( !\memoriaDados|ram~510_q\ & ( 
-- !\ROM1|memROM~19_combout\ & ( (!\ROM1|memROM~55_combout\ & ((\memoriaDados|ram~414_q\))) # (\ROM1|memROM~55_combout\ & (\memoriaDados|ram~446_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~478_q\,
	datab => \memoriaDados|ALT_INV_ram~446_q\,
	datac => \ROM1|ALT_INV_memROM~55_combout\,
	datad => \memoriaDados|ALT_INV_ram~414_q\,
	datae => \memoriaDados|ALT_INV_ram~510_q\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \memoriaDados|ram~687_combout\);

-- Location: LABCELL_X32_Y2_N42
\memoriaDados|ram~688\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~688_combout\ = ( \memoriaDados|ram~684_combout\ & ( \memoriaDados|ram~687_combout\ & ( (!\ROM1|memROM~24_combout\ & (((!\ROM1|memROM~13_combout\) # (\memoriaDados|ram~685_combout\)))) # (\ROM1|memROM~24_combout\ & 
-- (((\ROM1|memROM~13_combout\)) # (\memoriaDados|ram~686_combout\))) ) ) ) # ( !\memoriaDados|ram~684_combout\ & ( \memoriaDados|ram~687_combout\ & ( (!\ROM1|memROM~24_combout\ & (((\memoriaDados|ram~685_combout\ & \ROM1|memROM~13_combout\)))) # 
-- (\ROM1|memROM~24_combout\ & (((\ROM1|memROM~13_combout\)) # (\memoriaDados|ram~686_combout\))) ) ) ) # ( \memoriaDados|ram~684_combout\ & ( !\memoriaDados|ram~687_combout\ & ( (!\ROM1|memROM~24_combout\ & (((!\ROM1|memROM~13_combout\) # 
-- (\memoriaDados|ram~685_combout\)))) # (\ROM1|memROM~24_combout\ & (\memoriaDados|ram~686_combout\ & ((!\ROM1|memROM~13_combout\)))) ) ) ) # ( !\memoriaDados|ram~684_combout\ & ( !\memoriaDados|ram~687_combout\ & ( (!\ROM1|memROM~24_combout\ & 
-- (((\memoriaDados|ram~685_combout\ & \ROM1|memROM~13_combout\)))) # (\ROM1|memROM~24_combout\ & (\memoriaDados|ram~686_combout\ & ((!\ROM1|memROM~13_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001100110111010000110000010001001111111101110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~686_combout\,
	datab => \ROM1|ALT_INV_memROM~24_combout\,
	datac => \memoriaDados|ALT_INV_ram~685_combout\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	datae => \memoriaDados|ALT_INV_ram~684_combout\,
	dataf => \memoriaDados|ALT_INV_ram~687_combout\,
	combout => \memoriaDados|ram~688_combout\);

-- Location: LABCELL_X31_Y5_N6
\memoriaDados|ram~715\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~715_combout\ = ( !\ROM1|memROM~14_combout\ & ( \ROM1|memROM~19_combout\ & ( (!\ROM1|memROM~24_combout\ & (!\ROM1|memROM~55_combout\ & (\ROM1|memROM~13_combout\ & !\ROM1|memROM~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~24_combout\,
	datab => \ROM1|ALT_INV_memROM~55_combout\,
	datac => \ROM1|ALT_INV_memROM~13_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \memoriaDados|ram~715_combout\);

-- Location: MLABCELL_X34_Y5_N45
\memoriaDados|ram~716\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~716_combout\ = ( \memoriaDados|process_0~1_combout\ & ( \memoriaDados|ram~715_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \memoriaDados|ALT_INV_process_0~1_combout\,
	dataf => \memoriaDados|ALT_INV_ram~715_combout\,
	combout => \memoriaDados|ram~716_combout\);

-- Location: FF_X34_Y1_N13
\memoriaDados|ram~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \memoriaDados|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~94_q\);

-- Location: LABCELL_X32_Y4_N12
\memoriaDados|ram~723\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~723_combout\ = ( \ROM1|memROM~24_combout\ & ( \ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~55_combout\ & (!\ROM1|memROM~12_combout\ & (\ROM1|memROM~19_combout\ & !\ROM1|memROM~14_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~55_combout\,
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	datac => \ROM1|ALT_INV_memROM~19_combout\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	datae => \ROM1|ALT_INV_memROM~24_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \memoriaDados|ram~723_combout\);

-- Location: LABCELL_X32_Y4_N48
\memoriaDados|ram~724\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~724_combout\ = ( \memoriaDados|process_0~1_combout\ & ( \memoriaDados|ram~723_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \memoriaDados|ALT_INV_ram~723_combout\,
	datae => \memoriaDados|ALT_INV_process_0~1_combout\,
	combout => \memoriaDados|ram~724_combout\);

-- Location: FF_X32_Y4_N13
\memoriaDados|ram~222\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \memoriaDados|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~222_q\);

-- Location: MLABCELL_X37_Y8_N42
\memoriaDados|ram~747\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~747_combout\ = ( \ROM1|memROM~13_combout\ & ( \ROM1|memROM~19_combout\ & ( (!\ROM1|memROM~12_combout\ & (\ROM1|memROM~55_combout\ & (!\ROM1|memROM~24_combout\ & !\ROM1|memROM~14_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~12_combout\,
	datab => \ROM1|ALT_INV_memROM~55_combout\,
	datac => \ROM1|ALT_INV_memROM~24_combout\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \memoriaDados|ram~747_combout\);

-- Location: LABCELL_X35_Y6_N24
\memoriaDados|ram~748\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~748_combout\ = ( \memoriaDados|ram~747_combout\ & ( \memoriaDados|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \memoriaDados|ALT_INV_process_0~1_combout\,
	dataf => \memoriaDados|ALT_INV_ram~747_combout\,
	combout => \memoriaDados|ram~748_combout\);

-- Location: FF_X35_Y6_N41
\memoriaDados|ram~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \memoriaDados|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~126_q\);

-- Location: LABCELL_X35_Y7_N54
\memoriaDados|ram~755\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~755_combout\ = ( \ROM1|memROM~13_combout\ & ( \ROM1|memROM~55_combout\ & ( (\ROM1|memROM~19_combout\ & (\ROM1|memROM~24_combout\ & (!\ROM1|memROM~12_combout\ & !\ROM1|memROM~14_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~19_combout\,
	datab => \ROM1|ALT_INV_memROM~24_combout\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~55_combout\,
	combout => \memoriaDados|ram~755_combout\);

-- Location: LABCELL_X35_Y7_N6
\memoriaDados|ram~756\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~756_combout\ = ( \memoriaDados|process_0~1_combout\ & ( \memoriaDados|ram~755_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \memoriaDados|ALT_INV_ram~755_combout\,
	datae => \memoriaDados|ALT_INV_process_0~1_combout\,
	combout => \memoriaDados|ram~756_combout\);

-- Location: FF_X32_Y4_N32
\memoriaDados|ram~254\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \memoriaDados|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~254_q\);

-- Location: LABCELL_X32_Y4_N30
\memoriaDados|ram~677\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~677_combout\ = ( \memoriaDados|ram~254_q\ & ( \ROM1|memROM~55_combout\ & ( (\memoriaDados|ram~126_q\) # (\ROM1|memROM~24_combout\) ) ) ) # ( !\memoriaDados|ram~254_q\ & ( \ROM1|memROM~55_combout\ & ( (!\ROM1|memROM~24_combout\ & 
-- \memoriaDados|ram~126_q\) ) ) ) # ( \memoriaDados|ram~254_q\ & ( !\ROM1|memROM~55_combout\ & ( (!\ROM1|memROM~24_combout\ & (\memoriaDados|ram~94_q\)) # (\ROM1|memROM~24_combout\ & ((\memoriaDados|ram~222_q\))) ) ) ) # ( !\memoriaDados|ram~254_q\ & ( 
-- !\ROM1|memROM~55_combout\ & ( (!\ROM1|memROM~24_combout\ & (\memoriaDados|ram~94_q\)) # (\ROM1|memROM~24_combout\ & ((\memoriaDados|ram~222_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~94_q\,
	datab => \memoriaDados|ALT_INV_ram~222_q\,
	datac => \ROM1|ALT_INV_memROM~24_combout\,
	datad => \memoriaDados|ALT_INV_ram~126_q\,
	datae => \memoriaDados|ALT_INV_ram~254_q\,
	dataf => \ROM1|ALT_INV_memROM~55_combout\,
	combout => \memoriaDados|ram~677_combout\);

-- Location: MLABCELL_X37_Y8_N12
\memoriaDados|ram~743\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~743_combout\ = ( !\ROM1|memROM~13_combout\ & ( \ROM1|memROM~19_combout\ & ( (!\ROM1|memROM~24_combout\ & (\ROM1|memROM~55_combout\ & (!\ROM1|memROM~12_combout\ & !\ROM1|memROM~14_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~24_combout\,
	datab => \ROM1|ALT_INV_memROM~55_combout\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \memoriaDados|ram~743_combout\);

-- Location: MLABCELL_X34_Y6_N36
\memoriaDados|ram~744\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~744_combout\ = ( \memoriaDados|ram~743_combout\ & ( \memoriaDados|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \memoriaDados|ALT_INV_process_0~1_combout\,
	dataf => \memoriaDados|ALT_INV_ram~743_combout\,
	combout => \memoriaDados|ram~744_combout\);

-- Location: FF_X34_Y6_N40
\memoriaDados|ram~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \memoriaDados|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~118_q\);

-- Location: MLABCELL_X37_Y3_N45
\memoriaDados|ram~751\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~751_combout\ = ( !\ROM1|memROM~14_combout\ & ( \ROM1|memROM~55_combout\ & ( (!\ROM1|memROM~12_combout\ & (!\ROM1|memROM~13_combout\ & (\ROM1|memROM~19_combout\ & \ROM1|memROM~24_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~12_combout\,
	datab => \ROM1|ALT_INV_memROM~13_combout\,
	datac => \ROM1|ALT_INV_memROM~19_combout\,
	datad => \ROM1|ALT_INV_memROM~24_combout\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~55_combout\,
	combout => \memoriaDados|ram~751_combout\);

-- Location: MLABCELL_X37_Y3_N33
\memoriaDados|ram~752\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~752_combout\ = ( \memoriaDados|ram~751_combout\ & ( \memoriaDados|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \memoriaDados|ALT_INV_process_0~1_combout\,
	datae => \memoriaDados|ALT_INV_ram~751_combout\,
	combout => \memoriaDados|ram~752_combout\);

-- Location: FF_X39_Y5_N4
\memoriaDados|ram~246\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \memoriaDados|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~246_q\);

-- Location: LABCELL_X29_Y4_N57
\memoriaDados|ram~719\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~719_combout\ = ( \ROM1|memROM~24_combout\ & ( \ROM1|memROM~19_combout\ & ( (!\ROM1|memROM~14_combout\ & (!\ROM1|memROM~55_combout\ & (!\ROM1|memROM~13_combout\ & !\ROM1|memROM~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~14_combout\,
	datab => \ROM1|ALT_INV_memROM~55_combout\,
	datac => \ROM1|ALT_INV_memROM~13_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \ROM1|ALT_INV_memROM~24_combout\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \memoriaDados|ram~719_combout\);

-- Location: LABCELL_X31_Y4_N0
\memoriaDados|ram~720\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~720_combout\ = ( \memoriaDados|process_0~1_combout\ & ( \memoriaDados|ram~719_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \memoriaDados|ALT_INV_ram~719_combout\,
	dataf => \memoriaDados|ALT_INV_process_0~1_combout\,
	combout => \memoriaDados|ram~720_combout\);

-- Location: FF_X31_Y4_N4
\memoriaDados|ram~214\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \memoriaDados|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~214_q\);

-- Location: LABCELL_X32_Y1_N48
\memoriaDados|ram~711\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~711_combout\ = ( \ROM1|memROM~19_combout\ & ( !\ROM1|memROM~12_combout\ & ( (!\ROM1|memROM~55_combout\ & (!\ROM1|memROM~13_combout\ & (!\ROM1|memROM~24_combout\ & !\ROM1|memROM~14_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~55_combout\,
	datab => \ROM1|ALT_INV_memROM~13_combout\,
	datac => \ROM1|ALT_INV_memROM~24_combout\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	datae => \ROM1|ALT_INV_memROM~19_combout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \memoriaDados|ram~711_combout\);

-- Location: LABCELL_X32_Y1_N57
\memoriaDados|ram~712\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~712_combout\ = ( \memoriaDados|process_0~1_combout\ & ( \memoriaDados|ram~711_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~711_combout\,
	dataf => \memoriaDados|ALT_INV_process_0~1_combout\,
	combout => \memoriaDados|ram~712_combout\);

-- Location: FF_X32_Y1_N52
\memoriaDados|ram~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \memoriaDados|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~86_q\);

-- Location: MLABCELL_X37_Y4_N39
\memoriaDados|ram~676\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~676_combout\ = ( \ROM1|memROM~55_combout\ & ( \ROM1|memROM~24_combout\ & ( \memoriaDados|ram~246_q\ ) ) ) # ( !\ROM1|memROM~55_combout\ & ( \ROM1|memROM~24_combout\ & ( \memoriaDados|ram~214_q\ ) ) ) # ( \ROM1|memROM~55_combout\ & ( 
-- !\ROM1|memROM~24_combout\ & ( \memoriaDados|ram~118_q\ ) ) ) # ( !\ROM1|memROM~55_combout\ & ( !\ROM1|memROM~24_combout\ & ( \memoriaDados|ram~86_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~118_q\,
	datab => \memoriaDados|ALT_INV_ram~246_q\,
	datac => \memoriaDados|ALT_INV_ram~214_q\,
	datad => \memoriaDados|ALT_INV_ram~86_q\,
	datae => \ROM1|ALT_INV_memROM~55_combout\,
	dataf => \ROM1|ALT_INV_memROM~24_combout\,
	combout => \memoriaDados|ram~676_combout\);

-- Location: LABCELL_X40_Y5_N12
\memoriaDados|ram~703\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~703_combout\ = ( !\ROM1|memROM~55_combout\ & ( !\ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~12_combout\ & (\ROM1|memROM~24_combout\ & (!\ROM1|memROM~19_combout\ & !\ROM1|memROM~14_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~12_combout\,
	datab => \ROM1|ALT_INV_memROM~24_combout\,
	datac => \ROM1|ALT_INV_memROM~19_combout\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	datae => \ROM1|ALT_INV_memROM~55_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \memoriaDados|ram~703_combout\);

-- Location: LABCELL_X40_Y5_N54
\memoriaDados|ram~704\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~704_combout\ = ( \memoriaDados|process_0~1_combout\ & ( \memoriaDados|ram~703_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \memoriaDados|ALT_INV_ram~703_combout\,
	dataf => \memoriaDados|ALT_INV_process_0~1_combout\,
	combout => \memoriaDados|ram~704_combout\);

-- Location: FF_X37_Y5_N52
\memoriaDados|ram~150\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \memoriaDados|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~150_q\);

-- Location: MLABCELL_X37_Y1_N0
\memoriaDados|ram~695\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~695_combout\ = ( !\ROM1|memROM~13_combout\ & ( !\ROM1|memROM~55_combout\ & ( (!\ROM1|memROM~14_combout\ & (!\ROM1|memROM~24_combout\ & (!\ROM1|memROM~12_combout\ & !\ROM1|memROM~19_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~14_combout\,
	datab => \ROM1|ALT_INV_memROM~24_combout\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \ROM1|ALT_INV_memROM~19_combout\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~55_combout\,
	combout => \memoriaDados|ram~695_combout\);

-- Location: MLABCELL_X37_Y1_N36
\memoriaDados|ram~696\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~696_combout\ = ( \memoriaDados|ram~695_combout\ & ( \memoriaDados|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \memoriaDados|ALT_INV_ram~695_combout\,
	dataf => \memoriaDados|ALT_INV_process_0~1_combout\,
	combout => \memoriaDados|ram~696_combout\);

-- Location: FF_X36_Y5_N41
\memoriaDados|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \memoriaDados|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~22_q\);

-- Location: LABCELL_X32_Y3_N33
\memoriaDados|ram~727\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~727_combout\ = ( \ROM1|memROM~55_combout\ & ( !\ROM1|memROM~12_combout\ & ( (!\ROM1|memROM~19_combout\ & (!\ROM1|memROM~13_combout\ & (!\ROM1|memROM~24_combout\ & !\ROM1|memROM~14_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~19_combout\,
	datab => \ROM1|ALT_INV_memROM~13_combout\,
	datac => \ROM1|ALT_INV_memROM~24_combout\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	datae => \ROM1|ALT_INV_memROM~55_combout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \memoriaDados|ram~727_combout\);

-- Location: LABCELL_X36_Y7_N15
\memoriaDados|ram~728\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~728_combout\ = (\memoriaDados|ram~727_combout\ & \memoriaDados|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~727_combout\,
	datab => \memoriaDados|ALT_INV_process_0~1_combout\,
	combout => \memoriaDados|ram~728_combout\);

-- Location: FF_X36_Y5_N34
\memoriaDados|ram~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \memoriaDados|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~54_q\);

-- Location: MLABCELL_X34_Y4_N21
\memoriaDados|ram~735\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~735_combout\ = ( \ROM1|memROM~55_combout\ & ( !\ROM1|memROM~13_combout\ & ( (\ROM1|memROM~24_combout\ & (!\ROM1|memROM~19_combout\ & (!\ROM1|memROM~12_combout\ & !\ROM1|memROM~14_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~24_combout\,
	datab => \ROM1|ALT_INV_memROM~19_combout\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	datae => \ROM1|ALT_INV_memROM~55_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \memoriaDados|ram~735_combout\);

-- Location: MLABCELL_X37_Y5_N54
\memoriaDados|ram~736\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~736_combout\ = (\memoriaDados|process_0~1_combout\ & \memoriaDados|ram~735_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \memoriaDados|ALT_INV_process_0~1_combout\,
	datad => \memoriaDados|ALT_INV_ram~735_combout\,
	combout => \memoriaDados|ram~736_combout\);

-- Location: FF_X31_Y2_N8
\memoriaDados|ram~182\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \memoriaDados|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~182_q\);

-- Location: LABCELL_X31_Y2_N6
\memoriaDados|ram~674\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~674_combout\ = ( \memoriaDados|ram~182_q\ & ( \ROM1|memROM~55_combout\ & ( (\memoriaDados|ram~54_q\) # (\ROM1|memROM~24_combout\) ) ) ) # ( !\memoriaDados|ram~182_q\ & ( \ROM1|memROM~55_combout\ & ( (!\ROM1|memROM~24_combout\ & 
-- \memoriaDados|ram~54_q\) ) ) ) # ( \memoriaDados|ram~182_q\ & ( !\ROM1|memROM~55_combout\ & ( (!\ROM1|memROM~24_combout\ & ((\memoriaDados|ram~22_q\))) # (\ROM1|memROM~24_combout\ & (\memoriaDados|ram~150_q\)) ) ) ) # ( !\memoriaDados|ram~182_q\ & ( 
-- !\ROM1|memROM~55_combout\ & ( (!\ROM1|memROM~24_combout\ & ((\memoriaDados|ram~22_q\))) # (\ROM1|memROM~24_combout\ & (\memoriaDados|ram~150_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100000000110011000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~150_q\,
	datab => \ROM1|ALT_INV_memROM~24_combout\,
	datac => \memoriaDados|ALT_INV_ram~22_q\,
	datad => \memoriaDados|ALT_INV_ram~54_q\,
	datae => \memoriaDados|ALT_INV_ram~182_q\,
	dataf => \ROM1|ALT_INV_memROM~55_combout\,
	combout => \memoriaDados|ram~674_combout\);

-- Location: LABCELL_X31_Y6_N36
\memoriaDados|ram~731\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~731_combout\ = ( \ROM1|memROM~55_combout\ & ( \ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~19_combout\ & (!\ROM1|memROM~14_combout\ & (!\ROM1|memROM~24_combout\ & !\ROM1|memROM~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~19_combout\,
	datab => \ROM1|ALT_INV_memROM~14_combout\,
	datac => \ROM1|ALT_INV_memROM~24_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \ROM1|ALT_INV_memROM~55_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \memoriaDados|ram~731_combout\);

-- Location: LABCELL_X39_Y6_N48
\memoriaDados|ram~732\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~732_combout\ = ( \memoriaDados|process_0~1_combout\ & ( \memoriaDados|ram~731_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \memoriaDados|ALT_INV_process_0~1_combout\,
	dataf => \memoriaDados|ALT_INV_ram~731_combout\,
	combout => \memoriaDados|ram~732_combout\);

-- Location: FF_X35_Y6_N5
\memoriaDados|ram~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \memoriaDados|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~62_q\);

-- Location: MLABCELL_X34_Y3_N48
\memoriaDados|ram~739\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~739_combout\ = ( !\ROM1|memROM~19_combout\ & ( \ROM1|memROM~13_combout\ & ( (\ROM1|memROM~24_combout\ & (!\ROM1|memROM~12_combout\ & (\ROM1|memROM~55_combout\ & !\ROM1|memROM~14_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~24_combout\,
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	datac => \ROM1|ALT_INV_memROM~55_combout\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	datae => \ROM1|ALT_INV_memROM~19_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \memoriaDados|ram~739_combout\);

-- Location: LABCELL_X35_Y3_N30
\memoriaDados|ram~740\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~740_combout\ = (\memoriaDados|ram~739_combout\ & \memoriaDados|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \memoriaDados|ALT_INV_ram~739_combout\,
	datac => \memoriaDados|ALT_INV_process_0~1_combout\,
	combout => \memoriaDados|ram~740_combout\);

-- Location: FF_X35_Y6_N32
\memoriaDados|ram~190\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \memoriaDados|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~190_q\);

-- Location: LABCELL_X39_Y1_N42
\memoriaDados|ram~707\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~707_combout\ = ( !\ROM1|memROM~19_combout\ & ( \ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~14_combout\ & (\ROM1|memROM~24_combout\ & (!\ROM1|memROM~55_combout\ & !\ROM1|memROM~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~14_combout\,
	datab => \ROM1|ALT_INV_memROM~24_combout\,
	datac => \ROM1|ALT_INV_memROM~55_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \ROM1|ALT_INV_memROM~19_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \memoriaDados|ram~707_combout\);

-- Location: LABCELL_X40_Y5_N0
\memoriaDados|ram~708\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~708_combout\ = ( \memoriaDados|ram~707_combout\ & ( \memoriaDados|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \memoriaDados|ALT_INV_ram~707_combout\,
	dataf => \memoriaDados|ALT_INV_process_0~1_combout\,
	combout => \memoriaDados|ram~708_combout\);

-- Location: FF_X39_Y6_N19
\memoriaDados|ram~158\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \memoriaDados|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~158_q\);

-- Location: LABCELL_X32_Y3_N15
\memoriaDados|ram~699\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~699_combout\ = ( !\ROM1|memROM~55_combout\ & ( !\ROM1|memROM~19_combout\ & ( (!\ROM1|memROM~14_combout\ & (\ROM1|memROM~13_combout\ & (!\ROM1|memROM~24_combout\ & !\ROM1|memROM~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~14_combout\,
	datab => \ROM1|ALT_INV_memROM~13_combout\,
	datac => \ROM1|ALT_INV_memROM~24_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \ROM1|ALT_INV_memROM~55_combout\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \memoriaDados|ram~699_combout\);

-- Location: LABCELL_X31_Y3_N6
\memoriaDados|ram~700\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~700_combout\ = ( \memoriaDados|process_0~1_combout\ & ( \memoriaDados|ram~699_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \memoriaDados|ALT_INV_ram~699_combout\,
	dataf => \memoriaDados|ALT_INV_process_0~1_combout\,
	combout => \memoriaDados|ram~700_combout\);

-- Location: FF_X31_Y3_N10
\memoriaDados|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \memoriaDados|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~30_q\);

-- Location: LABCELL_X35_Y6_N33
\memoriaDados|ram~675\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~675_combout\ = ( \ROM1|memROM~24_combout\ & ( \ROM1|memROM~55_combout\ & ( \memoriaDados|ram~190_q\ ) ) ) # ( !\ROM1|memROM~24_combout\ & ( \ROM1|memROM~55_combout\ & ( \memoriaDados|ram~62_q\ ) ) ) # ( \ROM1|memROM~24_combout\ & ( 
-- !\ROM1|memROM~55_combout\ & ( \memoriaDados|ram~158_q\ ) ) ) # ( !\ROM1|memROM~24_combout\ & ( !\ROM1|memROM~55_combout\ & ( \memoriaDados|ram~30_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~62_q\,
	datab => \memoriaDados|ALT_INV_ram~190_q\,
	datac => \memoriaDados|ALT_INV_ram~158_q\,
	datad => \memoriaDados|ALT_INV_ram~30_q\,
	datae => \ROM1|ALT_INV_memROM~24_combout\,
	dataf => \ROM1|ALT_INV_memROM~55_combout\,
	combout => \memoriaDados|ram~675_combout\);

-- Location: LABCELL_X32_Y2_N36
\memoriaDados|ram~678\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~678_combout\ = ( \memoriaDados|ram~674_combout\ & ( \memoriaDados|ram~675_combout\ & ( (!\ROM1|memROM~19_combout\) # ((!\ROM1|memROM~13_combout\ & ((\memoriaDados|ram~676_combout\))) # (\ROM1|memROM~13_combout\ & 
-- (\memoriaDados|ram~677_combout\))) ) ) ) # ( !\memoriaDados|ram~674_combout\ & ( \memoriaDados|ram~675_combout\ & ( (!\ROM1|memROM~19_combout\ & (\ROM1|memROM~13_combout\)) # (\ROM1|memROM~19_combout\ & ((!\ROM1|memROM~13_combout\ & 
-- ((\memoriaDados|ram~676_combout\))) # (\ROM1|memROM~13_combout\ & (\memoriaDados|ram~677_combout\)))) ) ) ) # ( \memoriaDados|ram~674_combout\ & ( !\memoriaDados|ram~675_combout\ & ( (!\ROM1|memROM~19_combout\ & (!\ROM1|memROM~13_combout\)) # 
-- (\ROM1|memROM~19_combout\ & ((!\ROM1|memROM~13_combout\ & ((\memoriaDados|ram~676_combout\))) # (\ROM1|memROM~13_combout\ & (\memoriaDados|ram~677_combout\)))) ) ) ) # ( !\memoriaDados|ram~674_combout\ & ( !\memoriaDados|ram~675_combout\ & ( 
-- (\ROM1|memROM~19_combout\ & ((!\ROM1|memROM~13_combout\ & ((\memoriaDados|ram~676_combout\))) # (\ROM1|memROM~13_combout\ & (\memoriaDados|ram~677_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101100010011100110100100011011001111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~19_combout\,
	datab => \ROM1|ALT_INV_memROM~13_combout\,
	datac => \memoriaDados|ALT_INV_ram~677_combout\,
	datad => \memoriaDados|ALT_INV_ram~676_combout\,
	datae => \memoriaDados|ALT_INV_ram~674_combout\,
	dataf => \memoriaDados|ALT_INV_ram~675_combout\,
	combout => \memoriaDados|ram~678_combout\);

-- Location: LABCELL_X32_Y6_N0
\memoriaDados|ram~206feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~206feeder_combout\ = ( \CPU|REG1|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(7),
	combout => \memoriaDados|ram~206feeder_combout\);

-- Location: LABCELL_X31_Y4_N6
\memoriaDados|ram~803\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~803_combout\ = ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~19_combout\ & ( (\ROM1|memROM~55_combout\ & (\ROM1|memROM~24_combout\ & (\ROM1|memROM~13_combout\ & \ROM1|memROM~14_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~55_combout\,
	datab => \ROM1|ALT_INV_memROM~24_combout\,
	datac => \ROM1|ALT_INV_memROM~13_combout\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \memoriaDados|ram~803_combout\);

-- Location: LABCELL_X32_Y6_N36
\memoriaDados|ram~804\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~804_combout\ = ( \memoriaDados|ram~803_combout\ & ( \memoriaDados|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \memoriaDados|ALT_INV_process_0~1_combout\,
	dataf => \memoriaDados|ALT_INV_ram~803_combout\,
	combout => \memoriaDados|ram~804_combout\);

-- Location: FF_X32_Y6_N1
\memoriaDados|ram~206\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~206feeder_combout\,
	ena => \memoriaDados|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~206_q\);

-- Location: LABCELL_X39_Y3_N6
\memoriaDados|ram~799\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~799_combout\ = ( \ROM1|memROM~13_combout\ & ( !\ROM1|memROM~19_combout\ & ( (!\ROM1|memROM~24_combout\ & (\ROM1|memROM~14_combout\ & (\ROM1|memROM~55_combout\ & !\ROM1|memROM~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~24_combout\,
	datab => \ROM1|ALT_INV_memROM~14_combout\,
	datac => \ROM1|ALT_INV_memROM~55_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \memoriaDados|ram~799_combout\);

-- Location: LABCELL_X35_Y3_N27
\memoriaDados|ram~800\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~800_combout\ = ( \memoriaDados|ram~799_combout\ & ( \memoriaDados|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_process_0~1_combout\,
	datae => \memoriaDados|ALT_INV_ram~799_combout\,
	combout => \memoriaDados|ram~800_combout\);

-- Location: FF_X35_Y3_N46
\memoriaDados|ram~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \memoriaDados|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~78_q\);

-- Location: LABCELL_X39_Y3_N21
\memoriaDados|ram~795\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~795_combout\ = ( \ROM1|memROM~24_combout\ & ( \ROM1|memROM~55_combout\ & ( (!\ROM1|memROM~12_combout\ & (\ROM1|memROM~14_combout\ & (!\ROM1|memROM~19_combout\ & !\ROM1|memROM~13_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~12_combout\,
	datab => \ROM1|ALT_INV_memROM~14_combout\,
	datac => \ROM1|ALT_INV_memROM~19_combout\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	datae => \ROM1|ALT_INV_memROM~24_combout\,
	dataf => \ROM1|ALT_INV_memROM~55_combout\,
	combout => \memoriaDados|ram~795_combout\);

-- Location: MLABCELL_X37_Y3_N24
\memoriaDados|ram~796\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~796_combout\ = (\memoriaDados|process_0~1_combout\ & \memoriaDados|ram~795_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \memoriaDados|ALT_INV_process_0~1_combout\,
	datac => \memoriaDados|ALT_INV_ram~795_combout\,
	combout => \memoriaDados|ram~796_combout\);

-- Location: FF_X37_Y3_N16
\memoriaDados|ram~198\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \memoriaDados|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~198_q\);

-- Location: MLABCELL_X34_Y6_N33
\memoriaDados|ram~70feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~70feeder_combout\ = \CPU|REG1|DOUT\(7)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REG1|ALT_INV_DOUT\(7),
	combout => \memoriaDados|ram~70feeder_combout\);

-- Location: LABCELL_X31_Y6_N30
\memoriaDados|ram~791\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~791_combout\ = ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~19_combout\ & (\ROM1|memROM~55_combout\ & (!\ROM1|memROM~24_combout\ & \ROM1|memROM~14_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~19_combout\,
	datab => \ROM1|ALT_INV_memROM~55_combout\,
	datac => \ROM1|ALT_INV_memROM~24_combout\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \memoriaDados|ram~791_combout\);

-- Location: MLABCELL_X34_Y6_N12
\memoriaDados|ram~792\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~792_combout\ = ( \memoriaDados|ram~791_combout\ & ( \memoriaDados|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \memoriaDados|ALT_INV_process_0~1_combout\,
	dataf => \memoriaDados|ALT_INV_ram~791_combout\,
	combout => \memoriaDados|ram~792_combout\);

-- Location: FF_X34_Y6_N35
\memoriaDados|ram~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~70feeder_combout\,
	ena => \memoriaDados|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~70_q\);

-- Location: LABCELL_X32_Y3_N42
\memoriaDados|ram~680\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~680_combout\ = ( \ROM1|memROM~24_combout\ & ( \ROM1|memROM~13_combout\ & ( \memoriaDados|ram~206_q\ ) ) ) # ( !\ROM1|memROM~24_combout\ & ( \ROM1|memROM~13_combout\ & ( \memoriaDados|ram~78_q\ ) ) ) # ( \ROM1|memROM~24_combout\ & ( 
-- !\ROM1|memROM~13_combout\ & ( \memoriaDados|ram~198_q\ ) ) ) # ( !\ROM1|memROM~24_combout\ & ( !\ROM1|memROM~13_combout\ & ( \memoriaDados|ram~70_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~206_q\,
	datab => \memoriaDados|ALT_INV_ram~78_q\,
	datac => \memoriaDados|ALT_INV_ram~198_q\,
	datad => \memoriaDados|ALT_INV_ram~70_q\,
	datae => \ROM1|ALT_INV_memROM~24_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \memoriaDados|ram~680_combout\);

-- Location: LABCELL_X31_Y4_N42
\memoriaDados|ram~783\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~783_combout\ = ( !\ROM1|memROM~12_combout\ & ( \ROM1|memROM~19_combout\ & ( (\ROM1|memROM~14_combout\ & (!\ROM1|memROM~55_combout\ & (!\ROM1|memROM~13_combout\ & \ROM1|memROM~24_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~14_combout\,
	datab => \ROM1|ALT_INV_memROM~55_combout\,
	datac => \ROM1|ALT_INV_memROM~13_combout\,
	datad => \ROM1|ALT_INV_memROM~24_combout\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \memoriaDados|ram~783_combout\);

-- Location: LABCELL_X31_Y4_N57
\memoriaDados|ram~784\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~784_combout\ = ( \memoriaDados|process_0~1_combout\ & ( \memoriaDados|ram~783_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \memoriaDados|ALT_INV_ram~783_combout\,
	dataf => \memoriaDados|ALT_INV_process_0~1_combout\,
	combout => \memoriaDados|ram~784_combout\);

-- Location: FF_X31_Y4_N56
\memoriaDados|ram~230\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \memoriaDados|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~230_q\);

-- Location: LABCELL_X32_Y5_N3
\memoriaDados|ram~775\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~775_combout\ = ( !\ROM1|memROM~55_combout\ & ( !\ROM1|memROM~13_combout\ & ( (\ROM1|memROM~14_combout\ & (\ROM1|memROM~19_combout\ & (!\ROM1|memROM~24_combout\ & !\ROM1|memROM~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~14_combout\,
	datab => \ROM1|ALT_INV_memROM~19_combout\,
	datac => \ROM1|ALT_INV_memROM~24_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \ROM1|ALT_INV_memROM~55_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \memoriaDados|ram~775_combout\);

-- Location: LABCELL_X32_Y1_N9
\memoriaDados|ram~776\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~776_combout\ = ( \memoriaDados|process_0~1_combout\ & ( \memoriaDados|ram~775_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \memoriaDados|ALT_INV_ram~775_combout\,
	dataf => \memoriaDados|ALT_INV_process_0~1_combout\,
	combout => \memoriaDados|ram~776_combout\);

-- Location: FF_X32_Y1_N10
\memoriaDados|ram~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \memoriaDados|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~102_q\);

-- Location: MLABCELL_X37_Y4_N42
\memoriaDados|ram~779\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~779_combout\ = ( !\ROM1|memROM~55_combout\ & ( \ROM1|memROM~13_combout\ & ( (\ROM1|memROM~19_combout\ & (!\ROM1|memROM~24_combout\ & (!\ROM1|memROM~12_combout\ & \ROM1|memROM~14_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~19_combout\,
	datab => \ROM1|ALT_INV_memROM~24_combout\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	datae => \ROM1|ALT_INV_memROM~55_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \memoriaDados|ram~779_combout\);

-- Location: LABCELL_X36_Y1_N18
\memoriaDados|ram~780\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~780_combout\ = ( \memoriaDados|process_0~1_combout\ & ( \memoriaDados|ram~779_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \memoriaDados|ALT_INV_ram~779_combout\,
	dataf => \memoriaDados|ALT_INV_process_0~1_combout\,
	combout => \memoriaDados|ram~780_combout\);

-- Location: FF_X31_Y1_N43
\memoriaDados|ram~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \memoriaDados|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~110_q\);

-- Location: LABCELL_X29_Y4_N24
\memoriaDados|ram~787\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~787_combout\ = ( \ROM1|memROM~24_combout\ & ( \ROM1|memROM~19_combout\ & ( (!\ROM1|memROM~12_combout\ & (\ROM1|memROM~13_combout\ & (\ROM1|memROM~14_combout\ & !\ROM1|memROM~55_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~12_combout\,
	datab => \ROM1|ALT_INV_memROM~13_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \ROM1|ALT_INV_memROM~55_combout\,
	datae => \ROM1|ALT_INV_memROM~24_combout\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \memoriaDados|ram~787_combout\);

-- Location: LABCELL_X31_Y4_N24
\memoriaDados|ram~788\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~788_combout\ = ( \memoriaDados|process_0~1_combout\ & ( \memoriaDados|ram~787_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \memoriaDados|ALT_INV_process_0~1_combout\,
	dataf => \memoriaDados|ALT_INV_ram~787_combout\,
	combout => \memoriaDados|ram~788_combout\);

-- Location: FF_X31_Y4_N20
\memoriaDados|ram~238\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \memoriaDados|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~238_q\);

-- Location: LABCELL_X31_Y4_N18
\memoriaDados|ram~681\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~681_combout\ = ( \memoriaDados|ram~238_q\ & ( \ROM1|memROM~13_combout\ & ( (\ROM1|memROM~24_combout\) # (\memoriaDados|ram~110_q\) ) ) ) # ( !\memoriaDados|ram~238_q\ & ( \ROM1|memROM~13_combout\ & ( (\memoriaDados|ram~110_q\ & 
-- !\ROM1|memROM~24_combout\) ) ) ) # ( \memoriaDados|ram~238_q\ & ( !\ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~24_combout\ & ((\memoriaDados|ram~102_q\))) # (\ROM1|memROM~24_combout\ & (\memoriaDados|ram~230_q\)) ) ) ) # ( !\memoriaDados|ram~238_q\ & ( 
-- !\ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~24_combout\ & ((\memoriaDados|ram~102_q\))) # (\ROM1|memROM~24_combout\ & (\memoriaDados|ram~230_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~230_q\,
	datab => \memoriaDados|ALT_INV_ram~102_q\,
	datac => \memoriaDados|ALT_INV_ram~110_q\,
	datad => \ROM1|ALT_INV_memROM~24_combout\,
	datae => \memoriaDados|ALT_INV_ram~238_q\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \memoriaDados|ram~681_combout\);

-- Location: LABCELL_X39_Y3_N9
\memoriaDados|ram~807\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~807_combout\ = ( \ROM1|memROM~19_combout\ & ( !\ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~24_combout\ & (\ROM1|memROM~14_combout\ & (!\ROM1|memROM~12_combout\ & \ROM1|memROM~55_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~24_combout\,
	datab => \ROM1|ALT_INV_memROM~14_combout\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \ROM1|ALT_INV_memROM~55_combout\,
	datae => \ROM1|ALT_INV_memROM~19_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \memoriaDados|ram~807_combout\);

-- Location: LABCELL_X39_Y3_N33
\memoriaDados|ram~808\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~808_combout\ = ( \memoriaDados|process_0~1_combout\ & ( \memoriaDados|ram~807_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \memoriaDados|ALT_INV_process_0~1_combout\,
	dataf => \memoriaDados|ALT_INV_ram~807_combout\,
	combout => \memoriaDados|ram~808_combout\);

-- Location: FF_X40_Y3_N17
\memoriaDados|ram~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \memoriaDados|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~134_q\);

-- Location: LABCELL_X40_Y4_N0
\memoriaDados|ram~819\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~819_combout\ = ( \ROM1|memROM~19_combout\ & ( \ROM1|memROM~13_combout\ & ( (\ROM1|memROM~55_combout\ & (!\ROM1|memROM~12_combout\ & (\ROM1|memROM~24_combout\ & \ROM1|memROM~14_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~55_combout\,
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	datac => \ROM1|ALT_INV_memROM~24_combout\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	datae => \ROM1|ALT_INV_memROM~19_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \memoriaDados|ram~819_combout\);

-- Location: MLABCELL_X37_Y4_N54
\memoriaDados|ram~820\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~820_combout\ = ( \memoriaDados|ram~819_combout\ & ( \memoriaDados|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \memoriaDados|ALT_INV_process_0~1_combout\,
	dataf => \memoriaDados|ALT_INV_ram~819_combout\,
	combout => \memoriaDados|ram~820_combout\);

-- Location: FF_X32_Y4_N43
\memoriaDados|ram~270\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \memoriaDados|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~270_q\);

-- Location: LABCELL_X35_Y1_N48
\memoriaDados|ram~811\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~811_combout\ = ( !\ROM1|memROM~13_combout\ & ( !\ROM1|memROM~12_combout\ & ( (\ROM1|memROM~19_combout\ & (\ROM1|memROM~14_combout\ & (\ROM1|memROM~24_combout\ & \ROM1|memROM~55_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~19_combout\,
	datab => \ROM1|ALT_INV_memROM~14_combout\,
	datac => \ROM1|ALT_INV_memROM~24_combout\,
	datad => \ROM1|ALT_INV_memROM~55_combout\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \memoriaDados|ram~811_combout\);

-- Location: LABCELL_X35_Y1_N6
\memoriaDados|ram~812\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~812_combout\ = (\memoriaDados|process_0~1_combout\ & \memoriaDados|ram~811_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_process_0~1_combout\,
	datac => \memoriaDados|ALT_INV_ram~811_combout\,
	combout => \memoriaDados|ram~812_combout\);

-- Location: FF_X35_Y1_N19
\memoriaDados|ram~262\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \memoriaDados|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~262_q\);

-- Location: LABCELL_X32_Y6_N24
\memoriaDados|ram~142feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~142feeder_combout\ = ( \CPU|REG1|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(7),
	combout => \memoriaDados|ram~142feeder_combout\);

-- Location: MLABCELL_X37_Y8_N51
\memoriaDados|ram~815\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~815_combout\ = ( \ROM1|memROM~14_combout\ & ( \ROM1|memROM~19_combout\ & ( (!\ROM1|memROM~24_combout\ & (\ROM1|memROM~13_combout\ & (\ROM1|memROM~55_combout\ & !\ROM1|memROM~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~24_combout\,
	datab => \ROM1|ALT_INV_memROM~13_combout\,
	datac => \ROM1|ALT_INV_memROM~55_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \memoriaDados|ram~815_combout\);

-- Location: MLABCELL_X37_Y6_N12
\memoriaDados|ram~816\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~816_combout\ = ( \memoriaDados|ram~815_combout\ & ( \memoriaDados|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \memoriaDados|ALT_INV_ram~815_combout\,
	dataf => \memoriaDados|ALT_INV_process_0~1_combout\,
	combout => \memoriaDados|ram~816_combout\);

-- Location: FF_X32_Y6_N25
\memoriaDados|ram~142\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~142feeder_combout\,
	ena => \memoriaDados|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~142_q\);

-- Location: LABCELL_X32_Y3_N54
\memoriaDados|ram~682\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~682_combout\ = ( \ROM1|memROM~24_combout\ & ( \ROM1|memROM~13_combout\ & ( \memoriaDados|ram~270_q\ ) ) ) # ( !\ROM1|memROM~24_combout\ & ( \ROM1|memROM~13_combout\ & ( \memoriaDados|ram~142_q\ ) ) ) # ( \ROM1|memROM~24_combout\ & ( 
-- !\ROM1|memROM~13_combout\ & ( \memoriaDados|ram~262_q\ ) ) ) # ( !\ROM1|memROM~24_combout\ & ( !\ROM1|memROM~13_combout\ & ( \memoriaDados|ram~134_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~134_q\,
	datab => \memoriaDados|ALT_INV_ram~270_q\,
	datac => \memoriaDados|ALT_INV_ram~262_q\,
	datad => \memoriaDados|ALT_INV_ram~142_q\,
	datae => \ROM1|ALT_INV_memROM~24_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \memoriaDados|ram~682_combout\);

-- Location: MLABCELL_X37_Y8_N3
\memoriaDados|ram~763\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~763_combout\ = ( \ROM1|memROM~13_combout\ & ( !\ROM1|memROM~19_combout\ & ( (!\ROM1|memROM~24_combout\ & (!\ROM1|memROM~55_combout\ & (\ROM1|memROM~14_combout\ & !\ROM1|memROM~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~24_combout\,
	datab => \ROM1|ALT_INV_memROM~55_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \memoriaDados|ram~763_combout\);

-- Location: LABCELL_X36_Y6_N54
\memoriaDados|ram~764\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~764_combout\ = (\memoriaDados|process_0~1_combout\ & \memoriaDados|ram~763_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \memoriaDados|ALT_INV_process_0~1_combout\,
	datad => \memoriaDados|ALT_INV_ram~763_combout\,
	combout => \memoriaDados|ram~764_combout\);

-- Location: FF_X40_Y6_N35
\memoriaDados|ram~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \memoriaDados|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~46_q\);

-- Location: LABCELL_X41_Y5_N15
\memoriaDados|ram~767\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~767_combout\ = ( !\ROM1|memROM~19_combout\ & ( !\ROM1|memROM~12_combout\ & ( (\ROM1|memROM~24_combout\ & (!\ROM1|memROM~55_combout\ & (\ROM1|memROM~14_combout\ & !\ROM1|memROM~13_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~24_combout\,
	datab => \ROM1|ALT_INV_memROM~55_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	datae => \ROM1|ALT_INV_memROM~19_combout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \memoriaDados|ram~767_combout\);

-- Location: LABCELL_X41_Y5_N6
\memoriaDados|ram~768\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~768_combout\ = ( \memoriaDados|process_0~1_combout\ & ( \memoriaDados|ram~767_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \memoriaDados|ALT_INV_ram~767_combout\,
	dataf => \memoriaDados|ALT_INV_process_0~1_combout\,
	combout => \memoriaDados|ram~768_combout\);

-- Location: FF_X41_Y5_N4
\memoriaDados|ram~166\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \memoriaDados|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~166_q\);

-- Location: LABCELL_X31_Y6_N24
\memoriaDados|ram~759\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~759_combout\ = ( \ROM1|memROM~14_combout\ & ( !\ROM1|memROM~19_combout\ & ( (!\ROM1|memROM~55_combout\ & (!\ROM1|memROM~13_combout\ & (!\ROM1|memROM~24_combout\ & !\ROM1|memROM~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~55_combout\,
	datab => \ROM1|ALT_INV_memROM~13_combout\,
	datac => \ROM1|ALT_INV_memROM~24_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \memoriaDados|ram~759_combout\);

-- Location: LABCELL_X31_Y6_N6
\memoriaDados|ram~760\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~760_combout\ = ( \memoriaDados|process_0~1_combout\ & ( \memoriaDados|ram~759_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \memoriaDados|ALT_INV_ram~759_combout\,
	dataf => \memoriaDados|ALT_INV_process_0~1_combout\,
	combout => \memoriaDados|ram~760_combout\);

-- Location: FF_X31_Y6_N43
\memoriaDados|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \memoriaDados|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~38_q\);

-- Location: LABCELL_X40_Y6_N39
\memoriaDados|ram~771\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~771_combout\ = ( \ROM1|memROM~14_combout\ & ( !\ROM1|memROM~55_combout\ & ( (\ROM1|memROM~24_combout\ & (!\ROM1|memROM~19_combout\ & (!\ROM1|memROM~12_combout\ & \ROM1|memROM~13_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~24_combout\,
	datab => \ROM1|ALT_INV_memROM~19_combout\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~55_combout\,
	combout => \memoriaDados|ram~771_combout\);

-- Location: LABCELL_X40_Y6_N0
\memoriaDados|ram~772\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~772_combout\ = ( \memoriaDados|process_0~1_combout\ & ( \memoriaDados|ram~771_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \memoriaDados|ALT_INV_process_0~1_combout\,
	dataf => \memoriaDados|ALT_INV_ram~771_combout\,
	combout => \memoriaDados|ram~772_combout\);

-- Location: FF_X40_Y6_N56
\memoriaDados|ram~174\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \memoriaDados|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~174_q\);

-- Location: LABCELL_X40_Y6_N54
\memoriaDados|ram~679\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~679_combout\ = ( \memoriaDados|ram~174_q\ & ( \ROM1|memROM~13_combout\ & ( (\ROM1|memROM~24_combout\) # (\memoriaDados|ram~46_q\) ) ) ) # ( !\memoriaDados|ram~174_q\ & ( \ROM1|memROM~13_combout\ & ( (\memoriaDados|ram~46_q\ & 
-- !\ROM1|memROM~24_combout\) ) ) ) # ( \memoriaDados|ram~174_q\ & ( !\ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~24_combout\ & ((\memoriaDados|ram~38_q\))) # (\ROM1|memROM~24_combout\ & (\memoriaDados|ram~166_q\)) ) ) ) # ( !\memoriaDados|ram~174_q\ & ( 
-- !\ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~24_combout\ & ((\memoriaDados|ram~38_q\))) # (\ROM1|memROM~24_combout\ & (\memoriaDados|ram~166_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~46_q\,
	datab => \memoriaDados|ALT_INV_ram~166_q\,
	datac => \ROM1|ALT_INV_memROM~24_combout\,
	datad => \memoriaDados|ALT_INV_ram~38_q\,
	datae => \memoriaDados|ALT_INV_ram~174_q\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \memoriaDados|ram~679_combout\);

-- Location: LABCELL_X32_Y2_N24
\memoriaDados|ram~683\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~683_combout\ = ( \memoriaDados|ram~682_combout\ & ( \memoriaDados|ram~679_combout\ & ( (!\ROM1|memROM~55_combout\ & (((!\ROM1|memROM~19_combout\) # (\memoriaDados|ram~681_combout\)))) # (\ROM1|memROM~55_combout\ & 
-- (((\ROM1|memROM~19_combout\)) # (\memoriaDados|ram~680_combout\))) ) ) ) # ( !\memoriaDados|ram~682_combout\ & ( \memoriaDados|ram~679_combout\ & ( (!\ROM1|memROM~55_combout\ & (((!\ROM1|memROM~19_combout\) # (\memoriaDados|ram~681_combout\)))) # 
-- (\ROM1|memROM~55_combout\ & (\memoriaDados|ram~680_combout\ & (!\ROM1|memROM~19_combout\))) ) ) ) # ( \memoriaDados|ram~682_combout\ & ( !\memoriaDados|ram~679_combout\ & ( (!\ROM1|memROM~55_combout\ & (((\ROM1|memROM~19_combout\ & 
-- \memoriaDados|ram~681_combout\)))) # (\ROM1|memROM~55_combout\ & (((\ROM1|memROM~19_combout\)) # (\memoriaDados|ram~680_combout\))) ) ) ) # ( !\memoriaDados|ram~682_combout\ & ( !\memoriaDados|ram~679_combout\ & ( (!\ROM1|memROM~55_combout\ & 
-- (((\ROM1|memROM~19_combout\ & \memoriaDados|ram~681_combout\)))) # (\ROM1|memROM~55_combout\ & (\memoriaDados|ram~680_combout\ & (!\ROM1|memROM~19_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011010000101010001111110110000101110101011010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~55_combout\,
	datab => \memoriaDados|ALT_INV_ram~680_combout\,
	datac => \ROM1|ALT_INV_memROM~19_combout\,
	datad => \memoriaDados|ALT_INV_ram~681_combout\,
	datae => \memoriaDados|ALT_INV_ram~682_combout\,
	dataf => \memoriaDados|ALT_INV_ram~679_combout\,
	combout => \memoriaDados|ram~683_combout\);

-- Location: LABCELL_X32_Y2_N6
\memoriaDados|ram~694\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~694_combout\ = ( \memoriaDados|ram~678_combout\ & ( \memoriaDados|ram~683_combout\ & ( (!\ROM1|memROM~12_combout\) # ((!\ROM1|memROM~14_combout\ & ((\memoriaDados|ram~688_combout\))) # (\ROM1|memROM~14_combout\ & 
-- (\memoriaDados|ram~693_combout\))) ) ) ) # ( !\memoriaDados|ram~678_combout\ & ( \memoriaDados|ram~683_combout\ & ( (!\ROM1|memROM~14_combout\ & (\ROM1|memROM~12_combout\ & ((\memoriaDados|ram~688_combout\)))) # (\ROM1|memROM~14_combout\ & 
-- ((!\ROM1|memROM~12_combout\) # ((\memoriaDados|ram~693_combout\)))) ) ) ) # ( \memoriaDados|ram~678_combout\ & ( !\memoriaDados|ram~683_combout\ & ( (!\ROM1|memROM~14_combout\ & ((!\ROM1|memROM~12_combout\) # ((\memoriaDados|ram~688_combout\)))) # 
-- (\ROM1|memROM~14_combout\ & (\ROM1|memROM~12_combout\ & (\memoriaDados|ram~693_combout\))) ) ) ) # ( !\memoriaDados|ram~678_combout\ & ( !\memoriaDados|ram~683_combout\ & ( (\ROM1|memROM~12_combout\ & ((!\ROM1|memROM~14_combout\ & 
-- ((\memoriaDados|ram~688_combout\))) # (\ROM1|memROM~14_combout\ & (\memoriaDados|ram~693_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011100010011010101101000101011001111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~14_combout\,
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	datac => \memoriaDados|ALT_INV_ram~693_combout\,
	datad => \memoriaDados|ALT_INV_ram~688_combout\,
	datae => \memoriaDados|ALT_INV_ram~678_combout\,
	dataf => \memoriaDados|ALT_INV_ram~683_combout\,
	combout => \memoriaDados|ram~694_combout\);

-- Location: MLABCELL_X34_Y2_N12
\CPU|MUX1|saida_MUX[7]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[7]~6_combout\ = ( \AND_ENABLE_BUFFER_8BITS~2_combout\ & ( \memoriaDados|ram~694_combout\ & ( \SW[7]~input_o\ ) ) ) # ( !\AND_ENABLE_BUFFER_8BITS~2_combout\ & ( \memoriaDados|ram~694_combout\ ) ) # ( \AND_ENABLE_BUFFER_8BITS~2_combout\ 
-- & ( !\memoriaDados|ram~694_combout\ & ( \SW[7]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[7]~input_o\,
	datae => \ALT_INV_AND_ENABLE_BUFFER_8BITS~2_combout\,
	dataf => \memoriaDados|ALT_INV_ram~694_combout\,
	combout => \CPU|MUX1|saida_MUX[7]~6_combout\);

-- Location: MLABCELL_X34_Y5_N27
\ROM1|memROM~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~28_combout\ = ( \ROM1|memROM~54_combout\ & ( !\CPU|PC|DOUT\(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(7),
	dataf => \ROM1|ALT_INV_memROM~54_combout\,
	combout => \ROM1|memROM~28_combout\);

-- Location: IOIBUF_X34_Y0_N52
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: FF_X35_Y4_N16
\memoriaDados|ram~477\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \memoriaDados|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~477_q\);

-- Location: FF_X36_Y1_N4
\memoriaDados|ram~365\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \memoriaDados|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~365_q\);

-- Location: FF_X34_Y4_N40
\memoriaDados|ram~349\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \memoriaDados|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~349_q\);

-- Location: FF_X37_Y1_N20
\memoriaDados|ram~493\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \memoriaDados|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~493_q\);

-- Location: MLABCELL_X37_Y1_N18
\memoriaDados|ram~661\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~661_combout\ = ( \memoriaDados|ram~493_q\ & ( \ROM1|memROM~24_combout\ & ( (\ROM1|memROM~14_combout\) # (\memoriaDados|ram~477_q\) ) ) ) # ( !\memoriaDados|ram~493_q\ & ( \ROM1|memROM~24_combout\ & ( (\memoriaDados|ram~477_q\ & 
-- !\ROM1|memROM~14_combout\) ) ) ) # ( \memoriaDados|ram~493_q\ & ( !\ROM1|memROM~24_combout\ & ( (!\ROM1|memROM~14_combout\ & ((\memoriaDados|ram~349_q\))) # (\ROM1|memROM~14_combout\ & (\memoriaDados|ram~365_q\)) ) ) ) # ( !\memoriaDados|ram~493_q\ & ( 
-- !\ROM1|memROM~24_combout\ & ( (!\ROM1|memROM~14_combout\ & ((\memoriaDados|ram~349_q\))) # (\ROM1|memROM~14_combout\ & (\memoriaDados|ram~365_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~477_q\,
	datab => \memoriaDados|ALT_INV_ram~365_q\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \memoriaDados|ALT_INV_ram~349_q\,
	datae => \memoriaDados|ALT_INV_ram~493_q\,
	dataf => \ROM1|ALT_INV_memROM~24_combout\,
	combout => \memoriaDados|ram~661_combout\);

-- Location: FF_X39_Y2_N7
\memoriaDados|ram~413\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \memoriaDados|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~413_q\);

-- Location: LABCELL_X31_Y3_N27
\memoriaDados|ram~285feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~285feeder_combout\ = ( \CPU|REG1|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(6),
	combout => \memoriaDados|ram~285feeder_combout\);

-- Location: FF_X31_Y3_N28
\memoriaDados|ram~285\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~285feeder_combout\,
	ena => \memoriaDados|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~285_q\);

-- Location: FF_X32_Y5_N1
\memoriaDados|ram~301\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \memoriaDados|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~301_q\);

-- Location: FF_X39_Y2_N2
\memoriaDados|ram~429\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \memoriaDados|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~429_q\);

-- Location: LABCELL_X39_Y2_N0
\memoriaDados|ram~659\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~659_combout\ = ( \memoriaDados|ram~429_q\ & ( \ROM1|memROM~24_combout\ & ( (\ROM1|memROM~14_combout\) # (\memoriaDados|ram~413_q\) ) ) ) # ( !\memoriaDados|ram~429_q\ & ( \ROM1|memROM~24_combout\ & ( (\memoriaDados|ram~413_q\ & 
-- !\ROM1|memROM~14_combout\) ) ) ) # ( \memoriaDados|ram~429_q\ & ( !\ROM1|memROM~24_combout\ & ( (!\ROM1|memROM~14_combout\ & (\memoriaDados|ram~285_q\)) # (\ROM1|memROM~14_combout\ & ((\memoriaDados|ram~301_q\))) ) ) ) # ( !\memoriaDados|ram~429_q\ & ( 
-- !\ROM1|memROM~24_combout\ & ( (!\ROM1|memROM~14_combout\ & (\memoriaDados|ram~285_q\)) # (\ROM1|memROM~14_combout\ & ((\memoriaDados|ram~301_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~413_q\,
	datab => \memoriaDados|ALT_INV_ram~285_q\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \memoriaDados|ALT_INV_ram~301_q\,
	datae => \memoriaDados|ALT_INV_ram~429_q\,
	dataf => \ROM1|ALT_INV_memROM~24_combout\,
	combout => \memoriaDados|ram~659_combout\);

-- Location: LABCELL_X40_Y1_N3
\memoriaDados|ram~405feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~405feeder_combout\ = ( \CPU|REG1|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(6),
	combout => \memoriaDados|ram~405feeder_combout\);

-- Location: FF_X40_Y1_N4
\memoriaDados|ram~405\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~405feeder_combout\,
	ena => \memoriaDados|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~405_q\);

-- Location: FF_X32_Y5_N40
\memoriaDados|ram~293\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \memoriaDados|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~293_q\);

-- Location: FF_X40_Y3_N43
\memoriaDados|ram~421\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \memoriaDados|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~421_q\);

-- Location: LABCELL_X31_Y3_N15
\memoriaDados|ram~277feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~277feeder_combout\ = ( \CPU|REG1|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(6),
	combout => \memoriaDados|ram~277feeder_combout\);

-- Location: FF_X31_Y3_N16
\memoriaDados|ram~277\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~277feeder_combout\,
	ena => \memoriaDados|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~277_q\);

-- Location: LABCELL_X39_Y2_N24
\memoriaDados|ram~658\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~658_combout\ = ( \ROM1|memROM~24_combout\ & ( \ROM1|memROM~14_combout\ & ( \memoriaDados|ram~421_q\ ) ) ) # ( !\ROM1|memROM~24_combout\ & ( \ROM1|memROM~14_combout\ & ( \memoriaDados|ram~293_q\ ) ) ) # ( \ROM1|memROM~24_combout\ & ( 
-- !\ROM1|memROM~14_combout\ & ( \memoriaDados|ram~405_q\ ) ) ) # ( !\ROM1|memROM~24_combout\ & ( !\ROM1|memROM~14_combout\ & ( \memoriaDados|ram~277_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~405_q\,
	datab => \memoriaDados|ALT_INV_ram~293_q\,
	datac => \memoriaDados|ALT_INV_ram~421_q\,
	datad => \memoriaDados|ALT_INV_ram~277_q\,
	datae => \ROM1|ALT_INV_memROM~24_combout\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \memoriaDados|ram~658_combout\);

-- Location: FF_X37_Y5_N19
\memoriaDados|ram~469\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \memoriaDados|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~469_q\);

-- Location: FF_X39_Y5_N44
\memoriaDados|ram~341\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \memoriaDados|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~341_q\);

-- Location: FF_X36_Y1_N58
\memoriaDados|ram~357\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \memoriaDados|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~357_q\);

-- Location: FF_X39_Y5_N26
\memoriaDados|ram~485\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \memoriaDados|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~485_q\);

-- Location: LABCELL_X39_Y5_N24
\memoriaDados|ram~660\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~660_combout\ = ( \memoriaDados|ram~485_q\ & ( \ROM1|memROM~14_combout\ & ( (\ROM1|memROM~24_combout\) # (\memoriaDados|ram~357_q\) ) ) ) # ( !\memoriaDados|ram~485_q\ & ( \ROM1|memROM~14_combout\ & ( (\memoriaDados|ram~357_q\ & 
-- !\ROM1|memROM~24_combout\) ) ) ) # ( \memoriaDados|ram~485_q\ & ( !\ROM1|memROM~14_combout\ & ( (!\ROM1|memROM~24_combout\ & ((\memoriaDados|ram~341_q\))) # (\ROM1|memROM~24_combout\ & (\memoriaDados|ram~469_q\)) ) ) ) # ( !\memoriaDados|ram~485_q\ & ( 
-- !\ROM1|memROM~14_combout\ & ( (!\ROM1|memROM~24_combout\ & ((\memoriaDados|ram~341_q\))) # (\ROM1|memROM~24_combout\ & (\memoriaDados|ram~469_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~469_q\,
	datab => \memoriaDados|ALT_INV_ram~341_q\,
	datac => \memoriaDados|ALT_INV_ram~357_q\,
	datad => \ROM1|ALT_INV_memROM~24_combout\,
	datae => \memoriaDados|ALT_INV_ram~485_q\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \memoriaDados|ram~660_combout\);

-- Location: MLABCELL_X37_Y2_N54
\memoriaDados|ram~662\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~662_combout\ = ( \memoriaDados|ram~658_combout\ & ( \memoriaDados|ram~660_combout\ & ( (!\ROM1|memROM~13_combout\) # ((!\ROM1|memROM~19_combout\ & ((\memoriaDados|ram~659_combout\))) # (\ROM1|memROM~19_combout\ & 
-- (\memoriaDados|ram~661_combout\))) ) ) ) # ( !\memoriaDados|ram~658_combout\ & ( \memoriaDados|ram~660_combout\ & ( (!\ROM1|memROM~19_combout\ & (\ROM1|memROM~13_combout\ & ((\memoriaDados|ram~659_combout\)))) # (\ROM1|memROM~19_combout\ & 
-- ((!\ROM1|memROM~13_combout\) # ((\memoriaDados|ram~661_combout\)))) ) ) ) # ( \memoriaDados|ram~658_combout\ & ( !\memoriaDados|ram~660_combout\ & ( (!\ROM1|memROM~19_combout\ & ((!\ROM1|memROM~13_combout\) # ((\memoriaDados|ram~659_combout\)))) # 
-- (\ROM1|memROM~19_combout\ & (\ROM1|memROM~13_combout\ & (\memoriaDados|ram~661_combout\))) ) ) ) # ( !\memoriaDados|ram~658_combout\ & ( !\memoriaDados|ram~660_combout\ & ( (\ROM1|memROM~13_combout\ & ((!\ROM1|memROM~19_combout\ & 
-- ((\memoriaDados|ram~659_combout\))) # (\ROM1|memROM~19_combout\ & (\memoriaDados|ram~661_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011100010011010101101000101011001111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~19_combout\,
	datab => \ROM1|ALT_INV_memROM~13_combout\,
	datac => \memoriaDados|ALT_INV_ram~661_combout\,
	datad => \memoriaDados|ALT_INV_ram~659_combout\,
	datae => \memoriaDados|ALT_INV_ram~658_combout\,
	dataf => \memoriaDados|ALT_INV_ram~660_combout\,
	combout => \memoriaDados|ram~662_combout\);

-- Location: FF_X32_Y1_N55
\memoriaDados|ram~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \memoriaDados|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~85_q\);

-- Location: FF_X31_Y6_N29
\memoriaDados|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \memoriaDados|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~37_q\);

-- Location: FF_X37_Y2_N37
\memoriaDados|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \memoriaDados|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~21_q\);

-- Location: FF_X37_Y2_N44
\memoriaDados|ram~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \memoriaDados|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~101_q\);

-- Location: MLABCELL_X37_Y2_N42
\memoriaDados|ram~653\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~653_combout\ = ( \memoriaDados|ram~101_q\ & ( \ROM1|memROM~19_combout\ & ( (\ROM1|memROM~14_combout\) # (\memoriaDados|ram~85_q\) ) ) ) # ( !\memoriaDados|ram~101_q\ & ( \ROM1|memROM~19_combout\ & ( (\memoriaDados|ram~85_q\ & 
-- !\ROM1|memROM~14_combout\) ) ) ) # ( \memoriaDados|ram~101_q\ & ( !\ROM1|memROM~19_combout\ & ( (!\ROM1|memROM~14_combout\ & ((\memoriaDados|ram~21_q\))) # (\ROM1|memROM~14_combout\ & (\memoriaDados|ram~37_q\)) ) ) ) # ( !\memoriaDados|ram~101_q\ & ( 
-- !\ROM1|memROM~19_combout\ & ( (!\ROM1|memROM~14_combout\ & ((\memoriaDados|ram~21_q\))) # (\ROM1|memROM~14_combout\ & (\memoriaDados|ram~37_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111101000100010001000111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~85_q\,
	datab => \ROM1|ALT_INV_memROM~14_combout\,
	datac => \memoriaDados|ALT_INV_ram~37_q\,
	datad => \memoriaDados|ALT_INV_ram~21_q\,
	datae => \memoriaDados|ALT_INV_ram~101_q\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \memoriaDados|ram~653_combout\);

-- Location: FF_X40_Y5_N52
\memoriaDados|ram~149\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \memoriaDados|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~149_q\);

-- Location: FF_X31_Y4_N11
\memoriaDados|ram~213\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \memoriaDados|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~213_q\);

-- Location: FF_X40_Y2_N46
\memoriaDados|ram~165\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \memoriaDados|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~165_q\);

-- Location: FF_X37_Y2_N20
\memoriaDados|ram~229\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \memoriaDados|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~229_q\);

-- Location: MLABCELL_X37_Y2_N18
\memoriaDados|ram~655\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~655_combout\ = ( \memoriaDados|ram~229_q\ & ( \ROM1|memROM~19_combout\ & ( (\ROM1|memROM~14_combout\) # (\memoriaDados|ram~213_q\) ) ) ) # ( !\memoriaDados|ram~229_q\ & ( \ROM1|memROM~19_combout\ & ( (\memoriaDados|ram~213_q\ & 
-- !\ROM1|memROM~14_combout\) ) ) ) # ( \memoriaDados|ram~229_q\ & ( !\ROM1|memROM~19_combout\ & ( (!\ROM1|memROM~14_combout\ & (\memoriaDados|ram~149_q\)) # (\ROM1|memROM~14_combout\ & ((\memoriaDados|ram~165_q\))) ) ) ) # ( !\memoriaDados|ram~229_q\ & ( 
-- !\ROM1|memROM~19_combout\ & ( (!\ROM1|memROM~14_combout\ & (\memoriaDados|ram~149_q\)) # (\ROM1|memROM~14_combout\ & ((\memoriaDados|ram~165_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~149_q\,
	datab => \memoriaDados|ALT_INV_ram~213_q\,
	datac => \memoriaDados|ALT_INV_ram~165_q\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	datae => \memoriaDados|ALT_INV_ram~229_q\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \memoriaDados|ram~655_combout\);

-- Location: FF_X35_Y2_N32
\memoriaDados|ram~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \memoriaDados|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~109_q\);

-- Location: FF_X34_Y1_N22
\memoriaDados|ram~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \memoriaDados|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~93_q\);

-- Location: FF_X41_Y3_N4
\memoriaDados|ram~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \memoriaDados|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~45_q\);

-- Location: LABCELL_X31_Y3_N45
\memoriaDados|ram~29feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~29feeder_combout\ = ( \CPU|REG1|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(6),
	combout => \memoriaDados|ram~29feeder_combout\);

-- Location: FF_X31_Y3_N46
\memoriaDados|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~29feeder_combout\,
	ena => \memoriaDados|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~29_q\);

-- Location: MLABCELL_X37_Y2_N36
\memoriaDados|ram~654\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~654_combout\ = ( \ROM1|memROM~14_combout\ & ( \ROM1|memROM~19_combout\ & ( \memoriaDados|ram~109_q\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( \ROM1|memROM~19_combout\ & ( \memoriaDados|ram~93_q\ ) ) ) # ( \ROM1|memROM~14_combout\ & ( 
-- !\ROM1|memROM~19_combout\ & ( \memoriaDados|ram~45_q\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( !\ROM1|memROM~19_combout\ & ( \memoriaDados|ram~29_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~109_q\,
	datab => \memoriaDados|ALT_INV_ram~93_q\,
	datac => \memoriaDados|ALT_INV_ram~45_q\,
	datad => \memoriaDados|ALT_INV_ram~29_q\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \memoriaDados|ram~654_combout\);

-- Location: FF_X40_Y3_N55
\memoriaDados|ram~173\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \memoriaDados|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~173_q\);

-- Location: FF_X40_Y5_N16
\memoriaDados|ram~157\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \memoriaDados|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~157_q\);

-- Location: FF_X35_Y4_N46
\memoriaDados|ram~221\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \memoriaDados|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~221_q\);

-- Location: FF_X39_Y2_N44
\memoriaDados|ram~237\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \memoriaDados|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~237_q\);

-- Location: LABCELL_X39_Y2_N42
\memoriaDados|ram~656\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~656_combout\ = ( \memoriaDados|ram~237_q\ & ( \ROM1|memROM~19_combout\ & ( (\memoriaDados|ram~221_q\) # (\ROM1|memROM~14_combout\) ) ) ) # ( !\memoriaDados|ram~237_q\ & ( \ROM1|memROM~19_combout\ & ( (!\ROM1|memROM~14_combout\ & 
-- \memoriaDados|ram~221_q\) ) ) ) # ( \memoriaDados|ram~237_q\ & ( !\ROM1|memROM~19_combout\ & ( (!\ROM1|memROM~14_combout\ & ((\memoriaDados|ram~157_q\))) # (\ROM1|memROM~14_combout\ & (\memoriaDados|ram~173_q\)) ) ) ) # ( !\memoriaDados|ram~237_q\ & ( 
-- !\ROM1|memROM~19_combout\ & ( (!\ROM1|memROM~14_combout\ & ((\memoriaDados|ram~157_q\))) # (\ROM1|memROM~14_combout\ & (\memoriaDados|ram~173_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~173_q\,
	datab => \memoriaDados|ALT_INV_ram~157_q\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \memoriaDados|ALT_INV_ram~221_q\,
	datae => \memoriaDados|ALT_INV_ram~237_q\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \memoriaDados|ram~656_combout\);

-- Location: MLABCELL_X37_Y2_N12
\memoriaDados|ram~657\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~657_combout\ = ( \memoriaDados|ram~654_combout\ & ( \memoriaDados|ram~656_combout\ & ( ((!\ROM1|memROM~24_combout\ & (\memoriaDados|ram~653_combout\)) # (\ROM1|memROM~24_combout\ & ((\memoriaDados|ram~655_combout\)))) # 
-- (\ROM1|memROM~13_combout\) ) ) ) # ( !\memoriaDados|ram~654_combout\ & ( \memoriaDados|ram~656_combout\ & ( (!\ROM1|memROM~24_combout\ & (\memoriaDados|ram~653_combout\ & ((!\ROM1|memROM~13_combout\)))) # (\ROM1|memROM~24_combout\ & 
-- (((\ROM1|memROM~13_combout\) # (\memoriaDados|ram~655_combout\)))) ) ) ) # ( \memoriaDados|ram~654_combout\ & ( !\memoriaDados|ram~656_combout\ & ( (!\ROM1|memROM~24_combout\ & (((\ROM1|memROM~13_combout\)) # (\memoriaDados|ram~653_combout\))) # 
-- (\ROM1|memROM~24_combout\ & (((\memoriaDados|ram~655_combout\ & !\ROM1|memROM~13_combout\)))) ) ) ) # ( !\memoriaDados|ram~654_combout\ & ( !\memoriaDados|ram~656_combout\ & ( (!\ROM1|memROM~13_combout\ & ((!\ROM1|memROM~24_combout\ & 
-- (\memoriaDados|ram~653_combout\)) # (\ROM1|memROM~24_combout\ & ((\memoriaDados|ram~655_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100000000001001111010101000100111010101010010011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~24_combout\,
	datab => \memoriaDados|ALT_INV_ram~653_combout\,
	datac => \memoriaDados|ALT_INV_ram~655_combout\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	datae => \memoriaDados|ALT_INV_ram~654_combout\,
	dataf => \memoriaDados|ALT_INV_ram~656_combout\,
	combout => \memoriaDados|ram~657_combout\);

-- Location: FF_X36_Y7_N1
\memoriaDados|ram~325\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \memoriaDados|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~325_q\);

-- Location: FF_X35_Y3_N25
\memoriaDados|ram~389\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \memoriaDados|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~389_q\);

-- Location: FF_X32_Y3_N40
\memoriaDados|ram~373\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \memoriaDados|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~373_q\);

-- Location: FF_X35_Y7_N22
\memoriaDados|ram~309\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \memoriaDados|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~309_q\);

-- Location: MLABCELL_X37_Y3_N9
\memoriaDados|ram~668\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~668_combout\ = ( \ROM1|memROM~14_combout\ & ( \ROM1|memROM~19_combout\ & ( \memoriaDados|ram~389_q\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( \ROM1|memROM~19_combout\ & ( \memoriaDados|ram~373_q\ ) ) ) # ( \ROM1|memROM~14_combout\ & ( 
-- !\ROM1|memROM~19_combout\ & ( \memoriaDados|ram~325_q\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( !\ROM1|memROM~19_combout\ & ( \memoriaDados|ram~309_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~325_q\,
	datab => \memoriaDados|ALT_INV_ram~389_q\,
	datac => \memoriaDados|ALT_INV_ram~373_q\,
	datad => \memoriaDados|ALT_INV_ram~309_q\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \memoriaDados|ram~668_combout\);

-- Location: FF_X36_Y4_N41
\memoriaDados|ram~501\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \memoriaDados|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~501_q\);

-- Location: FF_X36_Y4_N16
\memoriaDados|ram~437\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \memoriaDados|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~437_q\);

-- Location: LABCELL_X39_Y3_N51
\memoriaDados|ram~453feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~453feeder_combout\ = ( \CPU|REG1|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(6),
	combout => \memoriaDados|ram~453feeder_combout\);

-- Location: FF_X39_Y3_N52
\memoriaDados|ram~453\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~453feeder_combout\,
	ena => \memoriaDados|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~453_q\);

-- Location: FF_X34_Y2_N44
\memoriaDados|ram~517\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \memoriaDados|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~517_q\);

-- Location: MLABCELL_X34_Y2_N42
\memoriaDados|ram~670\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~670_combout\ = ( \memoriaDados|ram~517_q\ & ( \ROM1|memROM~19_combout\ & ( (\ROM1|memROM~14_combout\) # (\memoriaDados|ram~501_q\) ) ) ) # ( !\memoriaDados|ram~517_q\ & ( \ROM1|memROM~19_combout\ & ( (\memoriaDados|ram~501_q\ & 
-- !\ROM1|memROM~14_combout\) ) ) ) # ( \memoriaDados|ram~517_q\ & ( !\ROM1|memROM~19_combout\ & ( (!\ROM1|memROM~14_combout\ & (\memoriaDados|ram~437_q\)) # (\ROM1|memROM~14_combout\ & ((\memoriaDados|ram~453_q\))) ) ) ) # ( !\memoriaDados|ram~517_q\ & ( 
-- !\ROM1|memROM~19_combout\ & ( (!\ROM1|memROM~14_combout\ & (\memoriaDados|ram~437_q\)) # (\ROM1|memROM~14_combout\ & ((\memoriaDados|ram~453_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~501_q\,
	datab => \memoriaDados|ALT_INV_ram~437_q\,
	datac => \memoriaDados|ALT_INV_ram~453_q\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	datae => \memoriaDados|ALT_INV_ram~517_q\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \memoriaDados|ram~670_combout\);

-- Location: LABCELL_X36_Y7_N36
\memoriaDados|ram~333feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~333feeder_combout\ = ( \CPU|REG1|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(6),
	combout => \memoriaDados|ram~333feeder_combout\);

-- Location: FF_X36_Y7_N37
\memoriaDados|ram~333\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~333feeder_combout\,
	ena => \memoriaDados|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~333_q\);

-- Location: FF_X35_Y7_N44
\memoriaDados|ram~317\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \memoriaDados|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~317_q\);

-- Location: FF_X36_Y7_N13
\memoriaDados|ram~397\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \memoriaDados|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~397_q\);

-- Location: FF_X32_Y3_N13
\memoriaDados|ram~381\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \memoriaDados|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~381_q\);

-- Location: MLABCELL_X37_Y6_N0
\memoriaDados|ram~669\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~669_combout\ = ( \ROM1|memROM~14_combout\ & ( \ROM1|memROM~19_combout\ & ( \memoriaDados|ram~397_q\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( \ROM1|memROM~19_combout\ & ( \memoriaDados|ram~381_q\ ) ) ) # ( \ROM1|memROM~14_combout\ & ( 
-- !\ROM1|memROM~19_combout\ & ( \memoriaDados|ram~333_q\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( !\ROM1|memROM~19_combout\ & ( \memoriaDados|ram~317_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~333_q\,
	datab => \memoriaDados|ALT_INV_ram~317_q\,
	datac => \memoriaDados|ALT_INV_ram~397_q\,
	datad => \memoriaDados|ALT_INV_ram~381_q\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \memoriaDados|ram~669_combout\);

-- Location: FF_X37_Y4_N34
\memoriaDados|ram~525\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \memoriaDados|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~525_q\);

-- Location: FF_X37_Y1_N31
\memoriaDados|ram~461\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \memoriaDados|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~461_q\);

-- Location: FF_X39_Y4_N5
\memoriaDados|ram~509\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \memoriaDados|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~509_q\);

-- Location: FF_X39_Y4_N14
\memoriaDados|ram~445\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \memoriaDados|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~445_q\);

-- Location: LABCELL_X39_Y4_N12
\memoriaDados|ram~671\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~671_combout\ = ( \memoriaDados|ram~445_q\ & ( \ROM1|memROM~19_combout\ & ( (!\ROM1|memROM~14_combout\ & ((\memoriaDados|ram~509_q\))) # (\ROM1|memROM~14_combout\ & (\memoriaDados|ram~525_q\)) ) ) ) # ( !\memoriaDados|ram~445_q\ & ( 
-- \ROM1|memROM~19_combout\ & ( (!\ROM1|memROM~14_combout\ & ((\memoriaDados|ram~509_q\))) # (\ROM1|memROM~14_combout\ & (\memoriaDados|ram~525_q\)) ) ) ) # ( \memoriaDados|ram~445_q\ & ( !\ROM1|memROM~19_combout\ & ( (!\ROM1|memROM~14_combout\) # 
-- (\memoriaDados|ram~461_q\) ) ) ) # ( !\memoriaDados|ram~445_q\ & ( !\ROM1|memROM~19_combout\ & ( (\memoriaDados|ram~461_q\ & \ROM1|memROM~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011111111110011001100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~525_q\,
	datab => \memoriaDados|ALT_INV_ram~461_q\,
	datac => \memoriaDados|ALT_INV_ram~509_q\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	datae => \memoriaDados|ALT_INV_ram~445_q\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \memoriaDados|ram~671_combout\);

-- Location: MLABCELL_X37_Y2_N0
\memoriaDados|ram~672\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~672_combout\ = ( \memoriaDados|ram~669_combout\ & ( \memoriaDados|ram~671_combout\ & ( ((!\ROM1|memROM~24_combout\ & (\memoriaDados|ram~668_combout\)) # (\ROM1|memROM~24_combout\ & ((\memoriaDados|ram~670_combout\)))) # 
-- (\ROM1|memROM~13_combout\) ) ) ) # ( !\memoriaDados|ram~669_combout\ & ( \memoriaDados|ram~671_combout\ & ( (!\ROM1|memROM~24_combout\ & (!\ROM1|memROM~13_combout\ & (\memoriaDados|ram~668_combout\))) # (\ROM1|memROM~24_combout\ & 
-- (((\memoriaDados|ram~670_combout\)) # (\ROM1|memROM~13_combout\))) ) ) ) # ( \memoriaDados|ram~669_combout\ & ( !\memoriaDados|ram~671_combout\ & ( (!\ROM1|memROM~24_combout\ & (((\memoriaDados|ram~668_combout\)) # (\ROM1|memROM~13_combout\))) # 
-- (\ROM1|memROM~24_combout\ & (!\ROM1|memROM~13_combout\ & ((\memoriaDados|ram~670_combout\)))) ) ) ) # ( !\memoriaDados|ram~669_combout\ & ( !\memoriaDados|ram~671_combout\ & ( (!\ROM1|memROM~13_combout\ & ((!\ROM1|memROM~24_combout\ & 
-- (\memoriaDados|ram~668_combout\)) # (\ROM1|memROM~24_combout\ & ((\memoriaDados|ram~670_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100001010100110111000011001010111010011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~24_combout\,
	datab => \ROM1|ALT_INV_memROM~13_combout\,
	datac => \memoriaDados|ALT_INV_ram~668_combout\,
	datad => \memoriaDados|ALT_INV_ram~670_combout\,
	datae => \memoriaDados|ALT_INV_ram~669_combout\,
	dataf => \memoriaDados|ALT_INV_ram~671_combout\,
	combout => \memoriaDados|ram~672_combout\);

-- Location: FF_X32_Y4_N20
\memoriaDados|ram~253\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \memoriaDados|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~253_q\);

-- Location: FF_X39_Y5_N37
\memoriaDados|ram~245\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \memoriaDados|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~245_q\);

-- Location: FF_X35_Y1_N10
\memoriaDados|ram~261\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \memoriaDados|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~261_q\);

-- Location: FF_X37_Y4_N8
\memoriaDados|ram~269\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \memoriaDados|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~269_q\);

-- Location: MLABCELL_X37_Y4_N6
\memoriaDados|ram~666\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~666_combout\ = ( \memoriaDados|ram~269_q\ & ( \ROM1|memROM~13_combout\ & ( (\ROM1|memROM~14_combout\) # (\memoriaDados|ram~253_q\) ) ) ) # ( !\memoriaDados|ram~269_q\ & ( \ROM1|memROM~13_combout\ & ( (\memoriaDados|ram~253_q\ & 
-- !\ROM1|memROM~14_combout\) ) ) ) # ( \memoriaDados|ram~269_q\ & ( !\ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~14_combout\ & (\memoriaDados|ram~245_q\)) # (\ROM1|memROM~14_combout\ & ((\memoriaDados|ram~261_q\))) ) ) ) # ( !\memoriaDados|ram~269_q\ & ( 
-- !\ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~14_combout\ & (\memoriaDados|ram~245_q\)) # (\ROM1|memROM~14_combout\ & ((\memoriaDados|ram~261_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~253_q\,
	datab => \memoriaDados|ALT_INV_ram~245_q\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \memoriaDados|ALT_INV_ram~261_q\,
	datae => \memoriaDados|ALT_INV_ram~269_q\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \memoriaDados|ram~666_combout\);

-- Location: FF_X34_Y6_N5
\memoriaDados|ram~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \memoriaDados|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~117_q\);

-- Location: FF_X37_Y4_N49
\memoriaDados|ram~141\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \memoriaDados|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~141_q\);

-- Location: FF_X35_Y6_N7
\memoriaDados|ram~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \memoriaDados|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~125_q\);

-- Location: FF_X34_Y6_N52
\memoriaDados|ram~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \memoriaDados|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~133_q\);

-- Location: MLABCELL_X37_Y4_N51
\memoriaDados|ram~665\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~665_combout\ = ( \ROM1|memROM~14_combout\ & ( \ROM1|memROM~13_combout\ & ( \memoriaDados|ram~141_q\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( \ROM1|memROM~13_combout\ & ( \memoriaDados|ram~125_q\ ) ) ) # ( \ROM1|memROM~14_combout\ & ( 
-- !\ROM1|memROM~13_combout\ & ( \memoriaDados|ram~133_q\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( !\ROM1|memROM~13_combout\ & ( \memoriaDados|ram~117_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~117_q\,
	datab => \memoriaDados|ALT_INV_ram~141_q\,
	datac => \memoriaDados|ALT_INV_ram~125_q\,
	datad => \memoriaDados|ALT_INV_ram~133_q\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \memoriaDados|ram~665_combout\);

-- Location: FF_X35_Y7_N53
\memoriaDados|ram~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \memoriaDados|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~53_q\);

-- Location: FF_X35_Y6_N59
\memoriaDados|ram~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \memoriaDados|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~61_q\);

-- Location: FF_X34_Y6_N34
\memoriaDados|ram~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \memoriaDados|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~69_q\);

-- Location: FF_X35_Y3_N56
\memoriaDados|ram~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \memoriaDados|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~77_q\);

-- Location: LABCELL_X35_Y3_N54
\memoriaDados|ram~663\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~663_combout\ = ( \memoriaDados|ram~77_q\ & ( \ROM1|memROM~13_combout\ & ( (\ROM1|memROM~14_combout\) # (\memoriaDados|ram~61_q\) ) ) ) # ( !\memoriaDados|ram~77_q\ & ( \ROM1|memROM~13_combout\ & ( (\memoriaDados|ram~61_q\ & 
-- !\ROM1|memROM~14_combout\) ) ) ) # ( \memoriaDados|ram~77_q\ & ( !\ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~14_combout\ & (\memoriaDados|ram~53_q\)) # (\ROM1|memROM~14_combout\ & ((\memoriaDados|ram~69_q\))) ) ) ) # ( !\memoriaDados|ram~77_q\ & ( 
-- !\ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~14_combout\ & (\memoriaDados|ram~53_q\)) # (\ROM1|memROM~14_combout\ & ((\memoriaDados|ram~69_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~53_q\,
	datab => \memoriaDados|ALT_INV_ram~61_q\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \memoriaDados|ALT_INV_ram~69_q\,
	datae => \memoriaDados|ALT_INV_ram~77_q\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \memoriaDados|ram~663_combout\);

-- Location: FF_X40_Y4_N5
\memoriaDados|ram~189\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \memoriaDados|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~189_q\);

-- Location: FF_X37_Y3_N31
\memoriaDados|ram~197\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \memoriaDados|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~197_q\);

-- Location: FF_X39_Y1_N31
\memoriaDados|ram~181\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \memoriaDados|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~181_q\);

-- Location: FF_X40_Y4_N20
\memoriaDados|ram~205\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \memoriaDados|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~205_q\);

-- Location: LABCELL_X40_Y4_N18
\memoriaDados|ram~664\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~664_combout\ = ( \memoriaDados|ram~205_q\ & ( \ROM1|memROM~14_combout\ & ( (\ROM1|memROM~13_combout\) # (\memoriaDados|ram~197_q\) ) ) ) # ( !\memoriaDados|ram~205_q\ & ( \ROM1|memROM~14_combout\ & ( (\memoriaDados|ram~197_q\ & 
-- !\ROM1|memROM~13_combout\) ) ) ) # ( \memoriaDados|ram~205_q\ & ( !\ROM1|memROM~14_combout\ & ( (!\ROM1|memROM~13_combout\ & ((\memoriaDados|ram~181_q\))) # (\ROM1|memROM~13_combout\ & (\memoriaDados|ram~189_q\)) ) ) ) # ( !\memoriaDados|ram~205_q\ & ( 
-- !\ROM1|memROM~14_combout\ & ( (!\ROM1|memROM~13_combout\ & ((\memoriaDados|ram~181_q\))) # (\ROM1|memROM~13_combout\ & (\memoriaDados|ram~189_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~189_q\,
	datab => \memoriaDados|ALT_INV_ram~197_q\,
	datac => \ROM1|ALT_INV_memROM~13_combout\,
	datad => \memoriaDados|ALT_INV_ram~181_q\,
	datae => \memoriaDados|ALT_INV_ram~205_q\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \memoriaDados|ram~664_combout\);

-- Location: MLABCELL_X37_Y2_N30
\memoriaDados|ram~667\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~667_combout\ = ( \memoriaDados|ram~663_combout\ & ( \memoriaDados|ram~664_combout\ & ( (!\ROM1|memROM~19_combout\) # ((!\ROM1|memROM~24_combout\ & ((\memoriaDados|ram~665_combout\))) # (\ROM1|memROM~24_combout\ & 
-- (\memoriaDados|ram~666_combout\))) ) ) ) # ( !\memoriaDados|ram~663_combout\ & ( \memoriaDados|ram~664_combout\ & ( (!\ROM1|memROM~19_combout\ & (\ROM1|memROM~24_combout\)) # (\ROM1|memROM~19_combout\ & ((!\ROM1|memROM~24_combout\ & 
-- ((\memoriaDados|ram~665_combout\))) # (\ROM1|memROM~24_combout\ & (\memoriaDados|ram~666_combout\)))) ) ) ) # ( \memoriaDados|ram~663_combout\ & ( !\memoriaDados|ram~664_combout\ & ( (!\ROM1|memROM~19_combout\ & (!\ROM1|memROM~24_combout\)) # 
-- (\ROM1|memROM~19_combout\ & ((!\ROM1|memROM~24_combout\ & ((\memoriaDados|ram~665_combout\))) # (\ROM1|memROM~24_combout\ & (\memoriaDados|ram~666_combout\)))) ) ) ) # ( !\memoriaDados|ram~663_combout\ & ( !\memoriaDados|ram~664_combout\ & ( 
-- (\ROM1|memROM~19_combout\ & ((!\ROM1|memROM~24_combout\ & ((\memoriaDados|ram~665_combout\))) # (\ROM1|memROM~24_combout\ & (\memoriaDados|ram~666_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101100010011100110100100011011001111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~19_combout\,
	datab => \ROM1|ALT_INV_memROM~24_combout\,
	datac => \memoriaDados|ALT_INV_ram~666_combout\,
	datad => \memoriaDados|ALT_INV_ram~665_combout\,
	datae => \memoriaDados|ALT_INV_ram~663_combout\,
	dataf => \memoriaDados|ALT_INV_ram~664_combout\,
	combout => \memoriaDados|ram~667_combout\);

-- Location: MLABCELL_X37_Y2_N24
\memoriaDados|ram~673\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~673_combout\ = ( \memoriaDados|ram~672_combout\ & ( \memoriaDados|ram~667_combout\ & ( ((!\ROM1|memROM~12_combout\ & ((\memoriaDados|ram~657_combout\))) # (\ROM1|memROM~12_combout\ & (\memoriaDados|ram~662_combout\))) # 
-- (\ROM1|memROM~55_combout\) ) ) ) # ( !\memoriaDados|ram~672_combout\ & ( \memoriaDados|ram~667_combout\ & ( (!\ROM1|memROM~12_combout\ & (((\memoriaDados|ram~657_combout\)) # (\ROM1|memROM~55_combout\))) # (\ROM1|memROM~12_combout\ & 
-- (!\ROM1|memROM~55_combout\ & (\memoriaDados|ram~662_combout\))) ) ) ) # ( \memoriaDados|ram~672_combout\ & ( !\memoriaDados|ram~667_combout\ & ( (!\ROM1|memROM~12_combout\ & (!\ROM1|memROM~55_combout\ & ((\memoriaDados|ram~657_combout\)))) # 
-- (\ROM1|memROM~12_combout\ & (((\memoriaDados|ram~662_combout\)) # (\ROM1|memROM~55_combout\))) ) ) ) # ( !\memoriaDados|ram~672_combout\ & ( !\memoriaDados|ram~667_combout\ & ( (!\ROM1|memROM~55_combout\ & ((!\ROM1|memROM~12_combout\ & 
-- ((\memoriaDados|ram~657_combout\))) # (\ROM1|memROM~12_combout\ & (\memoriaDados|ram~662_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000101011001110100100110101011100011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~12_combout\,
	datab => \ROM1|ALT_INV_memROM~55_combout\,
	datac => \memoriaDados|ALT_INV_ram~662_combout\,
	datad => \memoriaDados|ALT_INV_ram~657_combout\,
	datae => \memoriaDados|ALT_INV_ram~672_combout\,
	dataf => \memoriaDados|ALT_INV_ram~667_combout\,
	combout => \memoriaDados|ram~673_combout\);

-- Location: LABCELL_X36_Y2_N0
\CPU|MUX1|saida_MUX[6]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[6]~5_combout\ = ( \memoriaDados|ram~673_combout\ & ( (!\AND_ENABLE_BUFFER_8BITS~2_combout\) # (\SW[6]~input_o\) ) ) # ( !\memoriaDados|ram~673_combout\ & ( (\SW[6]~input_o\ & \AND_ENABLE_BUFFER_8BITS~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[6]~input_o\,
	datad => \ALT_INV_AND_ENABLE_BUFFER_8BITS~2_combout\,
	dataf => \memoriaDados|ALT_INV_ram~673_combout\,
	combout => \CPU|MUX1|saida_MUX[6]~5_combout\);

-- Location: IOIBUF_X36_Y0_N52
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: LABCELL_X36_Y5_N27
\ROM1|memROM~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~27_combout\ = ( \ROM1|memROM~21_combout\ & ( ((\ROM1|memROM~22_combout\ & \ROM1|memROM~20_combout\)) # (\ROM1|memROM~23_combout\) ) ) # ( !\ROM1|memROM~21_combout\ & ( (\ROM1|memROM~22_combout\ & \ROM1|memROM~20_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001101010111010101110101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~23_combout\,
	datab => \ROM1|ALT_INV_memROM~22_combout\,
	datac => \ROM1|ALT_INV_memROM~20_combout\,
	dataf => \ROM1|ALT_INV_memROM~21_combout\,
	combout => \ROM1|memROM~27_combout\);

-- Location: IOIBUF_X36_Y0_N35
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: LABCELL_X39_Y5_N45
\memoriaDados|ram~339feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~339feeder_combout\ = ( \CPU|REG1|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(4),
	combout => \memoriaDados|ram~339feeder_combout\);

-- Location: FF_X39_Y5_N46
\memoriaDados|ram~339\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~339feeder_combout\,
	ena => \memoriaDados|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~339_q\);

-- Location: FF_X35_Y2_N58
\memoriaDados|ram~275\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \memoriaDados|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~275_q\);

-- Location: LABCELL_X31_Y3_N39
\memoriaDados|ram~283feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~283feeder_combout\ = ( \CPU|REG1|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(4),
	combout => \memoriaDados|ram~283feeder_combout\);

-- Location: FF_X31_Y3_N40
\memoriaDados|ram~283\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~283feeder_combout\,
	ena => \memoriaDados|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~283_q\);

-- Location: FF_X34_Y4_N50
\memoriaDados|ram~347\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \memoriaDados|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~347_q\);

-- Location: MLABCELL_X34_Y4_N48
\memoriaDados|ram~616\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~616_combout\ = ( \memoriaDados|ram~347_q\ & ( \ROM1|memROM~13_combout\ & ( (\ROM1|memROM~19_combout\) # (\memoriaDados|ram~283_q\) ) ) ) # ( !\memoriaDados|ram~347_q\ & ( \ROM1|memROM~13_combout\ & ( (\memoriaDados|ram~283_q\ & 
-- !\ROM1|memROM~19_combout\) ) ) ) # ( \memoriaDados|ram~347_q\ & ( !\ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~19_combout\ & ((\memoriaDados|ram~275_q\))) # (\ROM1|memROM~19_combout\ & (\memoriaDados|ram~339_q\)) ) ) ) # ( !\memoriaDados|ram~347_q\ & ( 
-- !\ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~19_combout\ & ((\memoriaDados|ram~275_q\))) # (\ROM1|memROM~19_combout\ & (\memoriaDados|ram~339_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~339_q\,
	datab => \memoriaDados|ALT_INV_ram~275_q\,
	datac => \memoriaDados|ALT_INV_ram~283_q\,
	datad => \ROM1|ALT_INV_memROM~19_combout\,
	datae => \memoriaDados|ALT_INV_ram~347_q\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \memoriaDados|ram~616_combout\);

-- Location: FF_X35_Y7_N34
\memoriaDados|ram~307\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \memoriaDados|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~307_q\);

-- Location: FF_X34_Y5_N10
\memoriaDados|ram~371\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \memoriaDados|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~371_q\);

-- Location: FF_X34_Y5_N20
\memoriaDados|ram~315\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \memoriaDados|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~315_q\);

-- Location: FF_X34_Y4_N14
\memoriaDados|ram~379\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \memoriaDados|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~379_q\);

-- Location: MLABCELL_X34_Y4_N12
\memoriaDados|ram~617\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~617_combout\ = ( \memoriaDados|ram~379_q\ & ( \ROM1|memROM~13_combout\ & ( (\ROM1|memROM~19_combout\) # (\memoriaDados|ram~315_q\) ) ) ) # ( !\memoriaDados|ram~379_q\ & ( \ROM1|memROM~13_combout\ & ( (\memoriaDados|ram~315_q\ & 
-- !\ROM1|memROM~19_combout\) ) ) ) # ( \memoriaDados|ram~379_q\ & ( !\ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~19_combout\ & (\memoriaDados|ram~307_q\)) # (\ROM1|memROM~19_combout\ & ((\memoriaDados|ram~371_q\))) ) ) ) # ( !\memoriaDados|ram~379_q\ & ( 
-- !\ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~19_combout\ & (\memoriaDados|ram~307_q\)) # (\ROM1|memROM~19_combout\ & ((\memoriaDados|ram~371_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~307_q\,
	datab => \memoriaDados|ALT_INV_ram~371_q\,
	datac => \memoriaDados|ALT_INV_ram~315_q\,
	datad => \ROM1|ALT_INV_memROM~19_combout\,
	datae => \memoriaDados|ALT_INV_ram~379_q\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \memoriaDados|ram~617_combout\);

-- Location: FF_X39_Y4_N40
\memoriaDados|ram~443\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \memoriaDados|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~443_q\);

-- Location: FF_X36_Y4_N34
\memoriaDados|ram~435\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \memoriaDados|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~435_q\);

-- Location: FF_X36_Y4_N22
\memoriaDados|ram~499\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \memoriaDados|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~499_q\);

-- Location: FF_X34_Y4_N2
\memoriaDados|ram~507\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \memoriaDados|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~507_q\);

-- Location: MLABCELL_X34_Y4_N0
\memoriaDados|ram~619\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~619_combout\ = ( \memoriaDados|ram~507_q\ & ( \ROM1|memROM~13_combout\ & ( (\ROM1|memROM~19_combout\) # (\memoriaDados|ram~443_q\) ) ) ) # ( !\memoriaDados|ram~507_q\ & ( \ROM1|memROM~13_combout\ & ( (\memoriaDados|ram~443_q\ & 
-- !\ROM1|memROM~19_combout\) ) ) ) # ( \memoriaDados|ram~507_q\ & ( !\ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~19_combout\ & (\memoriaDados|ram~435_q\)) # (\ROM1|memROM~19_combout\ & ((\memoriaDados|ram~499_q\))) ) ) ) # ( !\memoriaDados|ram~507_q\ & ( 
-- !\ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~19_combout\ & (\memoriaDados|ram~435_q\)) # (\ROM1|memROM~19_combout\ & ((\memoriaDados|ram~499_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111101000100010001000111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~443_q\,
	datab => \ROM1|ALT_INV_memROM~19_combout\,
	datac => \memoriaDados|ALT_INV_ram~435_q\,
	datad => \memoriaDados|ALT_INV_ram~499_q\,
	datae => \memoriaDados|ALT_INV_ram~507_q\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \memoriaDados|ram~619_combout\);

-- Location: MLABCELL_X34_Y2_N18
\memoriaDados|ram~403feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~403feeder_combout\ = ( \CPU|REG1|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(4),
	combout => \memoriaDados|ram~403feeder_combout\);

-- Location: FF_X34_Y2_N20
\memoriaDados|ram~403\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~403feeder_combout\,
	ena => \memoriaDados|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~403_q\);

-- Location: LABCELL_X39_Y2_N18
\memoriaDados|ram~411feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~411feeder_combout\ = ( \CPU|REG1|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(4),
	combout => \memoriaDados|ram~411feeder_combout\);

-- Location: FF_X39_Y2_N20
\memoriaDados|ram~411\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~411feeder_combout\,
	ena => \memoriaDados|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~411_q\);

-- Location: FF_X36_Y4_N44
\memoriaDados|ram~467\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \memoriaDados|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~467_q\);

-- Location: FF_X39_Y4_N59
\memoriaDados|ram~475\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \memoriaDados|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~475_q\);

-- Location: LABCELL_X39_Y4_N57
\memoriaDados|ram~618\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~618_combout\ = ( \memoriaDados|ram~475_q\ & ( \ROM1|memROM~19_combout\ & ( (\ROM1|memROM~13_combout\) # (\memoriaDados|ram~467_q\) ) ) ) # ( !\memoriaDados|ram~475_q\ & ( \ROM1|memROM~19_combout\ & ( (\memoriaDados|ram~467_q\ & 
-- !\ROM1|memROM~13_combout\) ) ) ) # ( \memoriaDados|ram~475_q\ & ( !\ROM1|memROM~19_combout\ & ( (!\ROM1|memROM~13_combout\ & (\memoriaDados|ram~403_q\)) # (\ROM1|memROM~13_combout\ & ((\memoriaDados|ram~411_q\))) ) ) ) # ( !\memoriaDados|ram~475_q\ & ( 
-- !\ROM1|memROM~19_combout\ & ( (!\ROM1|memROM~13_combout\ & (\memoriaDados|ram~403_q\)) # (\ROM1|memROM~13_combout\ & ((\memoriaDados|ram~411_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~403_q\,
	datab => \memoriaDados|ALT_INV_ram~411_q\,
	datac => \memoriaDados|ALT_INV_ram~467_q\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	datae => \memoriaDados|ALT_INV_ram~475_q\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \memoriaDados|ram~618_combout\);

-- Location: MLABCELL_X34_Y4_N54
\memoriaDados|ram~620\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~620_combout\ = ( \memoriaDados|ram~619_combout\ & ( \memoriaDados|ram~618_combout\ & ( ((!\ROM1|memROM~55_combout\ & (\memoriaDados|ram~616_combout\)) # (\ROM1|memROM~55_combout\ & ((\memoriaDados|ram~617_combout\)))) # 
-- (\ROM1|memROM~24_combout\) ) ) ) # ( !\memoriaDados|ram~619_combout\ & ( \memoriaDados|ram~618_combout\ & ( (!\ROM1|memROM~55_combout\ & (((\memoriaDados|ram~616_combout\)) # (\ROM1|memROM~24_combout\))) # (\ROM1|memROM~55_combout\ & 
-- (!\ROM1|memROM~24_combout\ & ((\memoriaDados|ram~617_combout\)))) ) ) ) # ( \memoriaDados|ram~619_combout\ & ( !\memoriaDados|ram~618_combout\ & ( (!\ROM1|memROM~55_combout\ & (!\ROM1|memROM~24_combout\ & (\memoriaDados|ram~616_combout\))) # 
-- (\ROM1|memROM~55_combout\ & (((\memoriaDados|ram~617_combout\)) # (\ROM1|memROM~24_combout\))) ) ) ) # ( !\memoriaDados|ram~619_combout\ & ( !\memoriaDados|ram~618_combout\ & ( (!\ROM1|memROM~24_combout\ & ((!\ROM1|memROM~55_combout\ & 
-- (\memoriaDados|ram~616_combout\)) # (\ROM1|memROM~55_combout\ & ((\memoriaDados|ram~617_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000110010101110100101010011011100011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~55_combout\,
	datab => \ROM1|ALT_INV_memROM~24_combout\,
	datac => \memoriaDados|ALT_INV_ram~616_combout\,
	datad => \memoriaDados|ALT_INV_ram~617_combout\,
	datae => \memoriaDados|ALT_INV_ram~619_combout\,
	dataf => \memoriaDados|ALT_INV_ram~618_combout\,
	combout => \memoriaDados|ram~620_combout\);

-- Location: FF_X35_Y1_N46
\memoriaDados|ram~259\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \memoriaDados|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~259_q\);

-- Location: FF_X35_Y1_N32
\memoriaDados|ram~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \memoriaDados|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~131_q\);

-- Location: FF_X32_Y6_N32
\memoriaDados|ram~139\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \memoriaDados|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~139_q\);

-- Location: FF_X32_Y4_N26
\memoriaDados|ram~267\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \memoriaDados|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~267_q\);

-- Location: LABCELL_X32_Y4_N24
\memoriaDados|ram~624\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~624_combout\ = ( \memoriaDados|ram~267_q\ & ( \ROM1|memROM~13_combout\ & ( (\ROM1|memROM~24_combout\) # (\memoriaDados|ram~139_q\) ) ) ) # ( !\memoriaDados|ram~267_q\ & ( \ROM1|memROM~13_combout\ & ( (\memoriaDados|ram~139_q\ & 
-- !\ROM1|memROM~24_combout\) ) ) ) # ( \memoriaDados|ram~267_q\ & ( !\ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~24_combout\ & ((\memoriaDados|ram~131_q\))) # (\ROM1|memROM~24_combout\ & (\memoriaDados|ram~259_q\)) ) ) ) # ( !\memoriaDados|ram~267_q\ & ( 
-- !\ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~24_combout\ & ((\memoriaDados|ram~131_q\))) # (\ROM1|memROM~24_combout\ & (\memoriaDados|ram~259_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~259_q\,
	datab => \memoriaDados|ALT_INV_ram~131_q\,
	datac => \memoriaDados|ALT_INV_ram~139_q\,
	datad => \ROM1|ALT_INV_memROM~24_combout\,
	datae => \memoriaDados|ALT_INV_ram~267_q\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \memoriaDados|ram~624_combout\);

-- Location: FF_X31_Y4_N35
\memoriaDados|ram~227\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \memoriaDados|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~227_q\);

-- Location: FF_X32_Y1_N16
\memoriaDados|ram~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \memoriaDados|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~99_q\);

-- Location: FF_X32_Y1_N40
\memoriaDados|ram~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \memoriaDados|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~107_q\);

-- Location: FF_X31_Y4_N50
\memoriaDados|ram~235\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \memoriaDados|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~235_q\);

-- Location: LABCELL_X31_Y4_N48
\memoriaDados|ram~623\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~623_combout\ = ( \memoriaDados|ram~235_q\ & ( \ROM1|memROM~13_combout\ & ( (\ROM1|memROM~24_combout\) # (\memoriaDados|ram~107_q\) ) ) ) # ( !\memoriaDados|ram~235_q\ & ( \ROM1|memROM~13_combout\ & ( (\memoriaDados|ram~107_q\ & 
-- !\ROM1|memROM~24_combout\) ) ) ) # ( \memoriaDados|ram~235_q\ & ( !\ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~24_combout\ & ((\memoriaDados|ram~99_q\))) # (\ROM1|memROM~24_combout\ & (\memoriaDados|ram~227_q\)) ) ) ) # ( !\memoriaDados|ram~235_q\ & ( 
-- !\ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~24_combout\ & ((\memoriaDados|ram~99_q\))) # (\ROM1|memROM~24_combout\ & (\memoriaDados|ram~227_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~227_q\,
	datab => \memoriaDados|ALT_INV_ram~99_q\,
	datac => \memoriaDados|ALT_INV_ram~107_q\,
	datad => \ROM1|ALT_INV_memROM~24_combout\,
	datae => \memoriaDados|ALT_INV_ram~235_q\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \memoriaDados|ram~623_combout\);

-- Location: FF_X35_Y3_N40
\memoriaDados|ram~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \memoriaDados|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~75_q\);

-- Location: FF_X34_Y6_N14
\memoriaDados|ram~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \memoriaDados|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~67_q\);

-- Location: FF_X37_Y3_N46
\memoriaDados|ram~195\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \memoriaDados|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~195_q\);

-- Location: FF_X32_Y6_N37
\memoriaDados|ram~203\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \memoriaDados|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~203_q\);

-- Location: LABCELL_X35_Y6_N42
\memoriaDados|ram~622\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~622_combout\ = ( \ROM1|memROM~24_combout\ & ( \ROM1|memROM~13_combout\ & ( \memoriaDados|ram~203_q\ ) ) ) # ( !\ROM1|memROM~24_combout\ & ( \ROM1|memROM~13_combout\ & ( \memoriaDados|ram~75_q\ ) ) ) # ( \ROM1|memROM~24_combout\ & ( 
-- !\ROM1|memROM~13_combout\ & ( \memoriaDados|ram~195_q\ ) ) ) # ( !\ROM1|memROM~24_combout\ & ( !\ROM1|memROM~13_combout\ & ( \memoriaDados|ram~67_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~75_q\,
	datab => \memoriaDados|ALT_INV_ram~67_q\,
	datac => \memoriaDados|ALT_INV_ram~195_q\,
	datad => \memoriaDados|ALT_INV_ram~203_q\,
	datae => \ROM1|ALT_INV_memROM~24_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \memoriaDados|ram~622_combout\);

-- Location: FF_X31_Y6_N52
\memoriaDados|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \memoriaDados|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~35_q\);

-- Location: FF_X40_Y6_N17
\memoriaDados|ram~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \memoriaDados|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~43_q\);

-- Location: LABCELL_X41_Y5_N51
\memoriaDados|ram~163feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~163feeder_combout\ = ( \CPU|REG1|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(4),
	combout => \memoriaDados|ram~163feeder_combout\);

-- Location: FF_X41_Y5_N52
\memoriaDados|ram~163\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~163feeder_combout\,
	ena => \memoriaDados|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~163_q\);

-- Location: FF_X40_Y6_N44
\memoriaDados|ram~171\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \memoriaDados|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~171_q\);

-- Location: LABCELL_X40_Y6_N42
\memoriaDados|ram~621\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~621_combout\ = ( \memoriaDados|ram~171_q\ & ( \ROM1|memROM~13_combout\ & ( (\ROM1|memROM~24_combout\) # (\memoriaDados|ram~43_q\) ) ) ) # ( !\memoriaDados|ram~171_q\ & ( \ROM1|memROM~13_combout\ & ( (\memoriaDados|ram~43_q\ & 
-- !\ROM1|memROM~24_combout\) ) ) ) # ( \memoriaDados|ram~171_q\ & ( !\ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~24_combout\ & (\memoriaDados|ram~35_q\)) # (\ROM1|memROM~24_combout\ & ((\memoriaDados|ram~163_q\))) ) ) ) # ( !\memoriaDados|ram~171_q\ & ( 
-- !\ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~24_combout\ & (\memoriaDados|ram~35_q\)) # (\ROM1|memROM~24_combout\ & ((\memoriaDados|ram~163_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~35_q\,
	datab => \memoriaDados|ALT_INV_ram~43_q\,
	datac => \ROM1|ALT_INV_memROM~24_combout\,
	datad => \memoriaDados|ALT_INV_ram~163_q\,
	datae => \memoriaDados|ALT_INV_ram~171_q\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \memoriaDados|ram~621_combout\);

-- Location: MLABCELL_X34_Y4_N30
\memoriaDados|ram~625\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~625_combout\ = ( \memoriaDados|ram~622_combout\ & ( \memoriaDados|ram~621_combout\ & ( (!\ROM1|memROM~19_combout\) # ((!\ROM1|memROM~55_combout\ & ((\memoriaDados|ram~623_combout\))) # (\ROM1|memROM~55_combout\ & 
-- (\memoriaDados|ram~624_combout\))) ) ) ) # ( !\memoriaDados|ram~622_combout\ & ( \memoriaDados|ram~621_combout\ & ( (!\ROM1|memROM~55_combout\ & ((!\ROM1|memROM~19_combout\) # ((\memoriaDados|ram~623_combout\)))) # (\ROM1|memROM~55_combout\ & 
-- (\ROM1|memROM~19_combout\ & (\memoriaDados|ram~624_combout\))) ) ) ) # ( \memoriaDados|ram~622_combout\ & ( !\memoriaDados|ram~621_combout\ & ( (!\ROM1|memROM~55_combout\ & (\ROM1|memROM~19_combout\ & ((\memoriaDados|ram~623_combout\)))) # 
-- (\ROM1|memROM~55_combout\ & ((!\ROM1|memROM~19_combout\) # ((\memoriaDados|ram~624_combout\)))) ) ) ) # ( !\memoriaDados|ram~622_combout\ & ( !\memoriaDados|ram~621_combout\ & ( (\ROM1|memROM~19_combout\ & ((!\ROM1|memROM~55_combout\ & 
-- ((\memoriaDados|ram~623_combout\))) # (\ROM1|memROM~55_combout\ & (\memoriaDados|ram~624_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011010001010110011110001001101010111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~55_combout\,
	datab => \ROM1|ALT_INV_memROM~19_combout\,
	datac => \memoriaDados|ALT_INV_ram~624_combout\,
	datad => \memoriaDados|ALT_INV_ram~623_combout\,
	datae => \memoriaDados|ALT_INV_ram~622_combout\,
	dataf => \memoriaDados|ALT_INV_ram~621_combout\,
	combout => \memoriaDados|ram~625_combout\);

-- Location: FF_X32_Y4_N50
\memoriaDados|ram~219\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \memoriaDados|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~219_q\);

-- Location: FF_X31_Y4_N47
\memoriaDados|ram~211\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \memoriaDados|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~211_q\);

-- Location: LABCELL_X39_Y5_N6
\memoriaDados|ram~243feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~243feeder_combout\ = ( \CPU|REG1|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(4),
	combout => \memoriaDados|ram~243feeder_combout\);

-- Location: FF_X39_Y5_N7
\memoriaDados|ram~243\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~243feeder_combout\,
	ena => \memoriaDados|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~243_q\);

-- Location: FF_X32_Y4_N2
\memoriaDados|ram~251\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \memoriaDados|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~251_q\);

-- Location: LABCELL_X32_Y4_N0
\memoriaDados|ram~614\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~614_combout\ = ( \memoriaDados|ram~251_q\ & ( \ROM1|memROM~13_combout\ & ( (\ROM1|memROM~55_combout\) # (\memoriaDados|ram~219_q\) ) ) ) # ( !\memoriaDados|ram~251_q\ & ( \ROM1|memROM~13_combout\ & ( (\memoriaDados|ram~219_q\ & 
-- !\ROM1|memROM~55_combout\) ) ) ) # ( \memoriaDados|ram~251_q\ & ( !\ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~55_combout\ & (\memoriaDados|ram~211_q\)) # (\ROM1|memROM~55_combout\ & ((\memoriaDados|ram~243_q\))) ) ) ) # ( !\memoriaDados|ram~251_q\ & ( 
-- !\ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~55_combout\ & (\memoriaDados|ram~211_q\)) # (\ROM1|memROM~55_combout\ & ((\memoriaDados|ram~243_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~219_q\,
	datab => \memoriaDados|ALT_INV_ram~211_q\,
	datac => \ROM1|ALT_INV_memROM~55_combout\,
	datad => \memoriaDados|ALT_INV_ram~243_q\,
	datae => \memoriaDados|ALT_INV_ram~251_q\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \memoriaDados|ram~614_combout\);

-- Location: FF_X32_Y1_N26
\memoriaDados|ram~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \memoriaDados|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~83_q\);

-- Location: FF_X34_Y1_N31
\memoriaDados|ram~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \memoriaDados|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~91_q\);

-- Location: FF_X34_Y6_N37
\memoriaDados|ram~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \memoriaDados|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~115_q\);

-- Location: FF_X35_Y6_N38
\memoriaDados|ram~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \memoriaDados|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~123_q\);

-- Location: LABCELL_X35_Y6_N36
\memoriaDados|ram~613\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~613_combout\ = ( \memoriaDados|ram~123_q\ & ( \ROM1|memROM~55_combout\ & ( (\ROM1|memROM~13_combout\) # (\memoriaDados|ram~115_q\) ) ) ) # ( !\memoriaDados|ram~123_q\ & ( \ROM1|memROM~55_combout\ & ( (\memoriaDados|ram~115_q\ & 
-- !\ROM1|memROM~13_combout\) ) ) ) # ( \memoriaDados|ram~123_q\ & ( !\ROM1|memROM~55_combout\ & ( (!\ROM1|memROM~13_combout\ & (\memoriaDados|ram~83_q\)) # (\ROM1|memROM~13_combout\ & ((\memoriaDados|ram~91_q\))) ) ) ) # ( !\memoriaDados|ram~123_q\ & ( 
-- !\ROM1|memROM~55_combout\ & ( (!\ROM1|memROM~13_combout\ & (\memoriaDados|ram~83_q\)) # (\ROM1|memROM~13_combout\ & ((\memoriaDados|ram~91_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~83_q\,
	datab => \memoriaDados|ALT_INV_ram~91_q\,
	datac => \memoriaDados|ALT_INV_ram~115_q\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	datae => \memoriaDados|ALT_INV_ram~123_q\,
	dataf => \ROM1|ALT_INV_memROM~55_combout\,
	combout => \memoriaDados|ram~613_combout\);

-- Location: FF_X36_Y6_N46
\memoriaDados|ram~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \memoriaDados|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~51_q\);

-- Location: FF_X36_Y5_N53
\memoriaDados|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \memoriaDados|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~19_q\);

-- Location: LABCELL_X31_Y3_N54
\memoriaDados|ram~27feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~27feeder_combout\ = ( \CPU|REG1|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(4),
	combout => \memoriaDados|ram~27feeder_combout\);

-- Location: FF_X31_Y3_N55
\memoriaDados|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~27feeder_combout\,
	ena => \memoriaDados|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~27_q\);

-- Location: FF_X35_Y6_N2
\memoriaDados|ram~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \memoriaDados|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~59_q\);

-- Location: LABCELL_X35_Y6_N0
\memoriaDados|ram~611\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~611_combout\ = ( \memoriaDados|ram~59_q\ & ( \ROM1|memROM~55_combout\ & ( (\ROM1|memROM~13_combout\) # (\memoriaDados|ram~51_q\) ) ) ) # ( !\memoriaDados|ram~59_q\ & ( \ROM1|memROM~55_combout\ & ( (\memoriaDados|ram~51_q\ & 
-- !\ROM1|memROM~13_combout\) ) ) ) # ( \memoriaDados|ram~59_q\ & ( !\ROM1|memROM~55_combout\ & ( (!\ROM1|memROM~13_combout\ & (\memoriaDados|ram~19_q\)) # (\ROM1|memROM~13_combout\ & ((\memoriaDados|ram~27_q\))) ) ) ) # ( !\memoriaDados|ram~59_q\ & ( 
-- !\ROM1|memROM~55_combout\ & ( (!\ROM1|memROM~13_combout\ & (\memoriaDados|ram~19_q\)) # (\ROM1|memROM~13_combout\ & ((\memoriaDados|ram~27_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~51_q\,
	datab => \memoriaDados|ALT_INV_ram~19_q\,
	datac => \ROM1|ALT_INV_memROM~13_combout\,
	datad => \memoriaDados|ALT_INV_ram~27_q\,
	datae => \memoriaDados|ALT_INV_ram~59_q\,
	dataf => \ROM1|ALT_INV_memROM~55_combout\,
	combout => \memoriaDados|ram~611_combout\);

-- Location: FF_X39_Y6_N41
\memoriaDados|ram~155\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \memoriaDados|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~155_q\);

-- Location: LABCELL_X40_Y5_N24
\memoriaDados|ram~147feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~147feeder_combout\ = ( \CPU|REG1|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(4),
	combout => \memoriaDados|ram~147feeder_combout\);

-- Location: FF_X40_Y5_N26
\memoriaDados|ram~147\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~147feeder_combout\,
	ena => \memoriaDados|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~147_q\);

-- Location: FF_X37_Y7_N46
\memoriaDados|ram~179\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \memoriaDados|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~179_q\);

-- Location: FF_X32_Y6_N56
\memoriaDados|ram~187\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \memoriaDados|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~187_q\);

-- Location: LABCELL_X32_Y6_N54
\memoriaDados|ram~612\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~612_combout\ = ( \memoriaDados|ram~187_q\ & ( \ROM1|memROM~55_combout\ & ( (\ROM1|memROM~13_combout\) # (\memoriaDados|ram~179_q\) ) ) ) # ( !\memoriaDados|ram~187_q\ & ( \ROM1|memROM~55_combout\ & ( (\memoriaDados|ram~179_q\ & 
-- !\ROM1|memROM~13_combout\) ) ) ) # ( \memoriaDados|ram~187_q\ & ( !\ROM1|memROM~55_combout\ & ( (!\ROM1|memROM~13_combout\ & ((\memoriaDados|ram~147_q\))) # (\ROM1|memROM~13_combout\ & (\memoriaDados|ram~155_q\)) ) ) ) # ( !\memoriaDados|ram~187_q\ & ( 
-- !\ROM1|memROM~55_combout\ & ( (!\ROM1|memROM~13_combout\ & ((\memoriaDados|ram~147_q\))) # (\ROM1|memROM~13_combout\ & (\memoriaDados|ram~155_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~155_q\,
	datab => \memoriaDados|ALT_INV_ram~147_q\,
	datac => \memoriaDados|ALT_INV_ram~179_q\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	datae => \memoriaDados|ALT_INV_ram~187_q\,
	dataf => \ROM1|ALT_INV_memROM~55_combout\,
	combout => \memoriaDados|ram~612_combout\);

-- Location: MLABCELL_X34_Y4_N36
\memoriaDados|ram~615\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~615_combout\ = ( \memoriaDados|ram~611_combout\ & ( \memoriaDados|ram~612_combout\ & ( (!\ROM1|memROM~19_combout\) # ((!\ROM1|memROM~24_combout\ & ((\memoriaDados|ram~613_combout\))) # (\ROM1|memROM~24_combout\ & 
-- (\memoriaDados|ram~614_combout\))) ) ) ) # ( !\memoriaDados|ram~611_combout\ & ( \memoriaDados|ram~612_combout\ & ( (!\ROM1|memROM~24_combout\ & (((\memoriaDados|ram~613_combout\ & \ROM1|memROM~19_combout\)))) # (\ROM1|memROM~24_combout\ & 
-- (((!\ROM1|memROM~19_combout\)) # (\memoriaDados|ram~614_combout\))) ) ) ) # ( \memoriaDados|ram~611_combout\ & ( !\memoriaDados|ram~612_combout\ & ( (!\ROM1|memROM~24_combout\ & (((!\ROM1|memROM~19_combout\) # (\memoriaDados|ram~613_combout\)))) # 
-- (\ROM1|memROM~24_combout\ & (\memoriaDados|ram~614_combout\ & ((\ROM1|memROM~19_combout\)))) ) ) ) # ( !\memoriaDados|ram~611_combout\ & ( !\memoriaDados|ram~612_combout\ & ( (\ROM1|memROM~19_combout\ & ((!\ROM1|memROM~24_combout\ & 
-- ((\memoriaDados|ram~613_combout\))) # (\ROM1|memROM~24_combout\ & (\memoriaDados|ram~614_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011101110011000001110100110011000111011111111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~614_combout\,
	datab => \ROM1|ALT_INV_memROM~24_combout\,
	datac => \memoriaDados|ALT_INV_ram~613_combout\,
	datad => \ROM1|ALT_INV_memROM~19_combout\,
	datae => \memoriaDados|ALT_INV_ram~611_combout\,
	dataf => \memoriaDados|ALT_INV_ram~612_combout\,
	combout => \memoriaDados|ram~615_combout\);

-- Location: FF_X35_Y3_N19
\memoriaDados|ram~387\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \memoriaDados|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~387_q\);

-- Location: FF_X31_Y6_N19
\memoriaDados|ram~363\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \memoriaDados|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~363_q\);

-- Location: MLABCELL_X34_Y2_N54
\memoriaDados|ram~355feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~355feeder_combout\ = ( \CPU|REG1|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(4),
	combout => \memoriaDados|ram~355feeder_combout\);

-- Location: FF_X34_Y2_N56
\memoriaDados|ram~355\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~355feeder_combout\,
	ena => \memoriaDados|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~355_q\);

-- Location: FF_X31_Y2_N13
\memoriaDados|ram~395\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \memoriaDados|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~395_q\);

-- Location: LABCELL_X32_Y4_N21
\memoriaDados|ram~628\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~628_combout\ = ( \ROM1|memROM~13_combout\ & ( \ROM1|memROM~55_combout\ & ( \memoriaDados|ram~395_q\ ) ) ) # ( !\ROM1|memROM~13_combout\ & ( \ROM1|memROM~55_combout\ & ( \memoriaDados|ram~387_q\ ) ) ) # ( \ROM1|memROM~13_combout\ & ( 
-- !\ROM1|memROM~55_combout\ & ( \memoriaDados|ram~363_q\ ) ) ) # ( !\ROM1|memROM~13_combout\ & ( !\ROM1|memROM~55_combout\ & ( \memoriaDados|ram~355_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~387_q\,
	datab => \memoriaDados|ALT_INV_ram~363_q\,
	datac => \memoriaDados|ALT_INV_ram~355_q\,
	datad => \memoriaDados|ALT_INV_ram~395_q\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~55_combout\,
	combout => \memoriaDados|ram~628_combout\);

-- Location: FF_X32_Y5_N47
\memoriaDados|ram~299\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \memoriaDados|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~299_q\);

-- Location: FF_X36_Y7_N56
\memoriaDados|ram~331\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \memoriaDados|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~331_q\);

-- Location: FF_X32_Y5_N58
\memoriaDados|ram~291\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \memoriaDados|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~291_q\);

-- Location: FF_X36_Y7_N43
\memoriaDados|ram~323\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \memoriaDados|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~323_q\);

-- Location: MLABCELL_X34_Y5_N3
\memoriaDados|ram~626\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~626_combout\ = ( \ROM1|memROM~13_combout\ & ( \ROM1|memROM~55_combout\ & ( \memoriaDados|ram~331_q\ ) ) ) # ( !\ROM1|memROM~13_combout\ & ( \ROM1|memROM~55_combout\ & ( \memoriaDados|ram~323_q\ ) ) ) # ( \ROM1|memROM~13_combout\ & ( 
-- !\ROM1|memROM~55_combout\ & ( \memoriaDados|ram~299_q\ ) ) ) # ( !\ROM1|memROM~13_combout\ & ( !\ROM1|memROM~55_combout\ & ( \memoriaDados|ram~291_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~299_q\,
	datab => \memoriaDados|ALT_INV_ram~331_q\,
	datac => \memoriaDados|ALT_INV_ram~291_q\,
	datad => \memoriaDados|ALT_INV_ram~323_q\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~55_combout\,
	combout => \memoriaDados|ram~626_combout\);

-- Location: FF_X29_Y4_N19
\memoriaDados|ram~515\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \memoriaDados|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~515_q\);

-- Location: FF_X29_Y4_N13
\memoriaDados|ram~483\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \memoriaDados|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~483_q\);

-- Location: LABCELL_X31_Y5_N42
\memoriaDados|ram~491feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~491feeder_combout\ = ( \CPU|REG1|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(4),
	combout => \memoriaDados|ram~491feeder_combout\);

-- Location: FF_X31_Y5_N43
\memoriaDados|ram~491\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~491feeder_combout\,
	ena => \memoriaDados|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~491_q\);

-- Location: FF_X29_Y4_N37
\memoriaDados|ram~523\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \memoriaDados|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~523_q\);

-- Location: LABCELL_X32_Y4_N45
\memoriaDados|ram~629\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~629_combout\ = ( \ROM1|memROM~13_combout\ & ( \ROM1|memROM~55_combout\ & ( \memoriaDados|ram~523_q\ ) ) ) # ( !\ROM1|memROM~13_combout\ & ( \ROM1|memROM~55_combout\ & ( \memoriaDados|ram~515_q\ ) ) ) # ( \ROM1|memROM~13_combout\ & ( 
-- !\ROM1|memROM~55_combout\ & ( \memoriaDados|ram~491_q\ ) ) ) # ( !\ROM1|memROM~13_combout\ & ( !\ROM1|memROM~55_combout\ & ( \memoriaDados|ram~483_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~515_q\,
	datab => \memoriaDados|ALT_INV_ram~483_q\,
	datac => \memoriaDados|ALT_INV_ram~491_q\,
	datad => \memoriaDados|ALT_INV_ram~523_q\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~55_combout\,
	combout => \memoriaDados|ram~629_combout\);

-- Location: FF_X39_Y3_N20
\memoriaDados|ram~451\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \memoriaDados|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~451_q\);

-- Location: FF_X39_Y3_N44
\memoriaDados|ram~427\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \memoriaDados|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~427_q\);

-- Location: FF_X40_Y6_N52
\memoriaDados|ram~419\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \memoriaDados|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~419_q\);

-- Location: FF_X39_Y3_N38
\memoriaDados|ram~459\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \memoriaDados|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~459_q\);

-- Location: LABCELL_X39_Y3_N36
\memoriaDados|ram~627\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~627_combout\ = ( \memoriaDados|ram~459_q\ & ( \ROM1|memROM~55_combout\ & ( (\ROM1|memROM~13_combout\) # (\memoriaDados|ram~451_q\) ) ) ) # ( !\memoriaDados|ram~459_q\ & ( \ROM1|memROM~55_combout\ & ( (\memoriaDados|ram~451_q\ & 
-- !\ROM1|memROM~13_combout\) ) ) ) # ( \memoriaDados|ram~459_q\ & ( !\ROM1|memROM~55_combout\ & ( (!\ROM1|memROM~13_combout\ & ((\memoriaDados|ram~419_q\))) # (\ROM1|memROM~13_combout\ & (\memoriaDados|ram~427_q\)) ) ) ) # ( !\memoriaDados|ram~459_q\ & ( 
-- !\ROM1|memROM~55_combout\ & ( (!\ROM1|memROM~13_combout\ & ((\memoriaDados|ram~419_q\))) # (\ROM1|memROM~13_combout\ & (\memoriaDados|ram~427_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~451_q\,
	datab => \memoriaDados|ALT_INV_ram~427_q\,
	datac => \memoriaDados|ALT_INV_ram~419_q\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	datae => \memoriaDados|ALT_INV_ram~459_q\,
	dataf => \ROM1|ALT_INV_memROM~55_combout\,
	combout => \memoriaDados|ram~627_combout\);

-- Location: MLABCELL_X34_Y4_N24
\memoriaDados|ram~630\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~630_combout\ = ( \memoriaDados|ram~629_combout\ & ( \memoriaDados|ram~627_combout\ & ( ((!\ROM1|memROM~19_combout\ & ((\memoriaDados|ram~626_combout\))) # (\ROM1|memROM~19_combout\ & (\memoriaDados|ram~628_combout\))) # 
-- (\ROM1|memROM~24_combout\) ) ) ) # ( !\memoriaDados|ram~629_combout\ & ( \memoriaDados|ram~627_combout\ & ( (!\ROM1|memROM~24_combout\ & ((!\ROM1|memROM~19_combout\ & ((\memoriaDados|ram~626_combout\))) # (\ROM1|memROM~19_combout\ & 
-- (\memoriaDados|ram~628_combout\)))) # (\ROM1|memROM~24_combout\ & (((!\ROM1|memROM~19_combout\)))) ) ) ) # ( \memoriaDados|ram~629_combout\ & ( !\memoriaDados|ram~627_combout\ & ( (!\ROM1|memROM~24_combout\ & ((!\ROM1|memROM~19_combout\ & 
-- ((\memoriaDados|ram~626_combout\))) # (\ROM1|memROM~19_combout\ & (\memoriaDados|ram~628_combout\)))) # (\ROM1|memROM~24_combout\ & (((\ROM1|memROM~19_combout\)))) ) ) ) # ( !\memoriaDados|ram~629_combout\ & ( !\memoriaDados|ram~627_combout\ & ( 
-- (!\ROM1|memROM~24_combout\ & ((!\ROM1|memROM~19_combout\ & ((\memoriaDados|ram~626_combout\))) # (\ROM1|memROM~19_combout\ & (\memoriaDados|ram~628_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000100010000010100111011101011111001000100101111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~24_combout\,
	datab => \memoriaDados|ALT_INV_ram~628_combout\,
	datac => \memoriaDados|ALT_INV_ram~626_combout\,
	datad => \ROM1|ALT_INV_memROM~19_combout\,
	datae => \memoriaDados|ALT_INV_ram~629_combout\,
	dataf => \memoriaDados|ALT_INV_ram~627_combout\,
	combout => \memoriaDados|ram~630_combout\);

-- Location: MLABCELL_X34_Y4_N6
\memoriaDados|ram~631\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~631_combout\ = ( \memoriaDados|ram~615_combout\ & ( \memoriaDados|ram~630_combout\ & ( (!\ROM1|memROM~14_combout\ & ((!\ROM1|memROM~12_combout\) # ((\memoriaDados|ram~620_combout\)))) # (\ROM1|memROM~14_combout\ & 
-- (((\memoriaDados|ram~625_combout\)) # (\ROM1|memROM~12_combout\))) ) ) ) # ( !\memoriaDados|ram~615_combout\ & ( \memoriaDados|ram~630_combout\ & ( (!\ROM1|memROM~14_combout\ & (\ROM1|memROM~12_combout\ & (\memoriaDados|ram~620_combout\))) # 
-- (\ROM1|memROM~14_combout\ & (((\memoriaDados|ram~625_combout\)) # (\ROM1|memROM~12_combout\))) ) ) ) # ( \memoriaDados|ram~615_combout\ & ( !\memoriaDados|ram~630_combout\ & ( (!\ROM1|memROM~14_combout\ & ((!\ROM1|memROM~12_combout\) # 
-- ((\memoriaDados|ram~620_combout\)))) # (\ROM1|memROM~14_combout\ & (!\ROM1|memROM~12_combout\ & ((\memoriaDados|ram~625_combout\)))) ) ) ) # ( !\memoriaDados|ram~615_combout\ & ( !\memoriaDados|ram~630_combout\ & ( (!\ROM1|memROM~14_combout\ & 
-- (\ROM1|memROM~12_combout\ & (\memoriaDados|ram~620_combout\))) # (\ROM1|memROM~14_combout\ & (!\ROM1|memROM~12_combout\ & ((\memoriaDados|ram~625_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110100010101100111000010011010101111001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~14_combout\,
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	datac => \memoriaDados|ALT_INV_ram~620_combout\,
	datad => \memoriaDados|ALT_INV_ram~625_combout\,
	datae => \memoriaDados|ALT_INV_ram~615_combout\,
	dataf => \memoriaDados|ALT_INV_ram~630_combout\,
	combout => \memoriaDados|ram~631_combout\);

-- Location: MLABCELL_X34_Y4_N42
\CPU|MUX1|saida_MUX[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[4]~3_combout\ = ( \AND_ENABLE_BUFFER_8BITS~2_combout\ & ( \memoriaDados|ram~631_combout\ & ( \SW[4]~input_o\ ) ) ) # ( !\AND_ENABLE_BUFFER_8BITS~2_combout\ & ( \memoriaDados|ram~631_combout\ ) ) # ( \AND_ENABLE_BUFFER_8BITS~2_combout\ 
-- & ( !\memoriaDados|ram~631_combout\ & ( \SW[4]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[4]~input_o\,
	datae => \ALT_INV_AND_ENABLE_BUFFER_8BITS~2_combout\,
	dataf => \memoriaDados|ALT_INV_ram~631_combout\,
	combout => \CPU|MUX1|saida_MUX[4]~3_combout\);

-- Location: LABCELL_X36_Y5_N0
\ROM1|memROM~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~26_combout\ = ( \ROM1|memROM~33_combout\ & ( !\CPU|PC|DOUT\(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(7),
	dataf => \ROM1|ALT_INV_memROM~33_combout\,
	combout => \ROM1|memROM~26_combout\);

-- Location: IOIBUF_X34_Y0_N18
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: LABCELL_X32_Y4_N36
\memoriaDados|ram~250feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~250feeder_combout\ = ( \CPU|REG1|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(3),
	combout => \memoriaDados|ram~250feeder_combout\);

-- Location: FF_X32_Y4_N37
\memoriaDados|ram~250\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~250feeder_combout\,
	ena => \memoriaDados|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~250_q\);

-- Location: FF_X36_Y3_N11
\memoriaDados|ram~186\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \memoriaDados|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~186_q\);

-- Location: LABCELL_X32_Y6_N51
\memoriaDados|ram~202feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~202feeder_combout\ = ( \CPU|REG1|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(3),
	combout => \memoriaDados|ram~202feeder_combout\);

-- Location: FF_X32_Y6_N52
\memoriaDados|ram~202\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~202feeder_combout\,
	ena => \memoriaDados|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~202_q\);

-- Location: FF_X37_Y4_N26
\memoriaDados|ram~266\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \memoriaDados|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~266_q\);

-- Location: MLABCELL_X37_Y4_N24
\memoriaDados|ram~603\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~603_combout\ = ( \memoriaDados|ram~266_q\ & ( \ROM1|memROM~19_combout\ & ( (\ROM1|memROM~14_combout\) # (\memoriaDados|ram~250_q\) ) ) ) # ( !\memoriaDados|ram~266_q\ & ( \ROM1|memROM~19_combout\ & ( (\memoriaDados|ram~250_q\ & 
-- !\ROM1|memROM~14_combout\) ) ) ) # ( \memoriaDados|ram~266_q\ & ( !\ROM1|memROM~19_combout\ & ( (!\ROM1|memROM~14_combout\ & (\memoriaDados|ram~186_q\)) # (\ROM1|memROM~14_combout\ & ((\memoriaDados|ram~202_q\))) ) ) ) # ( !\memoriaDados|ram~266_q\ & ( 
-- !\ROM1|memROM~19_combout\ & ( (!\ROM1|memROM~14_combout\ & (\memoriaDados|ram~186_q\)) # (\ROM1|memROM~14_combout\ & ((\memoriaDados|ram~202_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~250_q\,
	datab => \memoriaDados|ALT_INV_ram~186_q\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \memoriaDados|ALT_INV_ram~202_q\,
	datae => \memoriaDados|ALT_INV_ram~266_q\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \memoriaDados|ram~603_combout\);

-- Location: LABCELL_X39_Y1_N39
\memoriaDados|ram~178feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~178feeder_combout\ = ( \CPU|REG1|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(3),
	combout => \memoriaDados|ram~178feeder_combout\);

-- Location: FF_X39_Y1_N40
\memoriaDados|ram~178\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~178feeder_combout\,
	ena => \memoriaDados|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~178_q\);

-- Location: FF_X37_Y3_N7
\memoriaDados|ram~194\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \memoriaDados|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~194_q\);

-- Location: FF_X37_Y3_N55
\memoriaDados|ram~242\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \memoriaDados|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~242_q\);

-- Location: FF_X35_Y1_N59
\memoriaDados|ram~258\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \memoriaDados|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~258_q\);

-- Location: LABCELL_X35_Y1_N57
\memoriaDados|ram~602\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~602_combout\ = ( \memoriaDados|ram~258_q\ & ( \ROM1|memROM~19_combout\ & ( (\memoriaDados|ram~242_q\) # (\ROM1|memROM~14_combout\) ) ) ) # ( !\memoriaDados|ram~258_q\ & ( \ROM1|memROM~19_combout\ & ( (!\ROM1|memROM~14_combout\ & 
-- \memoriaDados|ram~242_q\) ) ) ) # ( \memoriaDados|ram~258_q\ & ( !\ROM1|memROM~19_combout\ & ( (!\ROM1|memROM~14_combout\ & (\memoriaDados|ram~178_q\)) # (\ROM1|memROM~14_combout\ & ((\memoriaDados|ram~194_q\))) ) ) ) # ( !\memoriaDados|ram~258_q\ & ( 
-- !\ROM1|memROM~19_combout\ & ( (!\ROM1|memROM~14_combout\ & (\memoriaDados|ram~178_q\)) # (\ROM1|memROM~14_combout\ & ((\memoriaDados|ram~194_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~178_q\,
	datab => \memoriaDados|ALT_INV_ram~194_q\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \memoriaDados|ALT_INV_ram~242_q\,
	datae => \memoriaDados|ALT_INV_ram~258_q\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \memoriaDados|ram~602_combout\);

-- Location: LABCELL_X35_Y6_N51
\memoriaDados|ram~58feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~58feeder_combout\ = ( \CPU|REG1|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(3),
	combout => \memoriaDados|ram~58feeder_combout\);

-- Location: FF_X35_Y6_N53
\memoriaDados|ram~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~58feeder_combout\,
	ena => \memoriaDados|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~58_q\);

-- Location: FF_X37_Y4_N17
\memoriaDados|ram~138\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \memoriaDados|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~138_q\);

-- Location: LABCELL_X32_Y3_N51
\memoriaDados|ram~122feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~122feeder_combout\ = ( \CPU|REG1|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(3),
	combout => \memoriaDados|ram~122feeder_combout\);

-- Location: FF_X32_Y3_N52
\memoriaDados|ram~122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~122feeder_combout\,
	ena => \memoriaDados|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~122_q\);

-- Location: FF_X35_Y3_N5
\memoriaDados|ram~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \memoriaDados|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~74_q\);

-- Location: MLABCELL_X37_Y4_N12
\memoriaDados|ram~601\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~601_combout\ = ( \ROM1|memROM~14_combout\ & ( \ROM1|memROM~19_combout\ & ( \memoriaDados|ram~138_q\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( \ROM1|memROM~19_combout\ & ( \memoriaDados|ram~122_q\ ) ) ) # ( \ROM1|memROM~14_combout\ & ( 
-- !\ROM1|memROM~19_combout\ & ( \memoriaDados|ram~74_q\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( !\ROM1|memROM~19_combout\ & ( \memoriaDados|ram~58_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~58_q\,
	datab => \memoriaDados|ALT_INV_ram~138_q\,
	datac => \memoriaDados|ALT_INV_ram~122_q\,
	datad => \memoriaDados|ALT_INV_ram~74_q\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \memoriaDados|ram~601_combout\);

-- Location: FF_X36_Y6_N7
\memoriaDados|ram~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \memoriaDados|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~50_q\);

-- Location: FF_X34_Y6_N25
\memoriaDados|ram~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \memoriaDados|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~66_q\);

-- Location: FF_X34_Y6_N56
\memoriaDados|ram~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \memoriaDados|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~114_q\);

-- Location: FF_X37_Y6_N20
\memoriaDados|ram~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \memoriaDados|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~130_q\);

-- Location: MLABCELL_X37_Y6_N18
\memoriaDados|ram~600\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~600_combout\ = ( \memoriaDados|ram~130_q\ & ( \ROM1|memROM~19_combout\ & ( (\memoriaDados|ram~114_q\) # (\ROM1|memROM~14_combout\) ) ) ) # ( !\memoriaDados|ram~130_q\ & ( \ROM1|memROM~19_combout\ & ( (!\ROM1|memROM~14_combout\ & 
-- \memoriaDados|ram~114_q\) ) ) ) # ( \memoriaDados|ram~130_q\ & ( !\ROM1|memROM~19_combout\ & ( (!\ROM1|memROM~14_combout\ & (\memoriaDados|ram~50_q\)) # (\ROM1|memROM~14_combout\ & ((\memoriaDados|ram~66_q\))) ) ) ) # ( !\memoriaDados|ram~130_q\ & ( 
-- !\ROM1|memROM~19_combout\ & ( (!\ROM1|memROM~14_combout\ & (\memoriaDados|ram~50_q\)) # (\ROM1|memROM~14_combout\ & ((\memoriaDados|ram~66_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~50_q\,
	datab => \memoriaDados|ALT_INV_ram~66_q\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \memoriaDados|ALT_INV_ram~114_q\,
	datae => \memoriaDados|ALT_INV_ram~130_q\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \memoriaDados|ram~600_combout\);

-- Location: LABCELL_X36_Y2_N54
\memoriaDados|ram~604\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~604_combout\ = ( \memoriaDados|ram~601_combout\ & ( \memoriaDados|ram~600_combout\ & ( (!\ROM1|memROM~24_combout\) # ((!\ROM1|memROM~13_combout\ & ((\memoriaDados|ram~602_combout\))) # (\ROM1|memROM~13_combout\ & 
-- (\memoriaDados|ram~603_combout\))) ) ) ) # ( !\memoriaDados|ram~601_combout\ & ( \memoriaDados|ram~600_combout\ & ( (!\ROM1|memROM~24_combout\ & (!\ROM1|memROM~13_combout\)) # (\ROM1|memROM~24_combout\ & ((!\ROM1|memROM~13_combout\ & 
-- ((\memoriaDados|ram~602_combout\))) # (\ROM1|memROM~13_combout\ & (\memoriaDados|ram~603_combout\)))) ) ) ) # ( \memoriaDados|ram~601_combout\ & ( !\memoriaDados|ram~600_combout\ & ( (!\ROM1|memROM~24_combout\ & (\ROM1|memROM~13_combout\)) # 
-- (\ROM1|memROM~24_combout\ & ((!\ROM1|memROM~13_combout\ & ((\memoriaDados|ram~602_combout\))) # (\ROM1|memROM~13_combout\ & (\memoriaDados|ram~603_combout\)))) ) ) ) # ( !\memoriaDados|ram~601_combout\ & ( !\memoriaDados|ram~600_combout\ & ( 
-- (\ROM1|memROM~24_combout\ & ((!\ROM1|memROM~13_combout\ & ((\memoriaDados|ram~602_combout\))) # (\ROM1|memROM~13_combout\ & (\memoriaDados|ram~603_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101001000110110011110001001110011011010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~24_combout\,
	datab => \ROM1|ALT_INV_memROM~13_combout\,
	datac => \memoriaDados|ALT_INV_ram~603_combout\,
	datad => \memoriaDados|ALT_INV_ram~602_combout\,
	datae => \memoriaDados|ALT_INV_ram~601_combout\,
	dataf => \memoriaDados|ALT_INV_ram~600_combout\,
	combout => \memoriaDados|ram~604_combout\);

-- Location: FF_X35_Y3_N31
\memoriaDados|ram~386\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \memoriaDados|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~386_q\);

-- Location: FF_X32_Y3_N4
\memoriaDados|ram~370\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \memoriaDados|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~370_q\);

-- Location: FF_X32_Y3_N19
\memoriaDados|ram~378\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \memoriaDados|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~378_q\);

-- Location: FF_X35_Y3_N8
\memoriaDados|ram~394\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \memoriaDados|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~394_q\);

-- Location: LABCELL_X35_Y3_N6
\memoriaDados|ram~607\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~607_combout\ = ( \memoriaDados|ram~394_q\ & ( \ROM1|memROM~14_combout\ & ( (\ROM1|memROM~13_combout\) # (\memoriaDados|ram~386_q\) ) ) ) # ( !\memoriaDados|ram~394_q\ & ( \ROM1|memROM~14_combout\ & ( (\memoriaDados|ram~386_q\ & 
-- !\ROM1|memROM~13_combout\) ) ) ) # ( \memoriaDados|ram~394_q\ & ( !\ROM1|memROM~14_combout\ & ( (!\ROM1|memROM~13_combout\ & (\memoriaDados|ram~370_q\)) # (\ROM1|memROM~13_combout\ & ((\memoriaDados|ram~378_q\))) ) ) ) # ( !\memoriaDados|ram~394_q\ & ( 
-- !\ROM1|memROM~14_combout\ & ( (!\ROM1|memROM~13_combout\ & (\memoriaDados|ram~370_q\)) # (\ROM1|memROM~13_combout\ & ((\memoriaDados|ram~378_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111101000100010001000111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~386_q\,
	datab => \ROM1|ALT_INV_memROM~13_combout\,
	datac => \memoriaDados|ALT_INV_ram~370_q\,
	datad => \memoriaDados|ALT_INV_ram~378_q\,
	datae => \memoriaDados|ALT_INV_ram~394_q\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \memoriaDados|ram~607_combout\);

-- Location: FF_X36_Y2_N38
\memoriaDados|ram~434\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \memoriaDados|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~434_q\);

-- Location: FF_X37_Y3_N4
\memoriaDados|ram~450\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \memoriaDados|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~450_q\);

-- Location: FF_X39_Y4_N28
\memoriaDados|ram~442\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \memoriaDados|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~442_q\);

-- Location: FF_X36_Y2_N26
\memoriaDados|ram~458\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \memoriaDados|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~458_q\);

-- Location: LABCELL_X36_Y2_N24
\memoriaDados|ram~606\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~606_combout\ = ( \memoriaDados|ram~458_q\ & ( \ROM1|memROM~14_combout\ & ( (\ROM1|memROM~13_combout\) # (\memoriaDados|ram~450_q\) ) ) ) # ( !\memoriaDados|ram~458_q\ & ( \ROM1|memROM~14_combout\ & ( (\memoriaDados|ram~450_q\ & 
-- !\ROM1|memROM~13_combout\) ) ) ) # ( \memoriaDados|ram~458_q\ & ( !\ROM1|memROM~14_combout\ & ( (!\ROM1|memROM~13_combout\ & (\memoriaDados|ram~434_q\)) # (\ROM1|memROM~13_combout\ & ((\memoriaDados|ram~442_q\))) ) ) ) # ( !\memoriaDados|ram~458_q\ & ( 
-- !\ROM1|memROM~14_combout\ & ( (!\ROM1|memROM~13_combout\ & (\memoriaDados|ram~434_q\)) # (\ROM1|memROM~13_combout\ & ((\memoriaDados|ram~442_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~434_q\,
	datab => \memoriaDados|ALT_INV_ram~450_q\,
	datac => \memoriaDados|ALT_INV_ram~442_q\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	datae => \memoriaDados|ALT_INV_ram~458_q\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \memoriaDados|ram~606_combout\);

-- Location: FF_X34_Y3_N5
\memoriaDados|ram~506\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \memoriaDados|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~506_q\);

-- Location: LABCELL_X29_Y4_N45
\memoriaDados|ram~514feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~514feeder_combout\ = ( \CPU|REG1|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(3),
	combout => \memoriaDados|ram~514feeder_combout\);

-- Location: FF_X29_Y4_N46
\memoriaDados|ram~514\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~514feeder_combout\,
	ena => \memoriaDados|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~514_q\);

-- Location: FF_X37_Y8_N10
\memoriaDados|ram~498\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \memoriaDados|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~498_q\);

-- Location: FF_X37_Y4_N2
\memoriaDados|ram~522\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \memoriaDados|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~522_q\);

-- Location: MLABCELL_X37_Y4_N0
\memoriaDados|ram~608\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~608_combout\ = ( \memoriaDados|ram~522_q\ & ( \ROM1|memROM~13_combout\ & ( (\ROM1|memROM~14_combout\) # (\memoriaDados|ram~506_q\) ) ) ) # ( !\memoriaDados|ram~522_q\ & ( \ROM1|memROM~13_combout\ & ( (\memoriaDados|ram~506_q\ & 
-- !\ROM1|memROM~14_combout\) ) ) ) # ( \memoriaDados|ram~522_q\ & ( !\ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~14_combout\ & ((\memoriaDados|ram~498_q\))) # (\ROM1|memROM~14_combout\ & (\memoriaDados|ram~514_q\)) ) ) ) # ( !\memoriaDados|ram~522_q\ & ( 
-- !\ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~14_combout\ & ((\memoriaDados|ram~498_q\))) # (\ROM1|memROM~14_combout\ & (\memoriaDados|ram~514_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~506_q\,
	datab => \memoriaDados|ALT_INV_ram~514_q\,
	datac => \memoriaDados|ALT_INV_ram~498_q\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	datae => \memoriaDados|ALT_INV_ram~522_q\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \memoriaDados|ram~608_combout\);

-- Location: FF_X36_Y7_N5
\memoriaDados|ram~322\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \memoriaDados|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~322_q\);

-- Location: FF_X35_Y7_N40
\memoriaDados|ram~314\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \memoriaDados|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~314_q\);

-- Location: FF_X35_Y7_N19
\memoriaDados|ram~306\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \memoriaDados|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~306_q\);

-- Location: FF_X36_Y7_N23
\memoriaDados|ram~330\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \memoriaDados|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~330_q\);

-- Location: LABCELL_X36_Y7_N21
\memoriaDados|ram~605\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~605_combout\ = ( \memoriaDados|ram~330_q\ & ( \ROM1|memROM~14_combout\ & ( (\ROM1|memROM~13_combout\) # (\memoriaDados|ram~322_q\) ) ) ) # ( !\memoriaDados|ram~330_q\ & ( \ROM1|memROM~14_combout\ & ( (\memoriaDados|ram~322_q\ & 
-- !\ROM1|memROM~13_combout\) ) ) ) # ( \memoriaDados|ram~330_q\ & ( !\ROM1|memROM~14_combout\ & ( (!\ROM1|memROM~13_combout\ & ((\memoriaDados|ram~306_q\))) # (\ROM1|memROM~13_combout\ & (\memoriaDados|ram~314_q\)) ) ) ) # ( !\memoriaDados|ram~330_q\ & ( 
-- !\ROM1|memROM~14_combout\ & ( (!\ROM1|memROM~13_combout\ & ((\memoriaDados|ram~306_q\))) # (\ROM1|memROM~13_combout\ & (\memoriaDados|ram~314_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~322_q\,
	datab => \memoriaDados|ALT_INV_ram~314_q\,
	datac => \memoriaDados|ALT_INV_ram~306_q\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	datae => \memoriaDados|ALT_INV_ram~330_q\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \memoriaDados|ram~605_combout\);

-- Location: LABCELL_X36_Y2_N36
\memoriaDados|ram~609\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~609_combout\ = ( \memoriaDados|ram~608_combout\ & ( \memoriaDados|ram~605_combout\ & ( (!\ROM1|memROM~24_combout\ & (((!\ROM1|memROM~19_combout\)) # (\memoriaDados|ram~607_combout\))) # (\ROM1|memROM~24_combout\ & 
-- (((\ROM1|memROM~19_combout\) # (\memoriaDados|ram~606_combout\)))) ) ) ) # ( !\memoriaDados|ram~608_combout\ & ( \memoriaDados|ram~605_combout\ & ( (!\ROM1|memROM~24_combout\ & (((!\ROM1|memROM~19_combout\)) # (\memoriaDados|ram~607_combout\))) # 
-- (\ROM1|memROM~24_combout\ & (((\memoriaDados|ram~606_combout\ & !\ROM1|memROM~19_combout\)))) ) ) ) # ( \memoriaDados|ram~608_combout\ & ( !\memoriaDados|ram~605_combout\ & ( (!\ROM1|memROM~24_combout\ & (\memoriaDados|ram~607_combout\ & 
-- ((\ROM1|memROM~19_combout\)))) # (\ROM1|memROM~24_combout\ & (((\ROM1|memROM~19_combout\) # (\memoriaDados|ram~606_combout\)))) ) ) ) # ( !\memoriaDados|ram~608_combout\ & ( !\memoriaDados|ram~605_combout\ & ( (!\ROM1|memROM~24_combout\ & 
-- (\memoriaDados|ram~607_combout\ & ((\ROM1|memROM~19_combout\)))) # (\ROM1|memROM~24_combout\ & (((\memoriaDados|ram~606_combout\ & !\ROM1|memROM~19_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000100000000110111011111001111010001001100111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~607_combout\,
	datab => \ROM1|ALT_INV_memROM~24_combout\,
	datac => \memoriaDados|ALT_INV_ram~606_combout\,
	datad => \ROM1|ALT_INV_memROM~19_combout\,
	datae => \memoriaDados|ALT_INV_ram~608_combout\,
	dataf => \memoriaDados|ALT_INV_ram~605_combout\,
	combout => \memoriaDados|ram~609_combout\);

-- Location: FF_X31_Y3_N4
\memoriaDados|ram~282\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \memoriaDados|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~282_q\);

-- Location: LABCELL_X39_Y2_N6
\memoriaDados|ram~410feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~410feeder_combout\ = ( \CPU|REG1|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(3),
	combout => \memoriaDados|ram~410feeder_combout\);

-- Location: FF_X39_Y2_N8
\memoriaDados|ram~410\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~410feeder_combout\,
	ena => \memoriaDados|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~410_q\);

-- Location: FF_X32_Y5_N7
\memoriaDados|ram~298\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \memoriaDados|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~298_q\);

-- Location: FF_X39_Y2_N50
\memoriaDados|ram~426\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \memoriaDados|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~426_q\);

-- Location: LABCELL_X39_Y2_N48
\memoriaDados|ram~596\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~596_combout\ = ( \memoriaDados|ram~426_q\ & ( \ROM1|memROM~14_combout\ & ( (\ROM1|memROM~24_combout\) # (\memoriaDados|ram~298_q\) ) ) ) # ( !\memoriaDados|ram~426_q\ & ( \ROM1|memROM~14_combout\ & ( (\memoriaDados|ram~298_q\ & 
-- !\ROM1|memROM~24_combout\) ) ) ) # ( \memoriaDados|ram~426_q\ & ( !\ROM1|memROM~14_combout\ & ( (!\ROM1|memROM~24_combout\ & (\memoriaDados|ram~282_q\)) # (\ROM1|memROM~24_combout\ & ((\memoriaDados|ram~410_q\))) ) ) ) # ( !\memoriaDados|ram~426_q\ & ( 
-- !\ROM1|memROM~14_combout\ & ( (!\ROM1|memROM~24_combout\ & (\memoriaDados|ram~282_q\)) # (\ROM1|memROM~24_combout\ & ((\memoriaDados|ram~410_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~282_q\,
	datab => \memoriaDados|ALT_INV_ram~410_q\,
	datac => \memoriaDados|ALT_INV_ram~298_q\,
	datad => \ROM1|ALT_INV_memROM~24_combout\,
	datae => \memoriaDados|ALT_INV_ram~426_q\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \memoriaDados|ram~596_combout\);

-- Location: FF_X35_Y4_N7
\memoriaDados|ram~474\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \memoriaDados|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~474_q\);

-- Location: FF_X34_Y1_N41
\memoriaDados|ram~346\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \memoriaDados|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~346_q\);

-- Location: FF_X36_Y1_N10
\memoriaDados|ram~362\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \memoriaDados|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~362_q\);

-- Location: FF_X37_Y1_N14
\memoriaDados|ram~490\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \memoriaDados|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~490_q\);

-- Location: MLABCELL_X37_Y1_N12
\memoriaDados|ram~598\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~598_combout\ = ( \memoriaDados|ram~490_q\ & ( \ROM1|memROM~14_combout\ & ( (\memoriaDados|ram~362_q\) # (\ROM1|memROM~24_combout\) ) ) ) # ( !\memoriaDados|ram~490_q\ & ( \ROM1|memROM~14_combout\ & ( (!\ROM1|memROM~24_combout\ & 
-- \memoriaDados|ram~362_q\) ) ) ) # ( \memoriaDados|ram~490_q\ & ( !\ROM1|memROM~14_combout\ & ( (!\ROM1|memROM~24_combout\ & ((\memoriaDados|ram~346_q\))) # (\ROM1|memROM~24_combout\ & (\memoriaDados|ram~474_q\)) ) ) ) # ( !\memoriaDados|ram~490_q\ & ( 
-- !\ROM1|memROM~14_combout\ & ( (!\ROM1|memROM~24_combout\ & ((\memoriaDados|ram~346_q\))) # (\ROM1|memROM~24_combout\ & (\memoriaDados|ram~474_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100000000101010100101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~24_combout\,
	datab => \memoriaDados|ALT_INV_ram~474_q\,
	datac => \memoriaDados|ALT_INV_ram~346_q\,
	datad => \memoriaDados|ALT_INV_ram~362_q\,
	datae => \memoriaDados|ALT_INV_ram~490_q\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \memoriaDados|ram~598_combout\);

-- Location: LABCELL_X31_Y3_N12
\memoriaDados|ram~274feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~274feeder_combout\ = ( \CPU|REG1|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(3),
	combout => \memoriaDados|ram~274feeder_combout\);

-- Location: FF_X31_Y3_N13
\memoriaDados|ram~274\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~274feeder_combout\,
	ena => \memoriaDados|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~274_q\);

-- Location: FF_X32_Y5_N50
\memoriaDados|ram~290\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \memoriaDados|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~290_q\);

-- Location: LABCELL_X40_Y1_N12
\memoriaDados|ram~402feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~402feeder_combout\ = ( \CPU|REG1|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(3),
	combout => \memoriaDados|ram~402feeder_combout\);

-- Location: FF_X40_Y1_N14
\memoriaDados|ram~402\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~402feeder_combout\,
	ena => \memoriaDados|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~402_q\);

-- Location: FF_X40_Y3_N19
\memoriaDados|ram~418\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \memoriaDados|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~418_q\);

-- Location: LABCELL_X39_Y3_N0
\memoriaDados|ram~595\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~595_combout\ = ( \ROM1|memROM~24_combout\ & ( \ROM1|memROM~14_combout\ & ( \memoriaDados|ram~418_q\ ) ) ) # ( !\ROM1|memROM~24_combout\ & ( \ROM1|memROM~14_combout\ & ( \memoriaDados|ram~290_q\ ) ) ) # ( \ROM1|memROM~24_combout\ & ( 
-- !\ROM1|memROM~14_combout\ & ( \memoriaDados|ram~402_q\ ) ) ) # ( !\ROM1|memROM~24_combout\ & ( !\ROM1|memROM~14_combout\ & ( \memoriaDados|ram~274_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~274_q\,
	datab => \memoriaDados|ALT_INV_ram~290_q\,
	datac => \memoriaDados|ALT_INV_ram~402_q\,
	datad => \memoriaDados|ALT_INV_ram~418_q\,
	datae => \ROM1|ALT_INV_memROM~24_combout\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \memoriaDados|ram~595_combout\);

-- Location: FF_X37_Y5_N34
\memoriaDados|ram~466\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \memoriaDados|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~466_q\);

-- Location: FF_X36_Y1_N28
\memoriaDados|ram~354\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \memoriaDados|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~354_q\);

-- Location: LABCELL_X39_Y5_N54
\memoriaDados|ram~338feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~338feeder_combout\ = ( \CPU|REG1|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(3),
	combout => \memoriaDados|ram~338feeder_combout\);

-- Location: FF_X39_Y5_N56
\memoriaDados|ram~338\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~338feeder_combout\,
	ena => \memoriaDados|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~338_q\);

-- Location: FF_X39_Y5_N53
\memoriaDados|ram~482\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \memoriaDados|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~482_q\);

-- Location: LABCELL_X39_Y5_N51
\memoriaDados|ram~597\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~597_combout\ = ( \memoriaDados|ram~482_q\ & ( \ROM1|memROM~14_combout\ & ( (\ROM1|memROM~24_combout\) # (\memoriaDados|ram~354_q\) ) ) ) # ( !\memoriaDados|ram~482_q\ & ( \ROM1|memROM~14_combout\ & ( (\memoriaDados|ram~354_q\ & 
-- !\ROM1|memROM~24_combout\) ) ) ) # ( \memoriaDados|ram~482_q\ & ( !\ROM1|memROM~14_combout\ & ( (!\ROM1|memROM~24_combout\ & ((\memoriaDados|ram~338_q\))) # (\ROM1|memROM~24_combout\ & (\memoriaDados|ram~466_q\)) ) ) ) # ( !\memoriaDados|ram~482_q\ & ( 
-- !\ROM1|memROM~14_combout\ & ( (!\ROM1|memROM~24_combout\ & ((\memoriaDados|ram~338_q\))) # (\ROM1|memROM~24_combout\ & (\memoriaDados|ram~466_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~466_q\,
	datab => \memoriaDados|ALT_INV_ram~354_q\,
	datac => \ROM1|ALT_INV_memROM~24_combout\,
	datad => \memoriaDados|ALT_INV_ram~338_q\,
	datae => \memoriaDados|ALT_INV_ram~482_q\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \memoriaDados|ram~597_combout\);

-- Location: MLABCELL_X37_Y2_N9
\memoriaDados|ram~599\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~599_combout\ = ( \memoriaDados|ram~595_combout\ & ( \memoriaDados|ram~597_combout\ & ( (!\ROM1|memROM~13_combout\) # ((!\ROM1|memROM~19_combout\ & (\memoriaDados|ram~596_combout\)) # (\ROM1|memROM~19_combout\ & 
-- ((\memoriaDados|ram~598_combout\)))) ) ) ) # ( !\memoriaDados|ram~595_combout\ & ( \memoriaDados|ram~597_combout\ & ( (!\ROM1|memROM~19_combout\ & (\ROM1|memROM~13_combout\ & (\memoriaDados|ram~596_combout\))) # (\ROM1|memROM~19_combout\ & 
-- ((!\ROM1|memROM~13_combout\) # ((\memoriaDados|ram~598_combout\)))) ) ) ) # ( \memoriaDados|ram~595_combout\ & ( !\memoriaDados|ram~597_combout\ & ( (!\ROM1|memROM~19_combout\ & ((!\ROM1|memROM~13_combout\) # ((\memoriaDados|ram~596_combout\)))) # 
-- (\ROM1|memROM~19_combout\ & (\ROM1|memROM~13_combout\ & ((\memoriaDados|ram~598_combout\)))) ) ) ) # ( !\memoriaDados|ram~595_combout\ & ( !\memoriaDados|ram~597_combout\ & ( (\ROM1|memROM~13_combout\ & ((!\ROM1|memROM~19_combout\ & 
-- (\memoriaDados|ram~596_combout\)) # (\ROM1|memROM~19_combout\ & ((\memoriaDados|ram~598_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011100010101001101101000110010101111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~19_combout\,
	datab => \ROM1|ALT_INV_memROM~13_combout\,
	datac => \memoriaDados|ALT_INV_ram~596_combout\,
	datad => \memoriaDados|ALT_INV_ram~598_combout\,
	datae => \memoriaDados|ALT_INV_ram~595_combout\,
	dataf => \memoriaDados|ALT_INV_ram~597_combout\,
	combout => \memoriaDados|ram~599_combout\);

-- Location: LABCELL_X31_Y3_N42
\memoriaDados|ram~26feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~26feeder_combout\ = ( \CPU|REG1|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(3),
	combout => \memoriaDados|ram~26feeder_combout\);

-- Location: FF_X31_Y3_N43
\memoriaDados|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~26feeder_combout\,
	ena => \memoriaDados|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~26_q\);

-- Location: FF_X41_Y3_N44
\memoriaDados|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \memoriaDados|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~18_q\);

-- Location: FF_X31_Y6_N25
\memoriaDados|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \memoriaDados|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~34_q\);

-- Location: FF_X41_Y3_N8
\memoriaDados|ram~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \memoriaDados|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~42_q\);

-- Location: LABCELL_X41_Y3_N6
\memoriaDados|ram~590\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~590_combout\ = ( \memoriaDados|ram~42_q\ & ( \ROM1|memROM~13_combout\ & ( (\ROM1|memROM~14_combout\) # (\memoriaDados|ram~26_q\) ) ) ) # ( !\memoriaDados|ram~42_q\ & ( \ROM1|memROM~13_combout\ & ( (\memoriaDados|ram~26_q\ & 
-- !\ROM1|memROM~14_combout\) ) ) ) # ( \memoriaDados|ram~42_q\ & ( !\ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~14_combout\ & (\memoriaDados|ram~18_q\)) # (\ROM1|memROM~14_combout\ & ((\memoriaDados|ram~34_q\))) ) ) ) # ( !\memoriaDados|ram~42_q\ & ( 
-- !\ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~14_combout\ & (\memoriaDados|ram~18_q\)) # (\ROM1|memROM~14_combout\ & ((\memoriaDados|ram~34_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~26_q\,
	datab => \memoriaDados|ALT_INV_ram~18_q\,
	datac => \memoriaDados|ALT_INV_ram~34_q\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	datae => \memoriaDados|ALT_INV_ram~42_q\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \memoriaDados|ram~590_combout\);

-- Location: FF_X40_Y5_N4
\memoriaDados|ram~154\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \memoriaDados|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~154_q\);

-- Location: LABCELL_X40_Y5_N48
\memoriaDados|ram~146feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~146feeder_combout\ = ( \CPU|REG1|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(3),
	combout => \memoriaDados|ram~146feeder_combout\);

-- Location: FF_X40_Y5_N49
\memoriaDados|ram~146\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~146feeder_combout\,
	ena => \memoriaDados|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~146_q\);

-- Location: FF_X40_Y2_N58
\memoriaDados|ram~162\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \memoriaDados|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~162_q\);

-- Location: FF_X40_Y3_N8
\memoriaDados|ram~170\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \memoriaDados|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~170_q\);

-- Location: LABCELL_X40_Y3_N6
\memoriaDados|ram~591\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~591_combout\ = ( \memoriaDados|ram~170_q\ & ( \ROM1|memROM~13_combout\ & ( (\ROM1|memROM~14_combout\) # (\memoriaDados|ram~154_q\) ) ) ) # ( !\memoriaDados|ram~170_q\ & ( \ROM1|memROM~13_combout\ & ( (\memoriaDados|ram~154_q\ & 
-- !\ROM1|memROM~14_combout\) ) ) ) # ( \memoriaDados|ram~170_q\ & ( !\ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~14_combout\ & (\memoriaDados|ram~146_q\)) # (\ROM1|memROM~14_combout\ & ((\memoriaDados|ram~162_q\))) ) ) ) # ( !\memoriaDados|ram~170_q\ & ( 
-- !\ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~14_combout\ & (\memoriaDados|ram~146_q\)) # (\ROM1|memROM~14_combout\ & ((\memoriaDados|ram~162_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~154_q\,
	datab => \memoriaDados|ALT_INV_ram~146_q\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \memoriaDados|ALT_INV_ram~162_q\,
	datae => \memoriaDados|ALT_INV_ram~170_q\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \memoriaDados|ram~591_combout\);

-- Location: FF_X31_Y4_N58
\memoriaDados|ram~226\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \memoriaDados|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~226_q\);

-- Location: FF_X31_Y4_N41
\memoriaDados|ram~210\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \memoriaDados|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~210_q\);

-- Location: FF_X35_Y4_N40
\memoriaDados|ram~218\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \memoriaDados|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~218_q\);

-- Location: FF_X31_Y4_N14
\memoriaDados|ram~234\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \memoriaDados|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~234_q\);

-- Location: LABCELL_X31_Y4_N12
\memoriaDados|ram~593\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~593_combout\ = ( \memoriaDados|ram~234_q\ & ( \ROM1|memROM~14_combout\ & ( (\ROM1|memROM~13_combout\) # (\memoriaDados|ram~226_q\) ) ) ) # ( !\memoriaDados|ram~234_q\ & ( \ROM1|memROM~14_combout\ & ( (\memoriaDados|ram~226_q\ & 
-- !\ROM1|memROM~13_combout\) ) ) ) # ( \memoriaDados|ram~234_q\ & ( !\ROM1|memROM~14_combout\ & ( (!\ROM1|memROM~13_combout\ & (\memoriaDados|ram~210_q\)) # (\ROM1|memROM~13_combout\ & ((\memoriaDados|ram~218_q\))) ) ) ) # ( !\memoriaDados|ram~234_q\ & ( 
-- !\ROM1|memROM~14_combout\ & ( (!\ROM1|memROM~13_combout\ & (\memoriaDados|ram~210_q\)) # (\ROM1|memROM~13_combout\ & ((\memoriaDados|ram~218_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~226_q\,
	datab => \memoriaDados|ALT_INV_ram~210_q\,
	datac => \memoriaDados|ALT_INV_ram~218_q\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	datae => \memoriaDados|ALT_INV_ram~234_q\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \memoriaDados|ram~593_combout\);

-- Location: FF_X34_Y1_N19
\memoriaDados|ram~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \memoriaDados|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~90_q\);

-- Location: FF_X32_Y1_N44
\memoriaDados|ram~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \memoriaDados|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~98_q\);

-- Location: FF_X32_Y1_N59
\memoriaDados|ram~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \memoriaDados|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~82_q\);

-- Location: FF_X32_Y1_N38
\memoriaDados|ram~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \memoriaDados|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~106_q\);

-- Location: LABCELL_X32_Y1_N36
\memoriaDados|ram~592\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~592_combout\ = ( \memoriaDados|ram~106_q\ & ( \ROM1|memROM~13_combout\ & ( (\ROM1|memROM~14_combout\) # (\memoriaDados|ram~90_q\) ) ) ) # ( !\memoriaDados|ram~106_q\ & ( \ROM1|memROM~13_combout\ & ( (\memoriaDados|ram~90_q\ & 
-- !\ROM1|memROM~14_combout\) ) ) ) # ( \memoriaDados|ram~106_q\ & ( !\ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~14_combout\ & ((\memoriaDados|ram~82_q\))) # (\ROM1|memROM~14_combout\ & (\memoriaDados|ram~98_q\)) ) ) ) # ( !\memoriaDados|ram~106_q\ & ( 
-- !\ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~14_combout\ & ((\memoriaDados|ram~82_q\))) # (\ROM1|memROM~14_combout\ & (\memoriaDados|ram~98_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~90_q\,
	datab => \memoriaDados|ALT_INV_ram~98_q\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \memoriaDados|ALT_INV_ram~82_q\,
	datae => \memoriaDados|ALT_INV_ram~106_q\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \memoriaDados|ram~592_combout\);

-- Location: LABCELL_X36_Y2_N18
\memoriaDados|ram~594\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~594_combout\ = ( \memoriaDados|ram~593_combout\ & ( \memoriaDados|ram~592_combout\ & ( ((!\ROM1|memROM~24_combout\ & (\memoriaDados|ram~590_combout\)) # (\ROM1|memROM~24_combout\ & ((\memoriaDados|ram~591_combout\)))) # 
-- (\ROM1|memROM~19_combout\) ) ) ) # ( !\memoriaDados|ram~593_combout\ & ( \memoriaDados|ram~592_combout\ & ( (!\ROM1|memROM~24_combout\ & (((\ROM1|memROM~19_combout\)) # (\memoriaDados|ram~590_combout\))) # (\ROM1|memROM~24_combout\ & 
-- (((\memoriaDados|ram~591_combout\ & !\ROM1|memROM~19_combout\)))) ) ) ) # ( \memoriaDados|ram~593_combout\ & ( !\memoriaDados|ram~592_combout\ & ( (!\ROM1|memROM~24_combout\ & (\memoriaDados|ram~590_combout\ & ((!\ROM1|memROM~19_combout\)))) # 
-- (\ROM1|memROM~24_combout\ & (((\ROM1|memROM~19_combout\) # (\memoriaDados|ram~591_combout\)))) ) ) ) # ( !\memoriaDados|ram~593_combout\ & ( !\memoriaDados|ram~592_combout\ & ( (!\ROM1|memROM~19_combout\ & ((!\ROM1|memROM~24_combout\ & 
-- (\memoriaDados|ram~590_combout\)) # (\ROM1|memROM~24_combout\ & ((\memoriaDados|ram~591_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011100000000010001110011001101000111110011000100011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~590_combout\,
	datab => \ROM1|ALT_INV_memROM~24_combout\,
	datac => \memoriaDados|ALT_INV_ram~591_combout\,
	datad => \ROM1|ALT_INV_memROM~19_combout\,
	datae => \memoriaDados|ALT_INV_ram~593_combout\,
	dataf => \memoriaDados|ALT_INV_ram~592_combout\,
	combout => \memoriaDados|ram~594_combout\);

-- Location: LABCELL_X36_Y2_N30
\memoriaDados|ram~610\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~610_combout\ = ( \memoriaDados|ram~599_combout\ & ( \memoriaDados|ram~594_combout\ & ( (!\ROM1|memROM~55_combout\) # ((!\ROM1|memROM~12_combout\ & (\memoriaDados|ram~604_combout\)) # (\ROM1|memROM~12_combout\ & 
-- ((\memoriaDados|ram~609_combout\)))) ) ) ) # ( !\memoriaDados|ram~599_combout\ & ( \memoriaDados|ram~594_combout\ & ( (!\ROM1|memROM~12_combout\ & (((!\ROM1|memROM~55_combout\)) # (\memoriaDados|ram~604_combout\))) # (\ROM1|memROM~12_combout\ & 
-- (((\memoriaDados|ram~609_combout\ & \ROM1|memROM~55_combout\)))) ) ) ) # ( \memoriaDados|ram~599_combout\ & ( !\memoriaDados|ram~594_combout\ & ( (!\ROM1|memROM~12_combout\ & (\memoriaDados|ram~604_combout\ & ((\ROM1|memROM~55_combout\)))) # 
-- (\ROM1|memROM~12_combout\ & (((!\ROM1|memROM~55_combout\) # (\memoriaDados|ram~609_combout\)))) ) ) ) # ( !\memoriaDados|ram~599_combout\ & ( !\memoriaDados|ram~594_combout\ & ( (\ROM1|memROM~55_combout\ & ((!\ROM1|memROM~12_combout\ & 
-- (\memoriaDados|ram~604_combout\)) # (\ROM1|memROM~12_combout\ & ((\memoriaDados|ram~609_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000111001100110100011111001100010001111111111101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~604_combout\,
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	datac => \memoriaDados|ALT_INV_ram~609_combout\,
	datad => \ROM1|ALT_INV_memROM~55_combout\,
	datae => \memoriaDados|ALT_INV_ram~599_combout\,
	dataf => \memoriaDados|ALT_INV_ram~594_combout\,
	combout => \memoriaDados|ram~610_combout\);

-- Location: LABCELL_X36_Y2_N3
\CPU|MUX1|saida_MUX[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[3]~2_combout\ = ( \memoriaDados|ram~610_combout\ & ( (!\AND_ENABLE_BUFFER_8BITS~2_combout\) # (\SW[3]~input_o\) ) ) # ( !\memoriaDados|ram~610_combout\ & ( (\SW[3]~input_o\ & \AND_ENABLE_BUFFER_8BITS~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[3]~input_o\,
	datad => \ALT_INV_AND_ENABLE_BUFFER_8BITS~2_combout\,
	dataf => \memoriaDados|ALT_INV_ram~610_combout\,
	combout => \CPU|MUX1|saida_MUX[3]~2_combout\);

-- Location: IOIBUF_X34_Y0_N1
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: FF_X37_Y6_N16
\memoriaDados|ram~401\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \memoriaDados|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~401_q\);

-- Location: FF_X35_Y7_N28
\memoriaDados|ram~305\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \memoriaDados|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~305_q\);

-- Location: FF_X34_Y7_N5
\memoriaDados|ram~273\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \memoriaDados|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~273_q\);

-- Location: FF_X36_Y4_N14
\memoriaDados|ram~433\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \memoriaDados|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~433_q\);

-- Location: LABCELL_X36_Y4_N12
\memoriaDados|ram~574\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~574_combout\ = ( \memoriaDados|ram~433_q\ & ( \ROM1|memROM~24_combout\ & ( (\ROM1|memROM~55_combout\) # (\memoriaDados|ram~401_q\) ) ) ) # ( !\memoriaDados|ram~433_q\ & ( \ROM1|memROM~24_combout\ & ( (\memoriaDados|ram~401_q\ & 
-- !\ROM1|memROM~55_combout\) ) ) ) # ( \memoriaDados|ram~433_q\ & ( !\ROM1|memROM~24_combout\ & ( (!\ROM1|memROM~55_combout\ & ((\memoriaDados|ram~273_q\))) # (\ROM1|memROM~55_combout\ & (\memoriaDados|ram~305_q\)) ) ) ) # ( !\memoriaDados|ram~433_q\ & ( 
-- !\ROM1|memROM~24_combout\ & ( (!\ROM1|memROM~55_combout\ & ((\memoriaDados|ram~273_q\))) # (\ROM1|memROM~55_combout\ & (\memoriaDados|ram~305_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111101000100010001000111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~401_q\,
	datab => \ROM1|ALT_INV_memROM~55_combout\,
	datac => \memoriaDados|ALT_INV_ram~305_q\,
	datad => \memoriaDados|ALT_INV_ram~273_q\,
	datae => \memoriaDados|ALT_INV_ram~433_q\,
	dataf => \ROM1|ALT_INV_memROM~24_combout\,
	combout => \memoriaDados|ram~574_combout\);

-- Location: FF_X34_Y5_N56
\memoriaDados|ram~369\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \memoriaDados|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~369_q\);

-- Location: FF_X37_Y5_N1
\memoriaDados|ram~465\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \memoriaDados|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~465_q\);

-- Location: FF_X39_Y5_N31
\memoriaDados|ram~337\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \memoriaDados|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~337_q\);

-- Location: FF_X36_Y4_N56
\memoriaDados|ram~497\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \memoriaDados|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~497_q\);

-- Location: LABCELL_X36_Y4_N54
\memoriaDados|ram~576\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~576_combout\ = ( \memoriaDados|ram~497_q\ & ( \ROM1|memROM~24_combout\ & ( (\ROM1|memROM~55_combout\) # (\memoriaDados|ram~465_q\) ) ) ) # ( !\memoriaDados|ram~497_q\ & ( \ROM1|memROM~24_combout\ & ( (\memoriaDados|ram~465_q\ & 
-- !\ROM1|memROM~55_combout\) ) ) ) # ( \memoriaDados|ram~497_q\ & ( !\ROM1|memROM~24_combout\ & ( (!\ROM1|memROM~55_combout\ & ((\memoriaDados|ram~337_q\))) # (\ROM1|memROM~55_combout\ & (\memoriaDados|ram~369_q\)) ) ) ) # ( !\memoriaDados|ram~497_q\ & ( 
-- !\ROM1|memROM~24_combout\ & ( (!\ROM1|memROM~55_combout\ & ((\memoriaDados|ram~337_q\))) # (\ROM1|memROM~55_combout\ & (\memoriaDados|ram~369_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~369_q\,
	datab => \memoriaDados|ALT_INV_ram~465_q\,
	datac => \memoriaDados|ALT_INV_ram~337_q\,
	datad => \ROM1|ALT_INV_memROM~55_combout\,
	datae => \memoriaDados|ALT_INV_ram~497_q\,
	dataf => \ROM1|ALT_INV_memROM~24_combout\,
	combout => \memoriaDados|ram~576_combout\);

-- Location: FF_X40_Y6_N7
\memoriaDados|ram~417\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \memoriaDados|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~417_q\);

-- Location: FF_X32_Y5_N13
\memoriaDados|ram~289\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \memoriaDados|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~289_q\);

-- Location: FF_X34_Y7_N7
\memoriaDados|ram~449\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \memoriaDados|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~449_q\);

-- Location: FF_X36_Y7_N29
\memoriaDados|ram~321\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \memoriaDados|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~321_q\);

-- Location: LABCELL_X36_Y7_N24
\memoriaDados|ram~575\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~575_combout\ = ( \memoriaDados|ram~321_q\ & ( \ROM1|memROM~55_combout\ & ( (!\ROM1|memROM~24_combout\) # (\memoriaDados|ram~449_q\) ) ) ) # ( !\memoriaDados|ram~321_q\ & ( \ROM1|memROM~55_combout\ & ( (\ROM1|memROM~24_combout\ & 
-- \memoriaDados|ram~449_q\) ) ) ) # ( \memoriaDados|ram~321_q\ & ( !\ROM1|memROM~55_combout\ & ( (!\ROM1|memROM~24_combout\ & ((\memoriaDados|ram~289_q\))) # (\ROM1|memROM~24_combout\ & (\memoriaDados|ram~417_q\)) ) ) ) # ( !\memoriaDados|ram~321_q\ & ( 
-- !\ROM1|memROM~55_combout\ & ( (!\ROM1|memROM~24_combout\ & ((\memoriaDados|ram~289_q\))) # (\ROM1|memROM~24_combout\ & (\memoriaDados|ram~417_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000000011111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~417_q\,
	datab => \memoriaDados|ALT_INV_ram~289_q\,
	datac => \ROM1|ALT_INV_memROM~24_combout\,
	datad => \memoriaDados|ALT_INV_ram~449_q\,
	datae => \memoriaDados|ALT_INV_ram~321_q\,
	dataf => \ROM1|ALT_INV_memROM~55_combout\,
	combout => \memoriaDados|ram~575_combout\);

-- Location: FF_X34_Y7_N17
\memoriaDados|ram~353\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \memoriaDados|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~353_q\);

-- Location: FF_X35_Y3_N29
\memoriaDados|ram~385\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \memoriaDados|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~385_q\);

-- Location: FF_X29_Y4_N52
\memoriaDados|ram~481\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \memoriaDados|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~481_q\);

-- Location: FF_X35_Y1_N2
\memoriaDados|ram~513\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \memoriaDados|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~513_q\);

-- Location: LABCELL_X35_Y1_N0
\memoriaDados|ram~577\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~577_combout\ = ( \memoriaDados|ram~513_q\ & ( \ROM1|memROM~55_combout\ & ( (\ROM1|memROM~24_combout\) # (\memoriaDados|ram~385_q\) ) ) ) # ( !\memoriaDados|ram~513_q\ & ( \ROM1|memROM~55_combout\ & ( (\memoriaDados|ram~385_q\ & 
-- !\ROM1|memROM~24_combout\) ) ) ) # ( \memoriaDados|ram~513_q\ & ( !\ROM1|memROM~55_combout\ & ( (!\ROM1|memROM~24_combout\ & (\memoriaDados|ram~353_q\)) # (\ROM1|memROM~24_combout\ & ((\memoriaDados|ram~481_q\))) ) ) ) # ( !\memoriaDados|ram~513_q\ & ( 
-- !\ROM1|memROM~55_combout\ & ( (!\ROM1|memROM~24_combout\ & (\memoriaDados|ram~353_q\)) # (\ROM1|memROM~24_combout\ & ((\memoriaDados|ram~481_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~353_q\,
	datab => \memoriaDados|ALT_INV_ram~385_q\,
	datac => \ROM1|ALT_INV_memROM~24_combout\,
	datad => \memoriaDados|ALT_INV_ram~481_q\,
	datae => \memoriaDados|ALT_INV_ram~513_q\,
	dataf => \ROM1|ALT_INV_memROM~55_combout\,
	combout => \memoriaDados|ram~577_combout\);

-- Location: LABCELL_X35_Y4_N54
\memoriaDados|ram~578\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~578_combout\ = ( \memoriaDados|ram~575_combout\ & ( \memoriaDados|ram~577_combout\ & ( ((!\ROM1|memROM~19_combout\ & (\memoriaDados|ram~574_combout\)) # (\ROM1|memROM~19_combout\ & ((\memoriaDados|ram~576_combout\)))) # 
-- (\ROM1|memROM~14_combout\) ) ) ) # ( !\memoriaDados|ram~575_combout\ & ( \memoriaDados|ram~577_combout\ & ( (!\ROM1|memROM~14_combout\ & ((!\ROM1|memROM~19_combout\ & (\memoriaDados|ram~574_combout\)) # (\ROM1|memROM~19_combout\ & 
-- ((\memoriaDados|ram~576_combout\))))) # (\ROM1|memROM~14_combout\ & (((\ROM1|memROM~19_combout\)))) ) ) ) # ( \memoriaDados|ram~575_combout\ & ( !\memoriaDados|ram~577_combout\ & ( (!\ROM1|memROM~14_combout\ & ((!\ROM1|memROM~19_combout\ & 
-- (\memoriaDados|ram~574_combout\)) # (\ROM1|memROM~19_combout\ & ((\memoriaDados|ram~576_combout\))))) # (\ROM1|memROM~14_combout\ & (((!\ROM1|memROM~19_combout\)))) ) ) ) # ( !\memoriaDados|ram~575_combout\ & ( !\memoriaDados|ram~577_combout\ & ( 
-- (!\ROM1|memROM~14_combout\ & ((!\ROM1|memROM~19_combout\ & (\memoriaDados|ram~574_combout\)) # (\ROM1|memROM~19_combout\ & ((\memoriaDados|ram~576_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101010011100000111101000100101001011110111010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~14_combout\,
	datab => \memoriaDados|ALT_INV_ram~574_combout\,
	datac => \ROM1|ALT_INV_memROM~19_combout\,
	datad => \memoriaDados|ALT_INV_ram~576_combout\,
	datae => \memoriaDados|ALT_INV_ram~575_combout\,
	dataf => \memoriaDados|ALT_INV_ram~577_combout\,
	combout => \memoriaDados|ram~578_combout\);

-- Location: LABCELL_X32_Y1_N30
\memoriaDados|ram~81feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~81feeder_combout\ = ( \CPU|REG1|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(2),
	combout => \memoriaDados|ram~81feeder_combout\);

-- Location: FF_X32_Y1_N31
\memoriaDados|ram~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~81feeder_combout\,
	ena => \memoriaDados|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~81_q\);

-- Location: FF_X36_Y5_N11
\memoriaDados|ram~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \memoriaDados|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~49_q\);

-- Location: FF_X36_Y6_N49
\memoriaDados|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \memoriaDados|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~17_q\);

-- Location: FF_X34_Y6_N23
\memoriaDados|ram~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \memoriaDados|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~113_q\);

-- Location: MLABCELL_X34_Y6_N21
\memoriaDados|ram~569\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~569_combout\ = ( \memoriaDados|ram~113_q\ & ( \ROM1|memROM~55_combout\ & ( (\ROM1|memROM~19_combout\) # (\memoriaDados|ram~49_q\) ) ) ) # ( !\memoriaDados|ram~113_q\ & ( \ROM1|memROM~55_combout\ & ( (\memoriaDados|ram~49_q\ & 
-- !\ROM1|memROM~19_combout\) ) ) ) # ( \memoriaDados|ram~113_q\ & ( !\ROM1|memROM~55_combout\ & ( (!\ROM1|memROM~19_combout\ & ((\memoriaDados|ram~17_q\))) # (\ROM1|memROM~19_combout\ & (\memoriaDados|ram~81_q\)) ) ) ) # ( !\memoriaDados|ram~113_q\ & ( 
-- !\ROM1|memROM~55_combout\ & ( (!\ROM1|memROM~19_combout\ & ((\memoriaDados|ram~17_q\))) # (\ROM1|memROM~19_combout\ & (\memoriaDados|ram~81_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~81_q\,
	datab => \memoriaDados|ALT_INV_ram~49_q\,
	datac => \memoriaDados|ALT_INV_ram~17_q\,
	datad => \ROM1|ALT_INV_memROM~19_combout\,
	datae => \memoriaDados|ALT_INV_ram~113_q\,
	dataf => \ROM1|ALT_INV_memROM~55_combout\,
	combout => \memoriaDados|ram~569_combout\);

-- Location: FF_X40_Y5_N7
\memoriaDados|ram~145\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \memoriaDados|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~145_q\);

-- Location: LABCELL_X39_Y1_N18
\memoriaDados|ram~177feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~177feeder_combout\ = ( \CPU|REG1|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(2),
	combout => \memoriaDados|ram~177feeder_combout\);

-- Location: FF_X39_Y1_N20
\memoriaDados|ram~177\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~177feeder_combout\,
	ena => \memoriaDados|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~177_q\);

-- Location: FF_X31_Y4_N43
\memoriaDados|ram~209\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \memoriaDados|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~209_q\);

-- Location: FF_X37_Y3_N59
\memoriaDados|ram~241\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \memoriaDados|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~241_q\);

-- Location: MLABCELL_X37_Y3_N57
\memoriaDados|ram~570\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~570_combout\ = ( \memoriaDados|ram~241_q\ & ( \ROM1|memROM~55_combout\ & ( (\ROM1|memROM~19_combout\) # (\memoriaDados|ram~177_q\) ) ) ) # ( !\memoriaDados|ram~241_q\ & ( \ROM1|memROM~55_combout\ & ( (\memoriaDados|ram~177_q\ & 
-- !\ROM1|memROM~19_combout\) ) ) ) # ( \memoriaDados|ram~241_q\ & ( !\ROM1|memROM~55_combout\ & ( (!\ROM1|memROM~19_combout\ & (\memoriaDados|ram~145_q\)) # (\ROM1|memROM~19_combout\ & ((\memoriaDados|ram~209_q\))) ) ) ) # ( !\memoriaDados|ram~241_q\ & ( 
-- !\ROM1|memROM~55_combout\ & ( (!\ROM1|memROM~19_combout\ & (\memoriaDados|ram~145_q\)) # (\ROM1|memROM~19_combout\ & ((\memoriaDados|ram~209_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~145_q\,
	datab => \memoriaDados|ALT_INV_ram~177_q\,
	datac => \ROM1|ALT_INV_memROM~19_combout\,
	datad => \memoriaDados|ALT_INV_ram~209_q\,
	datae => \memoriaDados|ALT_INV_ram~241_q\,
	dataf => \ROM1|ALT_INV_memROM~55_combout\,
	combout => \memoriaDados|ram~570_combout\);

-- Location: LABCELL_X31_Y6_N45
\memoriaDados|ram~33feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~33feeder_combout\ = ( \CPU|REG1|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(2),
	combout => \memoriaDados|ram~33feeder_combout\);

-- Location: FF_X31_Y6_N46
\memoriaDados|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~33feeder_combout\,
	ena => \memoriaDados|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~33_q\);

-- Location: FF_X34_Y6_N11
\memoriaDados|ram~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \memoriaDados|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~65_q\);

-- Location: LABCELL_X32_Y1_N12
\memoriaDados|ram~97feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~97feeder_combout\ = ( \CPU|REG1|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(2),
	combout => \memoriaDados|ram~97feeder_combout\);

-- Location: FF_X32_Y1_N13
\memoriaDados|ram~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~97feeder_combout\,
	ena => \memoriaDados|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~97_q\);

-- Location: FF_X34_Y6_N44
\memoriaDados|ram~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \memoriaDados|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~129_q\);

-- Location: MLABCELL_X34_Y6_N42
\memoriaDados|ram~571\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~571_combout\ = ( \memoriaDados|ram~129_q\ & ( \ROM1|memROM~55_combout\ & ( (\ROM1|memROM~19_combout\) # (\memoriaDados|ram~65_q\) ) ) ) # ( !\memoriaDados|ram~129_q\ & ( \ROM1|memROM~55_combout\ & ( (\memoriaDados|ram~65_q\ & 
-- !\ROM1|memROM~19_combout\) ) ) ) # ( \memoriaDados|ram~129_q\ & ( !\ROM1|memROM~55_combout\ & ( (!\ROM1|memROM~19_combout\ & (\memoriaDados|ram~33_q\)) # (\ROM1|memROM~19_combout\ & ((\memoriaDados|ram~97_q\))) ) ) ) # ( !\memoriaDados|ram~129_q\ & ( 
-- !\ROM1|memROM~55_combout\ & ( (!\ROM1|memROM~19_combout\ & (\memoriaDados|ram~33_q\)) # (\ROM1|memROM~19_combout\ & ((\memoriaDados|ram~97_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~33_q\,
	datab => \memoriaDados|ALT_INV_ram~65_q\,
	datac => \ROM1|ALT_INV_memROM~19_combout\,
	datad => \memoriaDados|ALT_INV_ram~97_q\,
	datae => \memoriaDados|ALT_INV_ram~129_q\,
	dataf => \ROM1|ALT_INV_memROM~55_combout\,
	combout => \memoriaDados|ram~571_combout\);

-- Location: LABCELL_X31_Y4_N33
\memoriaDados|ram~225feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~225feeder_combout\ = ( \CPU|REG1|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(2),
	combout => \memoriaDados|ram~225feeder_combout\);

-- Location: FF_X31_Y4_N34
\memoriaDados|ram~225\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~225feeder_combout\,
	ena => \memoriaDados|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~225_q\);

-- Location: FF_X37_Y3_N43
\memoriaDados|ram~193\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \memoriaDados|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~193_q\);

-- Location: LABCELL_X41_Y3_N24
\memoriaDados|ram~161feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~161feeder_combout\ = ( \CPU|REG1|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(2),
	combout => \memoriaDados|ram~161feeder_combout\);

-- Location: FF_X41_Y3_N26
\memoriaDados|ram~161\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~161feeder_combout\,
	ena => \memoriaDados|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~161_q\);

-- Location: FF_X35_Y1_N44
\memoriaDados|ram~257\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \memoriaDados|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~257_q\);

-- Location: LABCELL_X35_Y1_N42
\memoriaDados|ram~572\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~572_combout\ = ( \memoriaDados|ram~257_q\ & ( \ROM1|memROM~19_combout\ & ( (\ROM1|memROM~55_combout\) # (\memoriaDados|ram~225_q\) ) ) ) # ( !\memoriaDados|ram~257_q\ & ( \ROM1|memROM~19_combout\ & ( (\memoriaDados|ram~225_q\ & 
-- !\ROM1|memROM~55_combout\) ) ) ) # ( \memoriaDados|ram~257_q\ & ( !\ROM1|memROM~19_combout\ & ( (!\ROM1|memROM~55_combout\ & ((\memoriaDados|ram~161_q\))) # (\ROM1|memROM~55_combout\ & (\memoriaDados|ram~193_q\)) ) ) ) # ( !\memoriaDados|ram~257_q\ & ( 
-- !\ROM1|memROM~19_combout\ & ( (!\ROM1|memROM~55_combout\ & ((\memoriaDados|ram~161_q\))) # (\ROM1|memROM~55_combout\ & (\memoriaDados|ram~193_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~225_q\,
	datab => \memoriaDados|ALT_INV_ram~193_q\,
	datac => \ROM1|ALT_INV_memROM~55_combout\,
	datad => \memoriaDados|ALT_INV_ram~161_q\,
	datae => \memoriaDados|ALT_INV_ram~257_q\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \memoriaDados|ram~572_combout\);

-- Location: LABCELL_X35_Y4_N33
\memoriaDados|ram~573\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~573_combout\ = ( \memoriaDados|ram~571_combout\ & ( \memoriaDados|ram~572_combout\ & ( ((!\ROM1|memROM~24_combout\ & (\memoriaDados|ram~569_combout\)) # (\ROM1|memROM~24_combout\ & ((\memoriaDados|ram~570_combout\)))) # 
-- (\ROM1|memROM~14_combout\) ) ) ) # ( !\memoriaDados|ram~571_combout\ & ( \memoriaDados|ram~572_combout\ & ( (!\ROM1|memROM~14_combout\ & ((!\ROM1|memROM~24_combout\ & (\memoriaDados|ram~569_combout\)) # (\ROM1|memROM~24_combout\ & 
-- ((\memoriaDados|ram~570_combout\))))) # (\ROM1|memROM~14_combout\ & (\ROM1|memROM~24_combout\)) ) ) ) # ( \memoriaDados|ram~571_combout\ & ( !\memoriaDados|ram~572_combout\ & ( (!\ROM1|memROM~14_combout\ & ((!\ROM1|memROM~24_combout\ & 
-- (\memoriaDados|ram~569_combout\)) # (\ROM1|memROM~24_combout\ & ((\memoriaDados|ram~570_combout\))))) # (\ROM1|memROM~14_combout\ & (!\ROM1|memROM~24_combout\)) ) ) ) # ( !\memoriaDados|ram~571_combout\ & ( !\memoriaDados|ram~572_combout\ & ( 
-- (!\ROM1|memROM~14_combout\ & ((!\ROM1|memROM~24_combout\ & (\memoriaDados|ram~569_combout\)) # (\ROM1|memROM~24_combout\ & ((\memoriaDados|ram~570_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010010011000110111000011001001110110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~14_combout\,
	datab => \ROM1|ALT_INV_memROM~24_combout\,
	datac => \memoriaDados|ALT_INV_ram~569_combout\,
	datad => \memoriaDados|ALT_INV_ram~570_combout\,
	datae => \memoriaDados|ALT_INV_ram~571_combout\,
	dataf => \memoriaDados|ALT_INV_ram~572_combout\,
	combout => \memoriaDados|ram~573_combout\);

-- Location: FF_X37_Y4_N37
\memoriaDados|ram~137\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \memoriaDados|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~137_q\);

-- Location: FF_X35_Y6_N22
\memoriaDados|ram~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \memoriaDados|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~121_q\);

-- Location: FF_X34_Y1_N58
\memoriaDados|ram~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \memoriaDados|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~89_q\);

-- Location: FF_X36_Y1_N46
\memoriaDados|ram~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \memoriaDados|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~105_q\);

-- Location: LABCELL_X36_Y4_N3
\memoriaDados|ram~581\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~581_combout\ = ( \memoriaDados|ram~105_q\ & ( \ROM1|memROM~14_combout\ & ( (!\ROM1|memROM~55_combout\) # (\memoriaDados|ram~137_q\) ) ) ) # ( !\memoriaDados|ram~105_q\ & ( \ROM1|memROM~14_combout\ & ( (\memoriaDados|ram~137_q\ & 
-- \ROM1|memROM~55_combout\) ) ) ) # ( \memoriaDados|ram~105_q\ & ( !\ROM1|memROM~14_combout\ & ( (!\ROM1|memROM~55_combout\ & ((\memoriaDados|ram~89_q\))) # (\ROM1|memROM~55_combout\ & (\memoriaDados|ram~121_q\)) ) ) ) # ( !\memoriaDados|ram~105_q\ & ( 
-- !\ROM1|memROM~14_combout\ & ( (!\ROM1|memROM~55_combout\ & ((\memoriaDados|ram~89_q\))) # (\ROM1|memROM~55_combout\ & (\memoriaDados|ram~121_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100010001000100011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~137_q\,
	datab => \ROM1|ALT_INV_memROM~55_combout\,
	datac => \memoriaDados|ALT_INV_ram~121_q\,
	datad => \memoriaDados|ALT_INV_ram~89_q\,
	datae => \memoriaDados|ALT_INV_ram~105_q\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \memoriaDados|ram~581_combout\);

-- Location: FF_X35_Y3_N37
\memoriaDados|ram~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \memoriaDados|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~73_q\);

-- Location: LABCELL_X41_Y3_N36
\memoriaDados|ram~41feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~41feeder_combout\ = ( \CPU|REG1|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(2),
	combout => \memoriaDados|ram~41feeder_combout\);

-- Location: FF_X41_Y3_N37
\memoriaDados|ram~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~41feeder_combout\,
	ena => \memoriaDados|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~41_q\);

-- Location: FF_X35_Y6_N29
\memoriaDados|ram~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \memoriaDados|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~57_q\);

-- Location: FF_X31_Y3_N31
\memoriaDados|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \memoriaDados|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~25_q\);

-- Location: LABCELL_X36_Y4_N30
\memoriaDados|ram~579\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~579_combout\ = ( \memoriaDados|ram~25_q\ & ( \ROM1|memROM~14_combout\ & ( (!\ROM1|memROM~55_combout\ & ((\memoriaDados|ram~41_q\))) # (\ROM1|memROM~55_combout\ & (\memoriaDados|ram~73_q\)) ) ) ) # ( !\memoriaDados|ram~25_q\ & ( 
-- \ROM1|memROM~14_combout\ & ( (!\ROM1|memROM~55_combout\ & ((\memoriaDados|ram~41_q\))) # (\ROM1|memROM~55_combout\ & (\memoriaDados|ram~73_q\)) ) ) ) # ( \memoriaDados|ram~25_q\ & ( !\ROM1|memROM~14_combout\ & ( (!\ROM1|memROM~55_combout\) # 
-- (\memoriaDados|ram~57_q\) ) ) ) # ( !\memoriaDados|ram~25_q\ & ( !\ROM1|memROM~14_combout\ & ( (\memoriaDados|ram~57_q\ & \ROM1|memROM~55_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111110000111100110011010101010011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~73_q\,
	datab => \memoriaDados|ALT_INV_ram~41_q\,
	datac => \memoriaDados|ALT_INV_ram~57_q\,
	datad => \ROM1|ALT_INV_memROM~55_combout\,
	datae => \memoriaDados|ALT_INV_ram~25_q\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \memoriaDados|ram~579_combout\);

-- Location: FF_X32_Y4_N35
\memoriaDados|ram~249\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \memoriaDados|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~249_q\);

-- Location: FF_X32_Y4_N56
\memoriaDados|ram~265\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \memoriaDados|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~265_q\);

-- Location: FF_X32_Y4_N17
\memoriaDados|ram~217\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \memoriaDados|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~217_q\);

-- Location: FF_X31_Y4_N17
\memoriaDados|ram~233\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \memoriaDados|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~233_q\);

-- Location: LABCELL_X32_Y4_N57
\memoriaDados|ram~582\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~582_combout\ = ( \ROM1|memROM~14_combout\ & ( \ROM1|memROM~55_combout\ & ( \memoriaDados|ram~265_q\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( \ROM1|memROM~55_combout\ & ( \memoriaDados|ram~249_q\ ) ) ) # ( \ROM1|memROM~14_combout\ & ( 
-- !\ROM1|memROM~55_combout\ & ( \memoriaDados|ram~233_q\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( !\ROM1|memROM~55_combout\ & ( \memoriaDados|ram~217_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~249_q\,
	datab => \memoriaDados|ALT_INV_ram~265_q\,
	datac => \memoriaDados|ALT_INV_ram~217_q\,
	datad => \memoriaDados|ALT_INV_ram~233_q\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~55_combout\,
	combout => \memoriaDados|ram~582_combout\);

-- Location: FF_X40_Y4_N59
\memoriaDados|ram~185\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \memoriaDados|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~185_q\);

-- Location: FF_X40_Y5_N37
\memoriaDados|ram~153\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \memoriaDados|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~153_q\);

-- Location: FF_X40_Y6_N37
\memoriaDados|ram~169\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \memoriaDados|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~169_q\);

-- Location: FF_X40_Y4_N50
\memoriaDados|ram~201\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \memoriaDados|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~201_q\);

-- Location: LABCELL_X40_Y4_N48
\memoriaDados|ram~580\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~580_combout\ = ( \memoriaDados|ram~201_q\ & ( \ROM1|memROM~14_combout\ & ( (\ROM1|memROM~55_combout\) # (\memoriaDados|ram~169_q\) ) ) ) # ( !\memoriaDados|ram~201_q\ & ( \ROM1|memROM~14_combout\ & ( (\memoriaDados|ram~169_q\ & 
-- !\ROM1|memROM~55_combout\) ) ) ) # ( \memoriaDados|ram~201_q\ & ( !\ROM1|memROM~14_combout\ & ( (!\ROM1|memROM~55_combout\ & ((\memoriaDados|ram~153_q\))) # (\ROM1|memROM~55_combout\ & (\memoriaDados|ram~185_q\)) ) ) ) # ( !\memoriaDados|ram~201_q\ & ( 
-- !\ROM1|memROM~14_combout\ & ( (!\ROM1|memROM~55_combout\ & ((\memoriaDados|ram~153_q\))) # (\ROM1|memROM~55_combout\ & (\memoriaDados|ram~185_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~185_q\,
	datab => \memoriaDados|ALT_INV_ram~153_q\,
	datac => \memoriaDados|ALT_INV_ram~169_q\,
	datad => \ROM1|ALT_INV_memROM~55_combout\,
	datae => \memoriaDados|ALT_INV_ram~201_q\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \memoriaDados|ram~580_combout\);

-- Location: LABCELL_X35_Y4_N36
\memoriaDados|ram~583\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~583_combout\ = ( \memoriaDados|ram~582_combout\ & ( \memoriaDados|ram~580_combout\ & ( ((!\ROM1|memROM~19_combout\ & ((\memoriaDados|ram~579_combout\))) # (\ROM1|memROM~19_combout\ & (\memoriaDados|ram~581_combout\))) # 
-- (\ROM1|memROM~24_combout\) ) ) ) # ( !\memoriaDados|ram~582_combout\ & ( \memoriaDados|ram~580_combout\ & ( (!\ROM1|memROM~24_combout\ & ((!\ROM1|memROM~19_combout\ & ((\memoriaDados|ram~579_combout\))) # (\ROM1|memROM~19_combout\ & 
-- (\memoriaDados|ram~581_combout\)))) # (\ROM1|memROM~24_combout\ & (((!\ROM1|memROM~19_combout\)))) ) ) ) # ( \memoriaDados|ram~582_combout\ & ( !\memoriaDados|ram~580_combout\ & ( (!\ROM1|memROM~24_combout\ & ((!\ROM1|memROM~19_combout\ & 
-- ((\memoriaDados|ram~579_combout\))) # (\ROM1|memROM~19_combout\ & (\memoriaDados|ram~581_combout\)))) # (\ROM1|memROM~24_combout\ & (((\ROM1|memROM~19_combout\)))) ) ) ) # ( !\memoriaDados|ram~582_combout\ & ( !\memoriaDados|ram~580_combout\ & ( 
-- (!\ROM1|memROM~24_combout\ & ((!\ROM1|memROM~19_combout\ & ((\memoriaDados|ram~579_combout\))) # (\ROM1|memROM~19_combout\ & (\memoriaDados|ram~581_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011000100000001111100011100110100111101000011011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~581_combout\,
	datab => \ROM1|ALT_INV_memROM~24_combout\,
	datac => \ROM1|ALT_INV_memROM~19_combout\,
	datad => \memoriaDados|ALT_INV_ram~579_combout\,
	datae => \memoriaDados|ALT_INV_ram~582_combout\,
	dataf => \memoriaDados|ALT_INV_ram~580_combout\,
	combout => \memoriaDados|ram~583_combout\);

-- Location: LABCELL_X39_Y2_N9
\memoriaDados|ram~409feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~409feeder_combout\ = ( \CPU|REG1|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(2),
	combout => \memoriaDados|ram~409feeder_combout\);

-- Location: FF_X39_Y2_N11
\memoriaDados|ram~409\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~409feeder_combout\,
	ena => \memoriaDados|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~409_q\);

-- Location: FF_X31_Y3_N37
\memoriaDados|ram~281\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \memoriaDados|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~281_q\);

-- Location: FF_X34_Y4_N52
\memoriaDados|ram~345\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \memoriaDados|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~345_q\);

-- Location: FF_X35_Y4_N11
\memoriaDados|ram~473\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \memoriaDados|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~473_q\);

-- Location: LABCELL_X35_Y4_N9
\memoriaDados|ram~584\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~584_combout\ = ( \memoriaDados|ram~473_q\ & ( \ROM1|memROM~19_combout\ & ( (\memoriaDados|ram~345_q\) # (\ROM1|memROM~24_combout\) ) ) ) # ( !\memoriaDados|ram~473_q\ & ( \ROM1|memROM~19_combout\ & ( (!\ROM1|memROM~24_combout\ & 
-- \memoriaDados|ram~345_q\) ) ) ) # ( \memoriaDados|ram~473_q\ & ( !\ROM1|memROM~19_combout\ & ( (!\ROM1|memROM~24_combout\ & ((\memoriaDados|ram~281_q\))) # (\ROM1|memROM~24_combout\ & (\memoriaDados|ram~409_q\)) ) ) ) # ( !\memoriaDados|ram~473_q\ & ( 
-- !\ROM1|memROM~19_combout\ & ( (!\ROM1|memROM~24_combout\ & ((\memoriaDados|ram~281_q\))) # (\ROM1|memROM~24_combout\ & (\memoriaDados|ram~409_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~409_q\,
	datab => \memoriaDados|ALT_INV_ram~281_q\,
	datac => \ROM1|ALT_INV_memROM~24_combout\,
	datad => \memoriaDados|ALT_INV_ram~345_q\,
	datae => \memoriaDados|ALT_INV_ram~473_q\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \memoriaDados|ram~584_combout\);

-- Location: FF_X39_Y3_N16
\memoriaDados|ram~457\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \memoriaDados|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~457_q\);

-- Location: LABCELL_X41_Y4_N15
\memoriaDados|ram~393feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~393feeder_combout\ = ( \CPU|REG1|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(2),
	combout => \memoriaDados|ram~393feeder_combout\);

-- Location: FF_X41_Y4_N17
\memoriaDados|ram~393\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~393feeder_combout\,
	ena => \memoriaDados|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~393_q\);

-- Location: LABCELL_X41_Y4_N51
\memoriaDados|ram~329feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~329feeder_combout\ = ( \CPU|REG1|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(2),
	combout => \memoriaDados|ram~329feeder_combout\);

-- Location: FF_X41_Y4_N52
\memoriaDados|ram~329\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~329feeder_combout\,
	ena => \memoriaDados|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~329_q\);

-- Location: FF_X41_Y4_N2
\memoriaDados|ram~521\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \memoriaDados|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~521_q\);

-- Location: LABCELL_X41_Y4_N0
\memoriaDados|ram~587\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~587_combout\ = ( \memoriaDados|ram~521_q\ & ( \ROM1|memROM~19_combout\ & ( (\ROM1|memROM~24_combout\) # (\memoriaDados|ram~393_q\) ) ) ) # ( !\memoriaDados|ram~521_q\ & ( \ROM1|memROM~19_combout\ & ( (\memoriaDados|ram~393_q\ & 
-- !\ROM1|memROM~24_combout\) ) ) ) # ( \memoriaDados|ram~521_q\ & ( !\ROM1|memROM~19_combout\ & ( (!\ROM1|memROM~24_combout\ & ((\memoriaDados|ram~329_q\))) # (\ROM1|memROM~24_combout\ & (\memoriaDados|ram~457_q\)) ) ) ) # ( !\memoriaDados|ram~521_q\ & ( 
-- !\ROM1|memROM~19_combout\ & ( (!\ROM1|memROM~24_combout\ & ((\memoriaDados|ram~329_q\))) # (\ROM1|memROM~24_combout\ & (\memoriaDados|ram~457_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~457_q\,
	datab => \memoriaDados|ALT_INV_ram~393_q\,
	datac => \ROM1|ALT_INV_memROM~24_combout\,
	datad => \memoriaDados|ALT_INV_ram~329_q\,
	datae => \memoriaDados|ALT_INV_ram~521_q\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \memoriaDados|ram~587_combout\);

-- Location: FF_X34_Y5_N22
\memoriaDados|ram~313\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \memoriaDados|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~313_q\);

-- Location: LABCELL_X39_Y4_N9
\memoriaDados|ram~441feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~441feeder_combout\ = ( \CPU|REG1|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(2),
	combout => \memoriaDados|ram~441feeder_combout\);

-- Location: FF_X39_Y4_N11
\memoriaDados|ram~441\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~441feeder_combout\,
	ena => \memoriaDados|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~441_q\);

-- Location: FF_X34_Y4_N46
\memoriaDados|ram~377\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \memoriaDados|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~377_q\);

-- Location: FF_X39_Y4_N2
\memoriaDados|ram~505\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \memoriaDados|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~505_q\);

-- Location: LABCELL_X39_Y4_N0
\memoriaDados|ram~585\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~585_combout\ = ( \memoriaDados|ram~505_q\ & ( \ROM1|memROM~19_combout\ & ( (\ROM1|memROM~24_combout\) # (\memoriaDados|ram~377_q\) ) ) ) # ( !\memoriaDados|ram~505_q\ & ( \ROM1|memROM~19_combout\ & ( (\memoriaDados|ram~377_q\ & 
-- !\ROM1|memROM~24_combout\) ) ) ) # ( \memoriaDados|ram~505_q\ & ( !\ROM1|memROM~19_combout\ & ( (!\ROM1|memROM~24_combout\ & (\memoriaDados|ram~313_q\)) # (\ROM1|memROM~24_combout\ & ((\memoriaDados|ram~441_q\))) ) ) ) # ( !\memoriaDados|ram~505_q\ & ( 
-- !\ROM1|memROM~19_combout\ & ( (!\ROM1|memROM~24_combout\ & (\memoriaDados|ram~313_q\)) # (\ROM1|memROM~24_combout\ & ((\memoriaDados|ram~441_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~313_q\,
	datab => \memoriaDados|ALT_INV_ram~441_q\,
	datac => \memoriaDados|ALT_INV_ram~377_q\,
	datad => \ROM1|ALT_INV_memROM~24_combout\,
	datae => \memoriaDados|ALT_INV_ram~505_q\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \memoriaDados|ram~585_combout\);

-- Location: FF_X32_Y5_N10
\memoriaDados|ram~297\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \memoriaDados|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~297_q\);

-- Location: FF_X36_Y1_N34
\memoriaDados|ram~361\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \memoriaDados|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~361_q\);

-- Location: LABCELL_X41_Y5_N57
\memoriaDados|ram~425feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~425feeder_combout\ = ( \CPU|REG1|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(2),
	combout => \memoriaDados|ram~425feeder_combout\);

-- Location: FF_X41_Y5_N58
\memoriaDados|ram~425\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~425feeder_combout\,
	ena => \memoriaDados|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~425_q\);

-- Location: FF_X37_Y1_N11
\memoriaDados|ram~489\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \memoriaDados|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~489_q\);

-- Location: MLABCELL_X37_Y1_N9
\memoriaDados|ram~586\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~586_combout\ = ( \memoriaDados|ram~489_q\ & ( \ROM1|memROM~19_combout\ & ( (\ROM1|memROM~24_combout\) # (\memoriaDados|ram~361_q\) ) ) ) # ( !\memoriaDados|ram~489_q\ & ( \ROM1|memROM~19_combout\ & ( (\memoriaDados|ram~361_q\ & 
-- !\ROM1|memROM~24_combout\) ) ) ) # ( \memoriaDados|ram~489_q\ & ( !\ROM1|memROM~19_combout\ & ( (!\ROM1|memROM~24_combout\ & (\memoriaDados|ram~297_q\)) # (\ROM1|memROM~24_combout\ & ((\memoriaDados|ram~425_q\))) ) ) ) # ( !\memoriaDados|ram~489_q\ & ( 
-- !\ROM1|memROM~19_combout\ & ( (!\ROM1|memROM~24_combout\ & (\memoriaDados|ram~297_q\)) # (\ROM1|memROM~24_combout\ & ((\memoriaDados|ram~425_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~297_q\,
	datab => \memoriaDados|ALT_INV_ram~361_q\,
	datac => \ROM1|ALT_INV_memROM~24_combout\,
	datad => \memoriaDados|ALT_INV_ram~425_q\,
	datae => \memoriaDados|ALT_INV_ram~489_q\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \memoriaDados|ram~586_combout\);

-- Location: LABCELL_X35_Y4_N51
\memoriaDados|ram~588\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~588_combout\ = ( \memoriaDados|ram~585_combout\ & ( \memoriaDados|ram~586_combout\ & ( (!\ROM1|memROM~55_combout\ & (((\ROM1|memROM~14_combout\)) # (\memoriaDados|ram~584_combout\))) # (\ROM1|memROM~55_combout\ & 
-- (((!\ROM1|memROM~14_combout\) # (\memoriaDados|ram~587_combout\)))) ) ) ) # ( !\memoriaDados|ram~585_combout\ & ( \memoriaDados|ram~586_combout\ & ( (!\ROM1|memROM~55_combout\ & (((\ROM1|memROM~14_combout\)) # (\memoriaDados|ram~584_combout\))) # 
-- (\ROM1|memROM~55_combout\ & (((\memoriaDados|ram~587_combout\ & \ROM1|memROM~14_combout\)))) ) ) ) # ( \memoriaDados|ram~585_combout\ & ( !\memoriaDados|ram~586_combout\ & ( (!\ROM1|memROM~55_combout\ & (\memoriaDados|ram~584_combout\ & 
-- ((!\ROM1|memROM~14_combout\)))) # (\ROM1|memROM~55_combout\ & (((!\ROM1|memROM~14_combout\) # (\memoriaDados|ram~587_combout\)))) ) ) ) # ( !\memoriaDados|ram~585_combout\ & ( !\memoriaDados|ram~586_combout\ & ( (!\ROM1|memROM~55_combout\ & 
-- (\memoriaDados|ram~584_combout\ & ((!\ROM1|memROM~14_combout\)))) # (\ROM1|memROM~55_combout\ & (((\memoriaDados|ram~587_combout\ & \ROM1|memROM~14_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000101011101110000010100100010101011110111011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~55_combout\,
	datab => \memoriaDados|ALT_INV_ram~584_combout\,
	datac => \memoriaDados|ALT_INV_ram~587_combout\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	datae => \memoriaDados|ALT_INV_ram~585_combout\,
	dataf => \memoriaDados|ALT_INV_ram~586_combout\,
	combout => \memoriaDados|ram~588_combout\);

-- Location: LABCELL_X35_Y4_N12
\memoriaDados|ram~589\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~589_combout\ = ( \memoriaDados|ram~583_combout\ & ( \memoriaDados|ram~588_combout\ & ( ((!\ROM1|memROM~12_combout\ & ((\memoriaDados|ram~573_combout\))) # (\ROM1|memROM~12_combout\ & (\memoriaDados|ram~578_combout\))) # 
-- (\ROM1|memROM~13_combout\) ) ) ) # ( !\memoriaDados|ram~583_combout\ & ( \memoriaDados|ram~588_combout\ & ( (!\ROM1|memROM~13_combout\ & ((!\ROM1|memROM~12_combout\ & ((\memoriaDados|ram~573_combout\))) # (\ROM1|memROM~12_combout\ & 
-- (\memoriaDados|ram~578_combout\)))) # (\ROM1|memROM~13_combout\ & (((\ROM1|memROM~12_combout\)))) ) ) ) # ( \memoriaDados|ram~583_combout\ & ( !\memoriaDados|ram~588_combout\ & ( (!\ROM1|memROM~13_combout\ & ((!\ROM1|memROM~12_combout\ & 
-- ((\memoriaDados|ram~573_combout\))) # (\ROM1|memROM~12_combout\ & (\memoriaDados|ram~578_combout\)))) # (\ROM1|memROM~13_combout\ & (((!\ROM1|memROM~12_combout\)))) ) ) ) # ( !\memoriaDados|ram~583_combout\ & ( !\memoriaDados|ram~588_combout\ & ( 
-- (!\ROM1|memROM~13_combout\ & ((!\ROM1|memROM~12_combout\ & ((\memoriaDados|ram~573_combout\))) # (\ROM1|memROM~12_combout\ & (\memoriaDados|ram~578_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100001111110100010000001100011101110011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~578_combout\,
	datab => \ROM1|ALT_INV_memROM~13_combout\,
	datac => \memoriaDados|ALT_INV_ram~573_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \memoriaDados|ALT_INV_ram~583_combout\,
	dataf => \memoriaDados|ALT_INV_ram~588_combout\,
	combout => \memoriaDados|ram~589_combout\);

-- Location: LABCELL_X35_Y4_N18
\CPU|MUX1|saida_MUX[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[2]~1_combout\ = ( \memoriaDados|ram~589_combout\ & ( (!\CPU|Decoder|Equal1~0_combout\ & (((!\AND_ENABLE_BUFFER_8BITS~2_combout\)) # (\SW[2]~input_o\))) # (\CPU|Decoder|Equal1~0_combout\ & (((\ROM1|memROM~55_combout\)))) ) ) # ( 
-- !\memoriaDados|ram~589_combout\ & ( (!\CPU|Decoder|Equal1~0_combout\ & (\SW[2]~input_o\ & ((\AND_ENABLE_BUFFER_8BITS~2_combout\)))) # (\CPU|Decoder|Equal1~0_combout\ & (((\ROM1|memROM~55_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111000000110100011111001111010001111100111101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datab => \CPU|Decoder|ALT_INV_Equal1~0_combout\,
	datac => \ROM1|ALT_INV_memROM~55_combout\,
	datad => \ALT_INV_AND_ENABLE_BUFFER_8BITS~2_combout\,
	dataf => \memoriaDados|ALT_INV_ram~589_combout\,
	combout => \CPU|MUX1|saida_MUX[2]~1_combout\);

-- Location: IOIBUF_X33_Y0_N58
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: MLABCELL_X37_Y5_N24
\ROM1|memROM~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~25_combout\ = ( \ROM1|memROM~39_combout\ & ( !\CPU|PC|DOUT\(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	dataf => \ROM1|ALT_INV_memROM~39_combout\,
	combout => \ROM1|memROM~25_combout\);

-- Location: IOIBUF_X33_Y0_N41
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LABCELL_X36_Y6_N3
\AND_ENABLE_BUFFER_8BITS~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_ENABLE_BUFFER_8BITS~0_combout\ = ( \CPU|Decoder|Habilita_A~0_combout\ & ( (\ROM1|memROM~5_combout\ & \DECODER_BLOCOS|OUTPUT[5]~0_combout\) ) ) # ( !\CPU|Decoder|Habilita_A~0_combout\ & ( (\ROM1|memROM~5_combout\ & 
-- (\DECODER_BLOCOS|OUTPUT[5]~0_combout\ & \CPU|Decoder|Equal1~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \DECODER_BLOCOS|ALT_INV_OUTPUT[5]~0_combout\,
	datad => \CPU|Decoder|ALT_INV_Equal1~1_combout\,
	dataf => \CPU|Decoder|ALT_INV_Habilita_A~0_combout\,
	combout => \AND_ENABLE_BUFFER_8BITS~0_combout\);

-- Location: LABCELL_X36_Y6_N21
\Data_IN[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~0_combout\ = ( \CPU|Decoder|Habilita_A~0_combout\ & ( \memoriaDados|process_0~0_combout\ ) ) # ( !\CPU|Decoder|Habilita_A~0_combout\ & ( (\memoriaDados|process_0~0_combout\ & \CPU|Decoder|Equal1~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \memoriaDados|ALT_INV_process_0~0_combout\,
	datad => \CPU|Decoder|ALT_INV_Equal1~1_combout\,
	dataf => \CPU|Decoder|ALT_INV_Habilita_A~0_combout\,
	combout => \Data_IN[0]~0_combout\);

-- Location: IOIBUF_X29_Y0_N52
\FPGA_RESET~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_RESET,
	o => \FPGA_RESET~input_o\);

-- Location: IOIBUF_X33_Y0_N92
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X33_Y0_N75
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: MLABCELL_X37_Y3_N36
\Data_IN[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~2_combout\ = ( !\ROM1|memROM~14_combout\ & ( \ROM1|memROM~13_combout\ & ( (\SW[8]~input_o\ & ((!\ROM1|memROM~4_combout\) # (!\ROM1|memROM~11_combout\))) ) ) ) # ( \ROM1|memROM~14_combout\ & ( !\ROM1|memROM~13_combout\ & ( (\SW[9]~input_o\ & 
-- ((!\ROM1|memROM~4_combout\) # (!\ROM1|memROM~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000101000110011001000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \ALT_INV_SW[8]~input_o\,
	datac => \ALT_INV_SW[9]~input_o\,
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \Data_IN[0]~2_combout\);

-- Location: IOIBUF_X14_Y0_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X14_Y0_N18
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: IOIBUF_X11_Y0_N35
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: LABCELL_X17_Y3_N42
\detectorSub1|saidaQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \detectorSub1|saidaQ~0_combout\ = ( !\KEY[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_KEY[1]~input_o\,
	combout => \detectorSub1|saidaQ~0_combout\);

-- Location: FF_X17_Y3_N44
\detectorSub1|saidaQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \detectorSub1|saidaQ~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \detectorSub1|saidaQ~q\);

-- Location: LABCELL_X17_Y3_N9
\detectorSub1|saida\ : cyclonev_lcell_comb
-- Equation(s):
-- \detectorSub1|saida~combout\ = LCELL(( !\detectorSub1|saidaQ~q\ & ( !\KEY[1]~input_o\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_KEY[1]~input_o\,
	dataf => \detectorSub1|ALT_INV_saidaQ~q\,
	combout => \detectorSub1|saida~combout\);

-- Location: LABCELL_X36_Y3_N54
\DEB_MEM_KEY1|DOUT~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEB_MEM_KEY1|DOUT~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \DEB_MEM_KEY1|DOUT~feeder_combout\);

-- Location: LABCELL_X35_Y5_N18
\RESET_KEY0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RESET_KEY0~0_combout\ = ( \ROM1|memROM~14_combout\ & ( (\ROM1|memROM~8_combout\ & (\ROM1|memROM~10_combout\ & (\ROM1|memROM~24_combout\ & \ROM1|memROM~19_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datab => \ROM1|ALT_INV_memROM~10_combout\,
	datac => \ROM1|ALT_INV_memROM~24_combout\,
	datad => \ROM1|ALT_INV_memROM~19_combout\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \RESET_KEY0~0_combout\);

-- Location: LABCELL_X35_Y3_N0
RESET_KEY1 : cyclonev_lcell_comb
-- Equation(s):
-- \RESET_KEY1~combout\ = ( \ROM1|memROM~5_combout\ & ( \RESET_KEY0~0_combout\ & ( (!\ROM1|memROM~13_combout\ & (\ROM1|memROM~55_combout\ & \ROM1|memROM~12_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~13_combout\,
	datac => \ROM1|ALT_INV_memROM~55_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ALT_INV_RESET_KEY0~0_combout\,
	combout => \RESET_KEY1~combout\);

-- Location: FF_X36_Y3_N56
\DEB_MEM_KEY1|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub1|saida~combout\,
	d => \DEB_MEM_KEY1|DOUT~feeder_combout\,
	clrn => \ALT_INV_RESET_KEY1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEB_MEM_KEY1|DOUT~q\);

-- Location: IOIBUF_X10_Y0_N92
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LABCELL_X14_Y2_N42
\detectorSub0|saidaQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \detectorSub0|saidaQ~0_combout\ = ( !\KEY[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \detectorSub0|saidaQ~0_combout\);

-- Location: FF_X14_Y2_N44
\detectorSub0|saidaQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \detectorSub0|saidaQ~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \detectorSub0|saidaQ~q\);

-- Location: LABCELL_X14_Y2_N33
\detectorSub0|saida\ : cyclonev_lcell_comb
-- Equation(s):
-- \detectorSub0|saida~combout\ = LCELL(( !\KEY[0]~input_o\ & ( !\detectorSub0|saidaQ~q\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_KEY[0]~input_o\,
	dataf => \detectorSub0|ALT_INV_saidaQ~q\,
	combout => \detectorSub0|saida~combout\);

-- Location: LABCELL_X35_Y5_N21
\DEB_MEM_KEY0|DOUT~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEB_MEM_KEY0|DOUT~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \DEB_MEM_KEY0|DOUT~feeder_combout\);

-- Location: LABCELL_X35_Y5_N12
RESET_KEY0 : cyclonev_lcell_comb
-- Equation(s):
-- \RESET_KEY0~combout\ = ( \ROM1|memROM~5_combout\ & ( \RESET_KEY0~0_combout\ & ( (\ROM1|memROM~13_combout\ & (\ROM1|memROM~12_combout\ & \ROM1|memROM~55_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~13_combout\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \ROM1|ALT_INV_memROM~55_combout\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ALT_INV_RESET_KEY0~0_combout\,
	combout => \RESET_KEY0~combout\);

-- Location: FF_X35_Y5_N22
\DEB_MEM_KEY0|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \DEB_MEM_KEY0|DOUT~feeder_combout\,
	clrn => \ALT_INV_RESET_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEB_MEM_KEY0|DOUT~q\);

-- Location: LABCELL_X36_Y3_N42
\Data_IN[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~1_combout\ = ( \DEB_MEM_KEY1|DOUT~q\ & ( \DEB_MEM_KEY0|DOUT~q\ & ( (!\ROM1|memROM~14_combout\) # ((!\ROM1|memROM~13_combout\ & (\KEY[2]~input_o\)) # (\ROM1|memROM~13_combout\ & ((\KEY[3]~input_o\)))) ) ) ) # ( !\DEB_MEM_KEY1|DOUT~q\ & ( 
-- \DEB_MEM_KEY0|DOUT~q\ & ( (!\ROM1|memROM~13_combout\ & (((!\ROM1|memROM~14_combout\)) # (\KEY[2]~input_o\))) # (\ROM1|memROM~13_combout\ & (((\KEY[3]~input_o\ & \ROM1|memROM~14_combout\)))) ) ) ) # ( \DEB_MEM_KEY1|DOUT~q\ & ( !\DEB_MEM_KEY0|DOUT~q\ & ( 
-- (!\ROM1|memROM~13_combout\ & (\KEY[2]~input_o\ & ((\ROM1|memROM~14_combout\)))) # (\ROM1|memROM~13_combout\ & (((!\ROM1|memROM~14_combout\) # (\KEY[3]~input_o\)))) ) ) ) # ( !\DEB_MEM_KEY1|DOUT~q\ & ( !\DEB_MEM_KEY0|DOUT~q\ & ( (\ROM1|memROM~14_combout\ & 
-- ((!\ROM1|memROM~13_combout\ & (\KEY[2]~input_o\)) # (\ROM1|memROM~13_combout\ & ((\KEY[3]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000111001100110100011111001100010001111111111101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[2]~input_o\,
	datab => \ROM1|ALT_INV_memROM~13_combout\,
	datac => \ALT_INV_KEY[3]~input_o\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	datae => \DEB_MEM_KEY1|ALT_INV_DOUT~q\,
	dataf => \DEB_MEM_KEY0|ALT_INV_DOUT~q\,
	combout => \Data_IN[0]~1_combout\);

-- Location: LABCELL_X36_Y3_N6
\Data_IN[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~3_combout\ = ( \ROM1|memROM~55_combout\ & ( \Data_IN[0]~1_combout\ & ( (\ROM1|memROM~12_combout\ & (\FPGA_RESET~input_o\ & !\AND_HEX0~1_combout\)) ) ) ) # ( !\ROM1|memROM~55_combout\ & ( \Data_IN[0]~1_combout\ & ( (\Data_IN[0]~2_combout\) # 
-- (\ROM1|memROM~12_combout\) ) ) ) # ( \ROM1|memROM~55_combout\ & ( !\Data_IN[0]~1_combout\ & ( (\ROM1|memROM~12_combout\ & (\FPGA_RESET~input_o\ & !\AND_HEX0~1_combout\)) ) ) ) # ( !\ROM1|memROM~55_combout\ & ( !\Data_IN[0]~1_combout\ & ( 
-- \Data_IN[0]~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000100000001000001010101111111110001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~12_combout\,
	datab => \ALT_INV_FPGA_RESET~input_o\,
	datac => \ALT_INV_AND_HEX0~1_combout\,
	datad => \ALT_INV_Data_IN[0]~2_combout\,
	datae => \ROM1|ALT_INV_memROM~55_combout\,
	dataf => \ALT_INV_Data_IN[0]~1_combout\,
	combout => \Data_IN[0]~3_combout\);

-- Location: FF_X40_Y5_N1
\memoriaDados|ram~151\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \memoriaDados|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~151_q\);

-- Location: FF_X39_Y2_N37
\memoriaDados|ram~407\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \memoriaDados|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~407_q\);

-- Location: FF_X40_Y5_N58
\memoriaDados|ram~143\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \memoriaDados|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~143_q\);

-- Location: FF_X40_Y5_N32
\memoriaDados|ram~399\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \memoriaDados|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~399_q\);

-- Location: LABCELL_X40_Y5_N30
\memoriaDados|ram~528\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~528_combout\ = ( \memoriaDados|ram~399_q\ & ( \ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~12_combout\ & (\memoriaDados|ram~151_q\)) # (\ROM1|memROM~12_combout\ & ((\memoriaDados|ram~407_q\))) ) ) ) # ( !\memoriaDados|ram~399_q\ & ( 
-- \ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~12_combout\ & (\memoriaDados|ram~151_q\)) # (\ROM1|memROM~12_combout\ & ((\memoriaDados|ram~407_q\))) ) ) ) # ( \memoriaDados|ram~399_q\ & ( !\ROM1|memROM~13_combout\ & ( (\ROM1|memROM~12_combout\) # 
-- (\memoriaDados|ram~143_q\) ) ) ) # ( !\memoriaDados|ram~399_q\ & ( !\ROM1|memROM~13_combout\ & ( (\memoriaDados|ram~143_q\ & !\ROM1|memROM~12_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011111111111101010101001100110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~151_q\,
	datab => \memoriaDados|ALT_INV_ram~407_q\,
	datac => \memoriaDados|ALT_INV_ram~143_q\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \memoriaDados|ALT_INV_ram~399_q\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \memoriaDados|ram~528_combout\);

-- Location: FF_X31_Y3_N1
\memoriaDados|ram~279\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \memoriaDados|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~279_q\);

-- Location: FF_X31_Y3_N7
\memoriaDados|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \memoriaDados|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~23_q\);

-- Location: FF_X31_Y3_N49
\memoriaDados|ram~271\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \memoriaDados|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~271_q\);

-- Location: FF_X35_Y5_N59
\memoriaDados|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \memoriaDados|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~15_q\);

-- Location: MLABCELL_X37_Y3_N48
\memoriaDados|ram~527\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~527_combout\ = ( \ROM1|memROM~13_combout\ & ( \ROM1|memROM~12_combout\ & ( \memoriaDados|ram~279_q\ ) ) ) # ( !\ROM1|memROM~13_combout\ & ( \ROM1|memROM~12_combout\ & ( \memoriaDados|ram~271_q\ ) ) ) # ( \ROM1|memROM~13_combout\ & ( 
-- !\ROM1|memROM~12_combout\ & ( \memoriaDados|ram~23_q\ ) ) ) # ( !\ROM1|memROM~13_combout\ & ( !\ROM1|memROM~12_combout\ & ( \memoriaDados|ram~15_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~279_q\,
	datab => \memoriaDados|ALT_INV_ram~23_q\,
	datac => \memoriaDados|ALT_INV_ram~271_q\,
	datad => \memoriaDados|ALT_INV_ram~15_q\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \memoriaDados|ram~527_combout\);

-- Location: FF_X35_Y4_N50
\memoriaDados|ram~463\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \memoriaDados|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~463_q\);

-- Location: FF_X35_Y4_N32
\memoriaDados|ram~215\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \memoriaDados|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~215_q\);

-- Location: FF_X31_Y4_N28
\memoriaDados|ram~207\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \memoriaDados|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~207_q\);

-- Location: FF_X35_Y4_N2
\memoriaDados|ram~471\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \memoriaDados|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~471_q\);

-- Location: LABCELL_X35_Y4_N0
\memoriaDados|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~530_combout\ = ( \memoriaDados|ram~471_q\ & ( \ROM1|memROM~13_combout\ & ( (\ROM1|memROM~12_combout\) # (\memoriaDados|ram~215_q\) ) ) ) # ( !\memoriaDados|ram~471_q\ & ( \ROM1|memROM~13_combout\ & ( (\memoriaDados|ram~215_q\ & 
-- !\ROM1|memROM~12_combout\) ) ) ) # ( \memoriaDados|ram~471_q\ & ( !\ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~12_combout\ & ((\memoriaDados|ram~207_q\))) # (\ROM1|memROM~12_combout\ & (\memoriaDados|ram~463_q\)) ) ) ) # ( !\memoriaDados|ram~471_q\ & ( 
-- !\ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~12_combout\ & ((\memoriaDados|ram~207_q\))) # (\ROM1|memROM~12_combout\ & (\memoriaDados|ram~463_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~463_q\,
	datab => \memoriaDados|ALT_INV_ram~215_q\,
	datac => \memoriaDados|ALT_INV_ram~207_q\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \memoriaDados|ALT_INV_ram~471_q\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \memoriaDados|ram~530_combout\);

-- Location: FF_X34_Y1_N50
\memoriaDados|ram~335\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \memoriaDados|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~335_q\);

-- Location: FF_X34_Y1_N8
\memoriaDados|ram~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \memoriaDados|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~87_q\);

-- Location: FF_X32_Y1_N28
\memoriaDados|ram~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \memoriaDados|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~79_q\);

-- Location: FF_X34_Y1_N38
\memoriaDados|ram~343\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \memoriaDados|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~343_q\);

-- Location: MLABCELL_X34_Y1_N36
\memoriaDados|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~529_combout\ = ( \memoriaDados|ram~343_q\ & ( \ROM1|memROM~13_combout\ & ( (\ROM1|memROM~12_combout\) # (\memoriaDados|ram~87_q\) ) ) ) # ( !\memoriaDados|ram~343_q\ & ( \ROM1|memROM~13_combout\ & ( (\memoriaDados|ram~87_q\ & 
-- !\ROM1|memROM~12_combout\) ) ) ) # ( \memoriaDados|ram~343_q\ & ( !\ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~12_combout\ & ((\memoriaDados|ram~79_q\))) # (\ROM1|memROM~12_combout\ & (\memoriaDados|ram~335_q\)) ) ) ) # ( !\memoriaDados|ram~343_q\ & ( 
-- !\ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~12_combout\ & ((\memoriaDados|ram~79_q\))) # (\ROM1|memROM~12_combout\ & (\memoriaDados|ram~335_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~335_q\,
	datab => \memoriaDados|ALT_INV_ram~87_q\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \memoriaDados|ALT_INV_ram~79_q\,
	datae => \memoriaDados|ALT_INV_ram~343_q\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \memoriaDados|ram~529_combout\);

-- Location: LABCELL_X36_Y3_N24
\memoriaDados|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~531_combout\ = ( \memoriaDados|ram~530_combout\ & ( \memoriaDados|ram~529_combout\ & ( ((!\ROM1|memROM~24_combout\ & ((\memoriaDados|ram~527_combout\))) # (\ROM1|memROM~24_combout\ & (\memoriaDados|ram~528_combout\))) # 
-- (\ROM1|memROM~19_combout\) ) ) ) # ( !\memoriaDados|ram~530_combout\ & ( \memoriaDados|ram~529_combout\ & ( (!\ROM1|memROM~19_combout\ & ((!\ROM1|memROM~24_combout\ & ((\memoriaDados|ram~527_combout\))) # (\ROM1|memROM~24_combout\ & 
-- (\memoriaDados|ram~528_combout\)))) # (\ROM1|memROM~19_combout\ & (!\ROM1|memROM~24_combout\)) ) ) ) # ( \memoriaDados|ram~530_combout\ & ( !\memoriaDados|ram~529_combout\ & ( (!\ROM1|memROM~19_combout\ & ((!\ROM1|memROM~24_combout\ & 
-- ((\memoriaDados|ram~527_combout\))) # (\ROM1|memROM~24_combout\ & (\memoriaDados|ram~528_combout\)))) # (\ROM1|memROM~19_combout\ & (\ROM1|memROM~24_combout\)) ) ) ) # ( !\memoriaDados|ram~530_combout\ & ( !\memoriaDados|ram~529_combout\ & ( 
-- (!\ROM1|memROM~19_combout\ & ((!\ROM1|memROM~24_combout\ & ((\memoriaDados|ram~527_combout\))) # (\ROM1|memROM~24_combout\ & (\memoriaDados|ram~528_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000100111001101101000110110011100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~19_combout\,
	datab => \ROM1|ALT_INV_memROM~24_combout\,
	datac => \memoriaDados|ALT_INV_ram~528_combout\,
	datad => \memoriaDados|ALT_INV_ram~527_combout\,
	datae => \memoriaDados|ALT_INV_ram~530_combout\,
	dataf => \memoriaDados|ALT_INV_ram~529_combout\,
	combout => \memoriaDados|ram~531_combout\);

-- Location: FF_X39_Y4_N53
\memoriaDados|ram~439\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \memoriaDados|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~439_q\);

-- Location: FF_X36_Y3_N47
\memoriaDados|ram~183\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \memoriaDados|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~183_q\);

-- Location: FF_X39_Y1_N56
\memoriaDados|ram~175\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \memoriaDados|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~175_q\);

-- Location: FF_X36_Y3_N38
\memoriaDados|ram~431\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \memoriaDados|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~431_q\);

-- Location: LABCELL_X36_Y3_N36
\memoriaDados|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~533_combout\ = ( \memoriaDados|ram~431_q\ & ( \ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~12_combout\ & ((\memoriaDados|ram~183_q\))) # (\ROM1|memROM~12_combout\ & (\memoriaDados|ram~439_q\)) ) ) ) # ( !\memoriaDados|ram~431_q\ & ( 
-- \ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~12_combout\ & ((\memoriaDados|ram~183_q\))) # (\ROM1|memROM~12_combout\ & (\memoriaDados|ram~439_q\)) ) ) ) # ( \memoriaDados|ram~431_q\ & ( !\ROM1|memROM~13_combout\ & ( (\memoriaDados|ram~175_q\) # 
-- (\ROM1|memROM~12_combout\) ) ) ) # ( !\memoriaDados|ram~431_q\ & ( !\ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~12_combout\ & \memoriaDados|ram~175_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000011111111111100110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~439_q\,
	datab => \memoriaDados|ALT_INV_ram~183_q\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \memoriaDados|ALT_INV_ram~175_q\,
	datae => \memoriaDados|ALT_INV_ram~431_q\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \memoriaDados|ram~533_combout\);

-- Location: FF_X32_Y3_N26
\memoriaDados|ram~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \memoriaDados|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~119_q\);

-- Location: FF_X34_Y6_N59
\memoriaDados|ram~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \memoriaDados|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~111_q\);

-- Location: FF_X32_Y3_N37
\memoriaDados|ram~367\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \memoriaDados|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~367_q\);

-- Location: FF_X32_Y3_N8
\memoriaDados|ram~375\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \memoriaDados|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~375_q\);

-- Location: LABCELL_X32_Y3_N6
\memoriaDados|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~534_combout\ = ( \memoriaDados|ram~375_q\ & ( \ROM1|memROM~12_combout\ & ( (\memoriaDados|ram~367_q\) # (\ROM1|memROM~13_combout\) ) ) ) # ( !\memoriaDados|ram~375_q\ & ( \ROM1|memROM~12_combout\ & ( (!\ROM1|memROM~13_combout\ & 
-- \memoriaDados|ram~367_q\) ) ) ) # ( \memoriaDados|ram~375_q\ & ( !\ROM1|memROM~12_combout\ & ( (!\ROM1|memROM~13_combout\ & ((\memoriaDados|ram~111_q\))) # (\ROM1|memROM~13_combout\ & (\memoriaDados|ram~119_q\)) ) ) ) # ( !\memoriaDados|ram~375_q\ & ( 
-- !\ROM1|memROM~12_combout\ & ( (!\ROM1|memROM~13_combout\ & ((\memoriaDados|ram~111_q\))) # (\ROM1|memROM~13_combout\ & (\memoriaDados|ram~119_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~119_q\,
	datab => \memoriaDados|ALT_INV_ram~111_q\,
	datac => \ROM1|ALT_INV_memROM~13_combout\,
	datad => \memoriaDados|ALT_INV_ram~367_q\,
	datae => \memoriaDados|ALT_INV_ram~375_q\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \memoriaDados|ram~534_combout\);

-- Location: FF_X37_Y7_N56
\memoriaDados|ram~503\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \memoriaDados|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~503_q\);

-- Location: FF_X39_Y5_N20
\memoriaDados|ram~239\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \memoriaDados|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~239_q\);

-- Location: FF_X37_Y7_N25
\memoriaDados|ram~247\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \memoriaDados|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~247_q\);

-- Location: FF_X37_Y8_N40
\memoriaDados|ram~495\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \memoriaDados|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~495_q\);

-- Location: MLABCELL_X37_Y7_N57
\memoriaDados|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~535_combout\ = ( \ROM1|memROM~13_combout\ & ( \ROM1|memROM~12_combout\ & ( \memoriaDados|ram~503_q\ ) ) ) # ( !\ROM1|memROM~13_combout\ & ( \ROM1|memROM~12_combout\ & ( \memoriaDados|ram~495_q\ ) ) ) # ( \ROM1|memROM~13_combout\ & ( 
-- !\ROM1|memROM~12_combout\ & ( \memoriaDados|ram~247_q\ ) ) ) # ( !\ROM1|memROM~13_combout\ & ( !\ROM1|memROM~12_combout\ & ( \memoriaDados|ram~239_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~503_q\,
	datab => \memoriaDados|ALT_INV_ram~239_q\,
	datac => \memoriaDados|ALT_INV_ram~247_q\,
	datad => \memoriaDados|ALT_INV_ram~495_q\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \memoriaDados|ram~535_combout\);

-- Location: FF_X35_Y7_N38
\memoriaDados|ram~311\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \memoriaDados|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~311_q\);

-- Location: FF_X35_Y7_N59
\memoriaDados|ram~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \memoriaDados|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~47_q\);

-- Location: FF_X35_Y7_N5
\memoriaDados|ram~303\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \memoriaDados|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~303_q\);

-- Location: FF_X35_Y6_N56
\memoriaDados|ram~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \memoriaDados|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~55_q\);

-- Location: LABCELL_X35_Y7_N24
\memoriaDados|ram~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~532_combout\ = ( \ROM1|memROM~12_combout\ & ( \ROM1|memROM~13_combout\ & ( \memoriaDados|ram~311_q\ ) ) ) # ( !\ROM1|memROM~12_combout\ & ( \ROM1|memROM~13_combout\ & ( \memoriaDados|ram~55_q\ ) ) ) # ( \ROM1|memROM~12_combout\ & ( 
-- !\ROM1|memROM~13_combout\ & ( \memoriaDados|ram~303_q\ ) ) ) # ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~13_combout\ & ( \memoriaDados|ram~47_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~311_q\,
	datab => \memoriaDados|ALT_INV_ram~47_q\,
	datac => \memoriaDados|ALT_INV_ram~303_q\,
	datad => \memoriaDados|ALT_INV_ram~55_q\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \memoriaDados|ram~532_combout\);

-- Location: LABCELL_X36_Y3_N18
\memoriaDados|ram~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~536_combout\ = ( \memoriaDados|ram~535_combout\ & ( \memoriaDados|ram~532_combout\ & ( (!\ROM1|memROM~19_combout\ & ((!\ROM1|memROM~24_combout\) # ((\memoriaDados|ram~533_combout\)))) # (\ROM1|memROM~19_combout\ & 
-- (((\memoriaDados|ram~534_combout\)) # (\ROM1|memROM~24_combout\))) ) ) ) # ( !\memoriaDados|ram~535_combout\ & ( \memoriaDados|ram~532_combout\ & ( (!\ROM1|memROM~19_combout\ & ((!\ROM1|memROM~24_combout\) # ((\memoriaDados|ram~533_combout\)))) # 
-- (\ROM1|memROM~19_combout\ & (!\ROM1|memROM~24_combout\ & ((\memoriaDados|ram~534_combout\)))) ) ) ) # ( \memoriaDados|ram~535_combout\ & ( !\memoriaDados|ram~532_combout\ & ( (!\ROM1|memROM~19_combout\ & (\ROM1|memROM~24_combout\ & 
-- (\memoriaDados|ram~533_combout\))) # (\ROM1|memROM~19_combout\ & (((\memoriaDados|ram~534_combout\)) # (\ROM1|memROM~24_combout\))) ) ) ) # ( !\memoriaDados|ram~535_combout\ & ( !\memoriaDados|ram~532_combout\ & ( (!\ROM1|memROM~19_combout\ & 
-- (\ROM1|memROM~24_combout\ & (\memoriaDados|ram~533_combout\))) # (\ROM1|memROM~19_combout\ & (!\ROM1|memROM~24_combout\ & ((\memoriaDados|ram~534_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000100110101011110001010110011101001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~19_combout\,
	datab => \ROM1|ALT_INV_memROM~24_combout\,
	datac => \memoriaDados|ALT_INV_ram~533_combout\,
	datad => \memoriaDados|ALT_INV_ram~534_combout\,
	datae => \memoriaDados|ALT_INV_ram~535_combout\,
	dataf => \memoriaDados|ALT_INV_ram~532_combout\,
	combout => \memoriaDados|ram~536_combout\);

-- Location: FF_X37_Y3_N53
\memoriaDados|ram~191\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \memoriaDados|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~191_q\);

-- Location: FF_X34_Y6_N16
\memoriaDados|ram~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \memoriaDados|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~63_q\);

-- Location: FF_X36_Y7_N50
\memoriaDados|ram~319\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \memoriaDados|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~319_q\);

-- Location: FF_X37_Y3_N20
\memoriaDados|ram~447\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \memoriaDados|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~447_q\);

-- Location: MLABCELL_X37_Y3_N18
\memoriaDados|ram~542\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~542_combout\ = ( \memoriaDados|ram~447_q\ & ( \ROM1|memROM~12_combout\ & ( (\memoriaDados|ram~319_q\) # (\ROM1|memROM~24_combout\) ) ) ) # ( !\memoriaDados|ram~447_q\ & ( \ROM1|memROM~12_combout\ & ( (!\ROM1|memROM~24_combout\ & 
-- \memoriaDados|ram~319_q\) ) ) ) # ( \memoriaDados|ram~447_q\ & ( !\ROM1|memROM~12_combout\ & ( (!\ROM1|memROM~24_combout\ & ((\memoriaDados|ram~63_q\))) # (\ROM1|memROM~24_combout\ & (\memoriaDados|ram~191_q\)) ) ) ) # ( !\memoriaDados|ram~447_q\ & ( 
-- !\ROM1|memROM~12_combout\ & ( (!\ROM1|memROM~24_combout\ & ((\memoriaDados|ram~63_q\))) # (\ROM1|memROM~24_combout\ & (\memoriaDados|ram~191_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~191_q\,
	datab => \memoriaDados|ALT_INV_ram~63_q\,
	datac => \ROM1|ALT_INV_memROM~24_combout\,
	datad => \memoriaDados|ALT_INV_ram~319_q\,
	datae => \memoriaDados|ALT_INV_ram~447_q\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \memoriaDados|ram~542_combout\);

-- Location: FF_X37_Y4_N20
\memoriaDados|ram~519\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \memoriaDados|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~519_q\);

-- Location: FF_X37_Y4_N11
\memoriaDados|ram~263\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \memoriaDados|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~263_q\);

-- Location: FF_X37_Y4_N59
\memoriaDados|ram~135\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \memoriaDados|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~135_q\);

-- Location: FF_X34_Y3_N52
\memoriaDados|ram~391\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \memoriaDados|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~391_q\);

-- Location: MLABCELL_X37_Y4_N21
\memoriaDados|ram~545\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~545_combout\ = ( \ROM1|memROM~24_combout\ & ( \ROM1|memROM~12_combout\ & ( \memoriaDados|ram~519_q\ ) ) ) # ( !\ROM1|memROM~24_combout\ & ( \ROM1|memROM~12_combout\ & ( \memoriaDados|ram~391_q\ ) ) ) # ( \ROM1|memROM~24_combout\ & ( 
-- !\ROM1|memROM~12_combout\ & ( \memoriaDados|ram~263_q\ ) ) ) # ( !\ROM1|memROM~24_combout\ & ( !\ROM1|memROM~12_combout\ & ( \memoriaDados|ram~135_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~519_q\,
	datab => \memoriaDados|ALT_INV_ram~263_q\,
	datac => \memoriaDados|ALT_INV_ram~135_q\,
	datad => \memoriaDados|ALT_INV_ram~391_q\,
	datae => \ROM1|ALT_INV_memROM~24_combout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \memoriaDados|ram~545_combout\);

-- Location: FF_X36_Y7_N41
\memoriaDados|ram~327\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \memoriaDados|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~327_q\);

-- Location: FF_X35_Y3_N58
\memoriaDados|ram~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \memoriaDados|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~71_q\);

-- Location: FF_X40_Y4_N38
\memoriaDados|ram~199\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \memoriaDados|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~199_q\);

-- Location: FF_X37_Y1_N26
\memoriaDados|ram~455\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \memoriaDados|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~455_q\);

-- Location: MLABCELL_X37_Y1_N24
\memoriaDados|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~543_combout\ = ( \memoriaDados|ram~455_q\ & ( \ROM1|memROM~12_combout\ & ( (\ROM1|memROM~24_combout\) # (\memoriaDados|ram~327_q\) ) ) ) # ( !\memoriaDados|ram~455_q\ & ( \ROM1|memROM~12_combout\ & ( (\memoriaDados|ram~327_q\ & 
-- !\ROM1|memROM~24_combout\) ) ) ) # ( \memoriaDados|ram~455_q\ & ( !\ROM1|memROM~12_combout\ & ( (!\ROM1|memROM~24_combout\ & (\memoriaDados|ram~71_q\)) # (\ROM1|memROM~24_combout\ & ((\memoriaDados|ram~199_q\))) ) ) ) # ( !\memoriaDados|ram~455_q\ & ( 
-- !\ROM1|memROM~12_combout\ & ( (!\ROM1|memROM~24_combout\ & (\memoriaDados|ram~71_q\)) # (\ROM1|memROM~24_combout\ & ((\memoriaDados|ram~199_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~327_q\,
	datab => \memoriaDados|ALT_INV_ram~71_q\,
	datac => \ROM1|ALT_INV_memROM~24_combout\,
	datad => \memoriaDados|ALT_INV_ram~199_q\,
	datae => \memoriaDados|ALT_INV_ram~455_q\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \memoriaDados|ram~543_combout\);

-- Location: FF_X35_Y1_N53
\memoriaDados|ram~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \memoriaDados|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~127_q\);

-- Location: FF_X35_Y3_N16
\memoriaDados|ram~383\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \memoriaDados|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~383_q\);

-- Location: FF_X35_Y1_N8
\memoriaDados|ram~255\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \memoriaDados|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~255_q\);

-- Location: FF_X35_Y1_N26
\memoriaDados|ram~511\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \memoriaDados|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~511_q\);

-- Location: LABCELL_X35_Y1_N24
\memoriaDados|ram~544\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~544_combout\ = ( \memoriaDados|ram~511_q\ & ( \ROM1|memROM~12_combout\ & ( (\ROM1|memROM~24_combout\) # (\memoriaDados|ram~383_q\) ) ) ) # ( !\memoriaDados|ram~511_q\ & ( \ROM1|memROM~12_combout\ & ( (\memoriaDados|ram~383_q\ & 
-- !\ROM1|memROM~24_combout\) ) ) ) # ( \memoriaDados|ram~511_q\ & ( !\ROM1|memROM~12_combout\ & ( (!\ROM1|memROM~24_combout\ & (\memoriaDados|ram~127_q\)) # (\ROM1|memROM~24_combout\ & ((\memoriaDados|ram~255_q\))) ) ) ) # ( !\memoriaDados|ram~511_q\ & ( 
-- !\ROM1|memROM~12_combout\ & ( (!\ROM1|memROM~24_combout\ & (\memoriaDados|ram~127_q\)) # (\ROM1|memROM~24_combout\ & ((\memoriaDados|ram~255_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~127_q\,
	datab => \memoriaDados|ALT_INV_ram~383_q\,
	datac => \ROM1|ALT_INV_memROM~24_combout\,
	datad => \memoriaDados|ALT_INV_ram~255_q\,
	datae => \memoriaDados|ALT_INV_ram~511_q\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \memoriaDados|ram~544_combout\);

-- Location: LABCELL_X36_Y3_N0
\memoriaDados|ram~546\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~546_combout\ = ( \memoriaDados|ram~543_combout\ & ( \memoriaDados|ram~544_combout\ & ( (!\ROM1|memROM~19_combout\ & (((\ROM1|memROM~13_combout\)) # (\memoriaDados|ram~542_combout\))) # (\ROM1|memROM~19_combout\ & 
-- (((!\ROM1|memROM~13_combout\) # (\memoriaDados|ram~545_combout\)))) ) ) ) # ( !\memoriaDados|ram~543_combout\ & ( \memoriaDados|ram~544_combout\ & ( (!\ROM1|memROM~19_combout\ & (\memoriaDados|ram~542_combout\ & ((!\ROM1|memROM~13_combout\)))) # 
-- (\ROM1|memROM~19_combout\ & (((!\ROM1|memROM~13_combout\) # (\memoriaDados|ram~545_combout\)))) ) ) ) # ( \memoriaDados|ram~543_combout\ & ( !\memoriaDados|ram~544_combout\ & ( (!\ROM1|memROM~19_combout\ & (((\ROM1|memROM~13_combout\)) # 
-- (\memoriaDados|ram~542_combout\))) # (\ROM1|memROM~19_combout\ & (((\memoriaDados|ram~545_combout\ & \ROM1|memROM~13_combout\)))) ) ) ) # ( !\memoriaDados|ram~543_combout\ & ( !\memoriaDados|ram~544_combout\ & ( (!\ROM1|memROM~19_combout\ & 
-- (\memoriaDados|ram~542_combout\ & ((!\ROM1|memROM~13_combout\)))) # (\ROM1|memROM~19_combout\ & (((\memoriaDados|ram~545_combout\ & \ROM1|memROM~13_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000101001000101010111101110111000001010111011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~19_combout\,
	datab => \memoriaDados|ALT_INV_ram~542_combout\,
	datac => \memoriaDados|ALT_INV_ram~545_combout\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	datae => \memoriaDados|ALT_INV_ram~543_combout\,
	dataf => \memoriaDados|ALT_INV_ram~544_combout\,
	combout => \memoriaDados|ram~546_combout\);

-- Location: LABCELL_X32_Y5_N24
\memoriaDados|ram~295feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~295feeder_combout\ = ( \CPU|REG1|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(0),
	combout => \memoriaDados|ram~295feeder_combout\);

-- Location: FF_X32_Y5_N26
\memoriaDados|ram~295\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~295feeder_combout\,
	ena => \memoriaDados|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~295_q\);

-- Location: FF_X31_Y6_N7
\memoriaDados|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \memoriaDados|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~31_q\);

-- Location: FF_X32_Y5_N38
\memoriaDados|ram~287\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \memoriaDados|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~287_q\);

-- Location: FF_X32_Y5_N32
\memoriaDados|ram~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \memoriaDados|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~39_q\);

-- Location: LABCELL_X32_Y5_N18
\memoriaDados|ram~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~537_combout\ = ( \ROM1|memROM~12_combout\ & ( \ROM1|memROM~13_combout\ & ( \memoriaDados|ram~295_q\ ) ) ) # ( !\ROM1|memROM~12_combout\ & ( \ROM1|memROM~13_combout\ & ( \memoriaDados|ram~39_q\ ) ) ) # ( \ROM1|memROM~12_combout\ & ( 
-- !\ROM1|memROM~13_combout\ & ( \memoriaDados|ram~287_q\ ) ) ) # ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~13_combout\ & ( \memoriaDados|ram~31_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~295_q\,
	datab => \memoriaDados|ALT_INV_ram~31_q\,
	datac => \memoriaDados|ALT_INV_ram~287_q\,
	datad => \memoriaDados|ALT_INV_ram~39_q\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \memoriaDados|ram~537_combout\);

-- Location: FF_X31_Y4_N31
\memoriaDados|ram~223\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \memoriaDados|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~223_q\);

-- Location: LABCELL_X29_Y5_N36
\memoriaDados|ram~231feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~231feeder_combout\ = ( \CPU|REG1|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(0),
	combout => \memoriaDados|ram~231feeder_combout\);

-- Location: FF_X29_Y5_N38
\memoriaDados|ram~231\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~231feeder_combout\,
	ena => \memoriaDados|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~231_q\);

-- Location: LABCELL_X31_Y5_N45
\memoriaDados|ram~487feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~487feeder_combout\ = ( \CPU|REG1|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(0),
	combout => \memoriaDados|ram~487feeder_combout\);

-- Location: FF_X31_Y5_N46
\memoriaDados|ram~487\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~487feeder_combout\,
	ena => \memoriaDados|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~487_q\);

-- Location: LABCELL_X31_Y5_N48
\memoriaDados|ram~479feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~479feeder_combout\ = ( \CPU|REG1|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(0),
	combout => \memoriaDados|ram~479feeder_combout\);

-- Location: FF_X31_Y5_N49
\memoriaDados|ram~479\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~479feeder_combout\,
	ena => \memoriaDados|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~479_q\);

-- Location: LABCELL_X32_Y5_N42
\memoriaDados|ram~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~540_combout\ = ( \ROM1|memROM~12_combout\ & ( \ROM1|memROM~13_combout\ & ( \memoriaDados|ram~487_q\ ) ) ) # ( !\ROM1|memROM~12_combout\ & ( \ROM1|memROM~13_combout\ & ( \memoriaDados|ram~231_q\ ) ) ) # ( \ROM1|memROM~12_combout\ & ( 
-- !\ROM1|memROM~13_combout\ & ( \memoriaDados|ram~479_q\ ) ) ) # ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~13_combout\ & ( \memoriaDados|ram~223_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~223_q\,
	datab => \memoriaDados|ALT_INV_ram~231_q\,
	datac => \memoriaDados|ALT_INV_ram~487_q\,
	datad => \memoriaDados|ALT_INV_ram~479_q\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \memoriaDados|ram~540_combout\);

-- Location: FF_X41_Y5_N19
\memoriaDados|ram~167\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \memoriaDados|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~167_q\);

-- Location: FF_X41_Y5_N14
\memoriaDados|ram~423\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \memoriaDados|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~423_q\);

-- Location: FF_X41_Y5_N49
\memoriaDados|ram~159\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \memoriaDados|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~159_q\);

-- Location: FF_X40_Y3_N38
\memoriaDados|ram~415\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \memoriaDados|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~415_q\);

-- Location: LABCELL_X40_Y3_N36
\memoriaDados|ram~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~538_combout\ = ( \memoriaDados|ram~415_q\ & ( \ROM1|memROM~12_combout\ & ( (!\ROM1|memROM~13_combout\) # (\memoriaDados|ram~423_q\) ) ) ) # ( !\memoriaDados|ram~415_q\ & ( \ROM1|memROM~12_combout\ & ( (\memoriaDados|ram~423_q\ & 
-- \ROM1|memROM~13_combout\) ) ) ) # ( \memoriaDados|ram~415_q\ & ( !\ROM1|memROM~12_combout\ & ( (!\ROM1|memROM~13_combout\ & ((\memoriaDados|ram~159_q\))) # (\ROM1|memROM~13_combout\ & (\memoriaDados|ram~167_q\)) ) ) ) # ( !\memoriaDados|ram~415_q\ & ( 
-- !\ROM1|memROM~12_combout\ & ( (!\ROM1|memROM~13_combout\ & ((\memoriaDados|ram~159_q\))) # (\ROM1|memROM~13_combout\ & (\memoriaDados|ram~167_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100000000001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~167_q\,
	datab => \memoriaDados|ALT_INV_ram~423_q\,
	datac => \memoriaDados|ALT_INV_ram~159_q\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	datae => \memoriaDados|ALT_INV_ram~415_q\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \memoriaDados|ram~538_combout\);

-- Location: FF_X32_Y1_N7
\memoriaDados|ram~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \memoriaDados|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~95_q\);

-- Location: FF_X36_Y1_N14
\memoriaDados|ram~351\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \memoriaDados|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~351_q\);

-- Location: FF_X36_Y1_N23
\memoriaDados|ram~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \memoriaDados|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~103_q\);

-- Location: FF_X36_Y1_N8
\memoriaDados|ram~359\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \memoriaDados|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~359_q\);

-- Location: LABCELL_X36_Y1_N6
\memoriaDados|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~539_combout\ = ( \memoriaDados|ram~359_q\ & ( \ROM1|memROM~13_combout\ & ( (\memoriaDados|ram~103_q\) # (\ROM1|memROM~12_combout\) ) ) ) # ( !\memoriaDados|ram~359_q\ & ( \ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~12_combout\ & 
-- \memoriaDados|ram~103_q\) ) ) ) # ( \memoriaDados|ram~359_q\ & ( !\ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~12_combout\ & (\memoriaDados|ram~95_q\)) # (\ROM1|memROM~12_combout\ & ((\memoriaDados|ram~351_q\))) ) ) ) # ( !\memoriaDados|ram~359_q\ & ( 
-- !\ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~12_combout\ & (\memoriaDados|ram~95_q\)) # (\ROM1|memROM~12_combout\ & ((\memoriaDados|ram~351_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~95_q\,
	datab => \memoriaDados|ALT_INV_ram~351_q\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \memoriaDados|ALT_INV_ram~103_q\,
	datae => \memoriaDados|ALT_INV_ram~359_q\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \memoriaDados|ram~539_combout\);

-- Location: LABCELL_X36_Y3_N48
\memoriaDados|ram~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~541_combout\ = ( \memoriaDados|ram~538_combout\ & ( \memoriaDados|ram~539_combout\ & ( (!\ROM1|memROM~24_combout\ & (((\ROM1|memROM~19_combout\)) # (\memoriaDados|ram~537_combout\))) # (\ROM1|memROM~24_combout\ & 
-- (((!\ROM1|memROM~19_combout\) # (\memoriaDados|ram~540_combout\)))) ) ) ) # ( !\memoriaDados|ram~538_combout\ & ( \memoriaDados|ram~539_combout\ & ( (!\ROM1|memROM~24_combout\ & (((\ROM1|memROM~19_combout\)) # (\memoriaDados|ram~537_combout\))) # 
-- (\ROM1|memROM~24_combout\ & (((\ROM1|memROM~19_combout\ & \memoriaDados|ram~540_combout\)))) ) ) ) # ( \memoriaDados|ram~538_combout\ & ( !\memoriaDados|ram~539_combout\ & ( (!\ROM1|memROM~24_combout\ & (\memoriaDados|ram~537_combout\ & 
-- (!\ROM1|memROM~19_combout\))) # (\ROM1|memROM~24_combout\ & (((!\ROM1|memROM~19_combout\) # (\memoriaDados|ram~540_combout\)))) ) ) ) # ( !\memoriaDados|ram~538_combout\ & ( !\memoriaDados|ram~539_combout\ & ( (!\ROM1|memROM~24_combout\ & 
-- (\memoriaDados|ram~537_combout\ & (!\ROM1|memROM~19_combout\))) # (\ROM1|memROM~24_combout\ & (((\ROM1|memROM~19_combout\ & \memoriaDados|ram~540_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100101011100000111010100101010001011110111101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~24_combout\,
	datab => \memoriaDados|ALT_INV_ram~537_combout\,
	datac => \ROM1|ALT_INV_memROM~19_combout\,
	datad => \memoriaDados|ALT_INV_ram~540_combout\,
	datae => \memoriaDados|ALT_INV_ram~538_combout\,
	dataf => \memoriaDados|ALT_INV_ram~539_combout\,
	combout => \memoriaDados|ram~541_combout\);

-- Location: LABCELL_X36_Y3_N12
\memoriaDados|ram~547\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~547_combout\ = ( \memoriaDados|ram~546_combout\ & ( \memoriaDados|ram~541_combout\ & ( ((!\ROM1|memROM~55_combout\ & (\memoriaDados|ram~531_combout\)) # (\ROM1|memROM~55_combout\ & ((\memoriaDados|ram~536_combout\)))) # 
-- (\ROM1|memROM~14_combout\) ) ) ) # ( !\memoriaDados|ram~546_combout\ & ( \memoriaDados|ram~541_combout\ & ( (!\ROM1|memROM~14_combout\ & ((!\ROM1|memROM~55_combout\ & (\memoriaDados|ram~531_combout\)) # (\ROM1|memROM~55_combout\ & 
-- ((\memoriaDados|ram~536_combout\))))) # (\ROM1|memROM~14_combout\ & (((!\ROM1|memROM~55_combout\)))) ) ) ) # ( \memoriaDados|ram~546_combout\ & ( !\memoriaDados|ram~541_combout\ & ( (!\ROM1|memROM~14_combout\ & ((!\ROM1|memROM~55_combout\ & 
-- (\memoriaDados|ram~531_combout\)) # (\ROM1|memROM~55_combout\ & ((\memoriaDados|ram~536_combout\))))) # (\ROM1|memROM~14_combout\ & (((\ROM1|memROM~55_combout\)))) ) ) ) # ( !\memoriaDados|ram~546_combout\ & ( !\memoriaDados|ram~541_combout\ & ( 
-- (!\ROM1|memROM~14_combout\ & ((!\ROM1|memROM~55_combout\ & (\memoriaDados|ram~531_combout\)) # (\ROM1|memROM~55_combout\ & ((\memoriaDados|ram~536_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000001100010001000011111101110111000011000111011100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~531_combout\,
	datab => \ROM1|ALT_INV_memROM~14_combout\,
	datac => \memoriaDados|ALT_INV_ram~536_combout\,
	datad => \ROM1|ALT_INV_memROM~55_combout\,
	datae => \memoriaDados|ALT_INV_ram~546_combout\,
	dataf => \memoriaDados|ALT_INV_ram~541_combout\,
	combout => \memoriaDados|ram~547_combout\);

-- Location: LABCELL_X36_Y3_N30
\Data_IN[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~4_combout\ = ( \AND_ENABLE_BUFFER_8BITS~2_combout\ & ( \memoriaDados|ram~547_combout\ & ( (((\AND_ENABLE_BUFFER_8BITS~0_combout\ & \Data_IN[0]~3_combout\)) # (\Data_IN[0]~0_combout\)) # (\SW[0]~input_o\) ) ) ) # ( 
-- !\AND_ENABLE_BUFFER_8BITS~2_combout\ & ( \memoriaDados|ram~547_combout\ & ( ((\AND_ENABLE_BUFFER_8BITS~0_combout\ & \Data_IN[0]~3_combout\)) # (\Data_IN[0]~0_combout\) ) ) ) # ( \AND_ENABLE_BUFFER_8BITS~2_combout\ & ( !\memoriaDados|ram~547_combout\ & ( 
-- ((\AND_ENABLE_BUFFER_8BITS~0_combout\ & \Data_IN[0]~3_combout\)) # (\SW[0]~input_o\) ) ) ) # ( !\AND_ENABLE_BUFFER_8BITS~2_combout\ & ( !\memoriaDados|ram~547_combout\ & ( (\AND_ENABLE_BUFFER_8BITS~0_combout\ & \Data_IN[0]~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011010101010111011100001111001111110101111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ALT_INV_AND_ENABLE_BUFFER_8BITS~0_combout\,
	datac => \ALT_INV_Data_IN[0]~0_combout\,
	datad => \ALT_INV_Data_IN[0]~3_combout\,
	datae => \ALT_INV_AND_ENABLE_BUFFER_8BITS~2_combout\,
	dataf => \memoriaDados|ALT_INV_ram~547_combout\,
	combout => \Data_IN[0]~4_combout\);

-- Location: LABCELL_X35_Y2_N0
\CPU|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~1_sumout\ = SUM(( \CPU|REG1|DOUT\(0) ) + ( (!\CPU|Decoder|Equal1~0_combout\ & (((\Data_IN[0]~4_combout\)))) # (\CPU|Decoder|Equal1~0_combout\ & (!\CPU|PC|DOUT[8]~DUPLICATE_q\ & (\ROM1|memROM~25_combout\))) ) + ( !VCC ))
-- \CPU|ULA1|Add0~2\ = CARRY(( \CPU|REG1|DOUT\(0) ) + ( (!\CPU|Decoder|Equal1~0_combout\ & (((\Data_IN[0]~4_combout\)))) # (\CPU|Decoder|Equal1~0_combout\ & (!\CPU|PC|DOUT[8]~DUPLICATE_q\ & (\ROM1|memROM~25_combout\))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111010000110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datab => \ROM1|ALT_INV_memROM~25_combout\,
	datac => \CPU|Decoder|ALT_INV_Equal1~0_combout\,
	datad => \CPU|REG1|ALT_INV_DOUT\(0),
	dataf => \ALT_INV_Data_IN[0]~4_combout\,
	cin => GND,
	sumout => \CPU|ULA1|Add0~1_sumout\,
	cout => \CPU|ULA1|Add0~2\);

-- Location: LABCELL_X35_Y2_N3
\CPU|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~5_sumout\ = SUM(( \CPU|REG1|DOUT\(1) ) + ( \CPU|MUX1|saida_MUX[1]~0_combout\ ) + ( \CPU|ULA1|Add0~2\ ))
-- \CPU|ULA1|Add0~6\ = CARRY(( \CPU|REG1|DOUT\(1) ) + ( \CPU|MUX1|saida_MUX[1]~0_combout\ ) + ( \CPU|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|MUX1|ALT_INV_saida_MUX[1]~0_combout\,
	datad => \CPU|REG1|ALT_INV_DOUT\(1),
	cin => \CPU|ULA1|Add0~2\,
	sumout => \CPU|ULA1|Add0~5_sumout\,
	cout => \CPU|ULA1|Add0~6\);

-- Location: LABCELL_X36_Y6_N0
\CPU|Decoder|Operacao~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Decoder|Operacao~0_combout\ = ( \ROM1|memROM~16_combout\ & ( (!\ROM1|memROM~18_combout\ & (!\ROM1|memROM~17_combout\ & !\ROM1|memROM~15_combout\)) ) ) # ( !\ROM1|memROM~16_combout\ & ( (!\ROM1|memROM~18_combout\ & (\ROM1|memROM~17_combout\ & 
-- !\ROM1|memROM~15_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~18_combout\,
	datac => \ROM1|ALT_INV_memROM~17_combout\,
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~16_combout\,
	combout => \CPU|Decoder|Operacao~0_combout\);

-- Location: LABCELL_X35_Y2_N30
\CPU|ULA1|Add1~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~34_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \CPU|ULA1|Add1~34_cout\);

-- Location: LABCELL_X35_Y2_N33
\CPU|ULA1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~1_sumout\ = SUM(( (!\CPU|Decoder|Equal1~0_combout\ & (((!\Data_IN[0]~4_combout\)))) # (\CPU|Decoder|Equal1~0_combout\ & (((!\ROM1|memROM~25_combout\)) # (\CPU|PC|DOUT[8]~DUPLICATE_q\))) ) + ( \CPU|REG1|DOUT\(0) ) + ( \CPU|ULA1|Add1~34_cout\ 
-- ))
-- \CPU|ULA1|Add1~2\ = CARRY(( (!\CPU|Decoder|Equal1~0_combout\ & (((!\Data_IN[0]~4_combout\)))) # (\CPU|Decoder|Equal1~0_combout\ & (((!\ROM1|memROM~25_combout\)) # (\CPU|PC|DOUT[8]~DUPLICATE_q\))) ) + ( \CPU|REG1|DOUT\(0) ) + ( \CPU|ULA1|Add1~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111110100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datab => \ROM1|ALT_INV_memROM~25_combout\,
	datac => \CPU|Decoder|ALT_INV_Equal1~0_combout\,
	datad => \ALT_INV_Data_IN[0]~4_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(0),
	cin => \CPU|ULA1|Add1~34_cout\,
	sumout => \CPU|ULA1|Add1~1_sumout\,
	cout => \CPU|ULA1|Add1~2\);

-- Location: LABCELL_X35_Y2_N36
\CPU|ULA1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~5_sumout\ = SUM(( !\CPU|MUX1|saida_MUX[1]~0_combout\ ) + ( \CPU|REG1|DOUT\(1) ) + ( \CPU|ULA1|Add1~2\ ))
-- \CPU|ULA1|Add1~6\ = CARRY(( !\CPU|MUX1|saida_MUX[1]~0_combout\ ) + ( \CPU|REG1|DOUT\(1) ) + ( \CPU|ULA1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|REG1|ALT_INV_DOUT\(1),
	datad => \CPU|MUX1|ALT_INV_saida_MUX[1]~0_combout\,
	cin => \CPU|ULA1|Add1~2\,
	sumout => \CPU|ULA1|Add1~5_sumout\,
	cout => \CPU|ULA1|Add1~6\);

-- Location: MLABCELL_X34_Y2_N48
\CPU|ULA1|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[1]~1_combout\ = ( \CPU|ULA1|Add1~5_sumout\ & ( (!\CPU|Decoder|Operacao~0_combout\) # (\CPU|MUX1|saida_MUX[1]~0_combout\) ) ) # ( !\CPU|ULA1|Add1~5_sumout\ & ( (\CPU|Decoder|Operacao~0_combout\ & \CPU|MUX1|saida_MUX[1]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011110011001111111100000000001100111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|Decoder|ALT_INV_Operacao~0_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[1]~0_combout\,
	datae => \CPU|ULA1|ALT_INV_Add1~5_sumout\,
	combout => \CPU|ULA1|saida[1]~1_combout\);

-- Location: LABCELL_X36_Y6_N57
\CPU|ULA1|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Equal1~0_combout\ = ( \ROM1|memROM~15_combout\ & ( (((\CPU|Decoder|Operacao~0_combout\) # (\ROM1|memROM~16_combout\)) # (\ROM1|memROM~18_combout\)) # (\ROM1|memROM~17_combout\) ) ) # ( !\ROM1|memROM~15_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~17_combout\,
	datab => \ROM1|ALT_INV_memROM~18_combout\,
	datac => \ROM1|ALT_INV_memROM~16_combout\,
	datad => \CPU|Decoder|ALT_INV_Operacao~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \CPU|ULA1|Equal1~0_combout\);

-- Location: LABCELL_X35_Y4_N21
\CPU|Decoder|OUTPUT[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Decoder|OUTPUT\(5) = ( \CPU|Decoder|Habilita_A~0_combout\ ) # ( !\CPU|Decoder|Habilita_A~0_combout\ & ( \CPU|Decoder|Equal1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|Decoder|ALT_INV_Equal1~0_combout\,
	dataf => \CPU|Decoder|ALT_INV_Habilita_A~0_combout\,
	combout => \CPU|Decoder|OUTPUT\(5));

-- Location: FF_X35_Y2_N5
\CPU|REG1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~5_sumout\,
	asdata => \CPU|ULA1|saida[1]~1_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|Decoder|OUTPUT\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(1));

-- Location: LABCELL_X32_Y1_N45
\memoriaDados|ram~96feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~96feeder_combout\ = ( \CPU|REG1|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(1),
	combout => \memoriaDados|ram~96feeder_combout\);

-- Location: FF_X32_Y1_N46
\memoriaDados|ram~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~96feeder_combout\,
	ena => \memoriaDados|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~96_q\);

-- Location: LABCELL_X39_Y5_N57
\memoriaDados|ram~336feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~336feeder_combout\ = ( \CPU|REG1|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(1),
	combout => \memoriaDados|ram~336feeder_combout\);

-- Location: FF_X39_Y5_N59
\memoriaDados|ram~336\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~336feeder_combout\,
	ena => \memoriaDados|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~336_q\);

-- Location: FF_X32_Y1_N49
\memoriaDados|ram~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \memoriaDados|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~80_q\);

-- Location: FF_X36_Y1_N26
\memoriaDados|ram~352\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \memoriaDados|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~352_q\);

-- Location: LABCELL_X36_Y1_N24
\memoriaDados|ram~550\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~550_combout\ = ( \memoriaDados|ram~352_q\ & ( \ROM1|memROM~12_combout\ & ( (\ROM1|memROM~14_combout\) # (\memoriaDados|ram~336_q\) ) ) ) # ( !\memoriaDados|ram~352_q\ & ( \ROM1|memROM~12_combout\ & ( (\memoriaDados|ram~336_q\ & 
-- !\ROM1|memROM~14_combout\) ) ) ) # ( \memoriaDados|ram~352_q\ & ( !\ROM1|memROM~12_combout\ & ( (!\ROM1|memROM~14_combout\ & ((\memoriaDados|ram~80_q\))) # (\ROM1|memROM~14_combout\ & (\memoriaDados|ram~96_q\)) ) ) ) # ( !\memoriaDados|ram~352_q\ & ( 
-- !\ROM1|memROM~12_combout\ & ( (!\ROM1|memROM~14_combout\ & ((\memoriaDados|ram~80_q\))) # (\ROM1|memROM~14_combout\ & (\memoriaDados|ram~96_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~96_q\,
	datab => \memoriaDados|ALT_INV_ram~336_q\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \memoriaDados|ALT_INV_ram~80_q\,
	datae => \memoriaDados|ALT_INV_ram~352_q\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \memoriaDados|ram~550_combout\);

-- Location: FF_X32_Y3_N46
\memoriaDados|ram~368\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \memoriaDados|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~368_q\);

-- Location: MLABCELL_X34_Y6_N0
\memoriaDados|ram~112feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~112feeder_combout\ = ( \CPU|REG1|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(1),
	combout => \memoriaDados|ram~112feeder_combout\);

-- Location: FF_X34_Y6_N1
\memoriaDados|ram~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~112feeder_combout\,
	ena => \memoriaDados|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~112_q\);

-- Location: FF_X35_Y1_N16
\memoriaDados|ram~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \memoriaDados|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~128_q\);

-- Location: FF_X35_Y3_N23
\memoriaDados|ram~384\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \memoriaDados|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~384_q\);

-- Location: LABCELL_X35_Y3_N21
\memoriaDados|ram~551\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~551_combout\ = ( \memoriaDados|ram~384_q\ & ( \ROM1|memROM~14_combout\ & ( (\memoriaDados|ram~128_q\) # (\ROM1|memROM~12_combout\) ) ) ) # ( !\memoriaDados|ram~384_q\ & ( \ROM1|memROM~14_combout\ & ( (!\ROM1|memROM~12_combout\ & 
-- \memoriaDados|ram~128_q\) ) ) ) # ( \memoriaDados|ram~384_q\ & ( !\ROM1|memROM~14_combout\ & ( (!\ROM1|memROM~12_combout\ & ((\memoriaDados|ram~112_q\))) # (\ROM1|memROM~12_combout\ & (\memoriaDados|ram~368_q\)) ) ) ) # ( !\memoriaDados|ram~384_q\ & ( 
-- !\ROM1|memROM~14_combout\ & ( (!\ROM1|memROM~12_combout\ & ((\memoriaDados|ram~112_q\))) # (\ROM1|memROM~12_combout\ & (\memoriaDados|ram~368_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100000000110011000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~368_q\,
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	datac => \memoriaDados|ALT_INV_ram~112_q\,
	datad => \memoriaDados|ALT_INV_ram~128_q\,
	datae => \memoriaDados|ALT_INV_ram~384_q\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \memoriaDados|ram~551_combout\);

-- Location: FF_X35_Y7_N31
\memoriaDados|ram~304\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \memoriaDados|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~304_q\);

-- Location: MLABCELL_X34_Y6_N30
\memoriaDados|ram~64feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~64feeder_combout\ = ( \CPU|REG1|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(1),
	combout => \memoriaDados|ram~64feeder_combout\);

-- Location: FF_X34_Y6_N31
\memoriaDados|ram~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~64feeder_combout\,
	ena => \memoriaDados|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~64_q\);

-- Location: FF_X35_Y7_N10
\memoriaDados|ram~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \memoriaDados|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~48_q\);

-- Location: FF_X36_Y7_N53
\memoriaDados|ram~320\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \memoriaDados|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~320_q\);

-- Location: LABCELL_X36_Y7_N51
\memoriaDados|ram~549\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~549_combout\ = ( \memoriaDados|ram~320_q\ & ( \ROM1|memROM~14_combout\ & ( (\ROM1|memROM~12_combout\) # (\memoriaDados|ram~64_q\) ) ) ) # ( !\memoriaDados|ram~320_q\ & ( \ROM1|memROM~14_combout\ & ( (\memoriaDados|ram~64_q\ & 
-- !\ROM1|memROM~12_combout\) ) ) ) # ( \memoriaDados|ram~320_q\ & ( !\ROM1|memROM~14_combout\ & ( (!\ROM1|memROM~12_combout\ & ((\memoriaDados|ram~48_q\))) # (\ROM1|memROM~12_combout\ & (\memoriaDados|ram~304_q\)) ) ) ) # ( !\memoriaDados|ram~320_q\ & ( 
-- !\ROM1|memROM~14_combout\ & ( (!\ROM1|memROM~12_combout\ & ((\memoriaDados|ram~48_q\))) # (\ROM1|memROM~12_combout\ & (\memoriaDados|ram~304_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~304_q\,
	datab => \memoriaDados|ALT_INV_ram~64_q\,
	datac => \memoriaDados|ALT_INV_ram~48_q\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \memoriaDados|ALT_INV_ram~320_q\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \memoriaDados|ram~549_combout\);

-- Location: FF_X31_Y6_N49
\memoriaDados|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \memoriaDados|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~32_q\);

-- Location: FF_X35_Y5_N4
\memoriaDados|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \memoriaDados|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~16_q\);

-- Location: LABCELL_X31_Y3_N51
\memoriaDados|ram~272feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~272feeder_combout\ = ( \CPU|REG1|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(1),
	combout => \memoriaDados|ram~272feeder_combout\);

-- Location: FF_X31_Y3_N52
\memoriaDados|ram~272\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~272feeder_combout\,
	ena => \memoriaDados|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~272_q\);

-- Location: FF_X32_Y5_N53
\memoriaDados|ram~288\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \memoriaDados|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~288_q\);

-- Location: LABCELL_X32_Y5_N51
\memoriaDados|ram~548\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~548_combout\ = ( \memoriaDados|ram~288_q\ & ( \ROM1|memROM~14_combout\ & ( (\ROM1|memROM~12_combout\) # (\memoriaDados|ram~32_q\) ) ) ) # ( !\memoriaDados|ram~288_q\ & ( \ROM1|memROM~14_combout\ & ( (\memoriaDados|ram~32_q\ & 
-- !\ROM1|memROM~12_combout\) ) ) ) # ( \memoriaDados|ram~288_q\ & ( !\ROM1|memROM~14_combout\ & ( (!\ROM1|memROM~12_combout\ & (\memoriaDados|ram~16_q\)) # (\ROM1|memROM~12_combout\ & ((\memoriaDados|ram~272_q\))) ) ) ) # ( !\memoriaDados|ram~288_q\ & ( 
-- !\ROM1|memROM~14_combout\ & ( (!\ROM1|memROM~12_combout\ & (\memoriaDados|ram~16_q\)) # (\ROM1|memROM~12_combout\ & ((\memoriaDados|ram~272_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~32_q\,
	datab => \memoriaDados|ALT_INV_ram~16_q\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \memoriaDados|ALT_INV_ram~272_q\,
	datae => \memoriaDados|ALT_INV_ram~288_q\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \memoriaDados|ram~548_combout\);

-- Location: LABCELL_X36_Y1_N42
\memoriaDados|ram~552\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~552_combout\ = ( \memoriaDados|ram~549_combout\ & ( \memoriaDados|ram~548_combout\ & ( (!\ROM1|memROM~19_combout\) # ((!\ROM1|memROM~55_combout\ & (\memoriaDados|ram~550_combout\)) # (\ROM1|memROM~55_combout\ & 
-- ((\memoriaDados|ram~551_combout\)))) ) ) ) # ( !\memoriaDados|ram~549_combout\ & ( \memoriaDados|ram~548_combout\ & ( (!\ROM1|memROM~55_combout\ & ((!\ROM1|memROM~19_combout\) # ((\memoriaDados|ram~550_combout\)))) # (\ROM1|memROM~55_combout\ & 
-- (\ROM1|memROM~19_combout\ & ((\memoriaDados|ram~551_combout\)))) ) ) ) # ( \memoriaDados|ram~549_combout\ & ( !\memoriaDados|ram~548_combout\ & ( (!\ROM1|memROM~55_combout\ & (\ROM1|memROM~19_combout\ & (\memoriaDados|ram~550_combout\))) # 
-- (\ROM1|memROM~55_combout\ & ((!\ROM1|memROM~19_combout\) # ((\memoriaDados|ram~551_combout\)))) ) ) ) # ( !\memoriaDados|ram~549_combout\ & ( !\memoriaDados|ram~548_combout\ & ( (\ROM1|memROM~19_combout\ & ((!\ROM1|memROM~55_combout\ & 
-- (\memoriaDados|ram~550_combout\)) # (\ROM1|memROM~55_combout\ & ((\memoriaDados|ram~551_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011010001100101011110001010100110111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~55_combout\,
	datab => \ROM1|ALT_INV_memROM~19_combout\,
	datac => \memoriaDados|ALT_INV_ram~550_combout\,
	datad => \memoriaDados|ALT_INV_ram~551_combout\,
	datae => \memoriaDados|ALT_INV_ram~549_combout\,
	dataf => \memoriaDados|ALT_INV_ram~548_combout\,
	combout => \memoriaDados|ram~552_combout\);

-- Location: FF_X35_Y1_N56
\memoriaDados|ram~256\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \memoriaDados|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~256_q\);

-- Location: LABCELL_X31_Y4_N54
\memoriaDados|ram~224feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~224feeder_combout\ = ( \CPU|REG1|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(1),
	combout => \memoriaDados|ram~224feeder_combout\);

-- Location: FF_X31_Y4_N55
\memoriaDados|ram~224\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~224feeder_combout\,
	ena => \memoriaDados|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~224_q\);

-- Location: FF_X40_Y2_N25
\memoriaDados|ram~480\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \memoriaDados|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~480_q\);

-- Location: FF_X35_Y1_N38
\memoriaDados|ram~512\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \memoriaDados|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~512_q\);

-- Location: LABCELL_X35_Y1_N36
\memoriaDados|ram~561\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~561_combout\ = ( \memoriaDados|ram~512_q\ & ( \ROM1|memROM~55_combout\ & ( (\ROM1|memROM~12_combout\) # (\memoriaDados|ram~256_q\) ) ) ) # ( !\memoriaDados|ram~512_q\ & ( \ROM1|memROM~55_combout\ & ( (\memoriaDados|ram~256_q\ & 
-- !\ROM1|memROM~12_combout\) ) ) ) # ( \memoriaDados|ram~512_q\ & ( !\ROM1|memROM~55_combout\ & ( (!\ROM1|memROM~12_combout\ & (\memoriaDados|ram~224_q\)) # (\ROM1|memROM~12_combout\ & ((\memoriaDados|ram~480_q\))) ) ) ) # ( !\memoriaDados|ram~512_q\ & ( 
-- !\ROM1|memROM~55_combout\ & ( (!\ROM1|memROM~12_combout\ & (\memoriaDados|ram~224_q\)) # (\ROM1|memROM~12_combout\ & ((\memoriaDados|ram~480_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~256_q\,
	datab => \memoriaDados|ALT_INV_ram~224_q\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \memoriaDados|ALT_INV_ram~480_q\,
	datae => \memoriaDados|ALT_INV_ram~512_q\,
	dataf => \ROM1|ALT_INV_memROM~55_combout\,
	combout => \memoriaDados|ram~561_combout\);

-- Location: FF_X37_Y3_N28
\memoriaDados|ram~240\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \memoriaDados|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~240_q\);

-- Location: FF_X31_Y4_N25
\memoriaDados|ram~208\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \memoriaDados|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~208_q\);

-- Location: LABCELL_X40_Y1_N42
\memoriaDados|ram~464feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~464feeder_combout\ = ( \CPU|REG1|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(1),
	combout => \memoriaDados|ram~464feeder_combout\);

-- Location: FF_X40_Y1_N44
\memoriaDados|ram~464\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~464feeder_combout\,
	ena => \memoriaDados|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~464_q\);

-- Location: FF_X37_Y1_N56
\memoriaDados|ram~496\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \memoriaDados|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~496_q\);

-- Location: MLABCELL_X37_Y1_N54
\memoriaDados|ram~560\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~560_combout\ = ( \memoriaDados|ram~496_q\ & ( \ROM1|memROM~55_combout\ & ( (\ROM1|memROM~12_combout\) # (\memoriaDados|ram~240_q\) ) ) ) # ( !\memoriaDados|ram~496_q\ & ( \ROM1|memROM~55_combout\ & ( (\memoriaDados|ram~240_q\ & 
-- !\ROM1|memROM~12_combout\) ) ) ) # ( \memoriaDados|ram~496_q\ & ( !\ROM1|memROM~55_combout\ & ( (!\ROM1|memROM~12_combout\ & (\memoriaDados|ram~208_q\)) # (\ROM1|memROM~12_combout\ & ((\memoriaDados|ram~464_q\))) ) ) ) # ( !\memoriaDados|ram~496_q\ & ( 
-- !\ROM1|memROM~55_combout\ & ( (!\ROM1|memROM~12_combout\ & (\memoriaDados|ram~208_q\)) # (\ROM1|memROM~12_combout\ & ((\memoriaDados|ram~464_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~240_q\,
	datab => \memoriaDados|ALT_INV_ram~208_q\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \memoriaDados|ALT_INV_ram~464_q\,
	datae => \memoriaDados|ALT_INV_ram~496_q\,
	dataf => \ROM1|ALT_INV_memROM~55_combout\,
	combout => \memoriaDados|ram~560_combout\);

-- Location: LABCELL_X40_Y3_N51
\memoriaDados|ram~416feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~416feeder_combout\ = ( \CPU|REG1|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(1),
	combout => \memoriaDados|ram~416feeder_combout\);

-- Location: FF_X40_Y3_N52
\memoriaDados|ram~416\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~416feeder_combout\,
	ena => \memoriaDados|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~416_q\);

-- Location: FF_X37_Y3_N41
\memoriaDados|ram~192\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \memoriaDados|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~192_q\);

-- Location: LABCELL_X41_Y3_N18
\memoriaDados|ram~160feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~160feeder_combout\ = ( \CPU|REG1|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(1),
	combout => \memoriaDados|ram~160feeder_combout\);

-- Location: FF_X41_Y3_N19
\memoriaDados|ram~160\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~160feeder_combout\,
	ena => \memoriaDados|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~160_q\);

-- Location: FF_X37_Y3_N2
\memoriaDados|ram~448\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \memoriaDados|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~448_q\);

-- Location: MLABCELL_X37_Y3_N0
\memoriaDados|ram~559\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~559_combout\ = ( \memoriaDados|ram~448_q\ & ( \ROM1|memROM~55_combout\ & ( (\ROM1|memROM~12_combout\) # (\memoriaDados|ram~192_q\) ) ) ) # ( !\memoriaDados|ram~448_q\ & ( \ROM1|memROM~55_combout\ & ( (\memoriaDados|ram~192_q\ & 
-- !\ROM1|memROM~12_combout\) ) ) ) # ( \memoriaDados|ram~448_q\ & ( !\ROM1|memROM~55_combout\ & ( (!\ROM1|memROM~12_combout\ & ((\memoriaDados|ram~160_q\))) # (\ROM1|memROM~12_combout\ & (\memoriaDados|ram~416_q\)) ) ) ) # ( !\memoriaDados|ram~448_q\ & ( 
-- !\ROM1|memROM~55_combout\ & ( (!\ROM1|memROM~12_combout\ & ((\memoriaDados|ram~160_q\))) # (\ROM1|memROM~12_combout\ & (\memoriaDados|ram~416_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~416_q\,
	datab => \memoriaDados|ALT_INV_ram~192_q\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \memoriaDados|ALT_INV_ram~160_q\,
	datae => \memoriaDados|ALT_INV_ram~448_q\,
	dataf => \ROM1|ALT_INV_memROM~55_combout\,
	combout => \memoriaDados|ram~559_combout\);

-- Location: LABCELL_X40_Y1_N36
\memoriaDados|ram~400feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~400feeder_combout\ = ( \CPU|REG1|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(1),
	combout => \memoriaDados|ram~400feeder_combout\);

-- Location: FF_X40_Y1_N38
\memoriaDados|ram~400\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~400feeder_combout\,
	ena => \memoriaDados|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~400_q\);

-- Location: LABCELL_X39_Y1_N12
\memoriaDados|ram~176feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~176feeder_combout\ = ( \CPU|REG1|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(1),
	combout => \memoriaDados|ram~176feeder_combout\);

-- Location: FF_X39_Y1_N14
\memoriaDados|ram~176\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~176feeder_combout\,
	ena => \memoriaDados|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~176_q\);

-- Location: LABCELL_X40_Y5_N27
\memoriaDados|ram~144feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~144feeder_combout\ = ( \CPU|REG1|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(1),
	combout => \memoriaDados|ram~144feeder_combout\);

-- Location: FF_X40_Y5_N28
\memoriaDados|ram~144\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~144feeder_combout\,
	ena => \memoriaDados|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~144_q\);

-- Location: FF_X39_Y1_N26
\memoriaDados|ram~432\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \memoriaDados|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~432_q\);

-- Location: LABCELL_X39_Y1_N24
\memoriaDados|ram~558\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~558_combout\ = ( \memoriaDados|ram~432_q\ & ( \ROM1|memROM~55_combout\ & ( (\ROM1|memROM~12_combout\) # (\memoriaDados|ram~176_q\) ) ) ) # ( !\memoriaDados|ram~432_q\ & ( \ROM1|memROM~55_combout\ & ( (\memoriaDados|ram~176_q\ & 
-- !\ROM1|memROM~12_combout\) ) ) ) # ( \memoriaDados|ram~432_q\ & ( !\ROM1|memROM~55_combout\ & ( (!\ROM1|memROM~12_combout\ & ((\memoriaDados|ram~144_q\))) # (\ROM1|memROM~12_combout\ & (\memoriaDados|ram~400_q\)) ) ) ) # ( !\memoriaDados|ram~432_q\ & ( 
-- !\ROM1|memROM~55_combout\ & ( (!\ROM1|memROM~12_combout\ & ((\memoriaDados|ram~144_q\))) # (\ROM1|memROM~12_combout\ & (\memoriaDados|ram~400_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~400_q\,
	datab => \memoriaDados|ALT_INV_ram~176_q\,
	datac => \memoriaDados|ALT_INV_ram~144_q\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \memoriaDados|ALT_INV_ram~432_q\,
	dataf => \ROM1|ALT_INV_memROM~55_combout\,
	combout => \memoriaDados|ram~558_combout\);

-- Location: LABCELL_X36_Y1_N54
\memoriaDados|ram~562\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~562_combout\ = ( \memoriaDados|ram~559_combout\ & ( \memoriaDados|ram~558_combout\ & ( (!\ROM1|memROM~19_combout\) # ((!\ROM1|memROM~14_combout\ & ((\memoriaDados|ram~560_combout\))) # (\ROM1|memROM~14_combout\ & 
-- (\memoriaDados|ram~561_combout\))) ) ) ) # ( !\memoriaDados|ram~559_combout\ & ( \memoriaDados|ram~558_combout\ & ( (!\ROM1|memROM~14_combout\ & ((!\ROM1|memROM~19_combout\) # ((\memoriaDados|ram~560_combout\)))) # (\ROM1|memROM~14_combout\ & 
-- (\ROM1|memROM~19_combout\ & (\memoriaDados|ram~561_combout\))) ) ) ) # ( \memoriaDados|ram~559_combout\ & ( !\memoriaDados|ram~558_combout\ & ( (!\ROM1|memROM~14_combout\ & (\ROM1|memROM~19_combout\ & ((\memoriaDados|ram~560_combout\)))) # 
-- (\ROM1|memROM~14_combout\ & ((!\ROM1|memROM~19_combout\) # ((\memoriaDados|ram~561_combout\)))) ) ) ) # ( !\memoriaDados|ram~559_combout\ & ( !\memoriaDados|ram~558_combout\ & ( (\ROM1|memROM~19_combout\ & ((!\ROM1|memROM~14_combout\ & 
-- ((\memoriaDados|ram~560_combout\))) # (\ROM1|memROM~14_combout\ & (\memoriaDados|ram~561_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011010001010110011110001001101010111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~14_combout\,
	datab => \ROM1|ALT_INV_memROM~19_combout\,
	datac => \memoriaDados|ALT_INV_ram~561_combout\,
	datad => \memoriaDados|ALT_INV_ram~560_combout\,
	datae => \memoriaDados|ALT_INV_ram~559_combout\,
	dataf => \memoriaDados|ALT_INV_ram~558_combout\,
	combout => \memoriaDados|ram~562_combout\);

-- Location: FF_X40_Y4_N55
\memoriaDados|ram~184\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \memoriaDados|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~184_q\);

-- Location: FF_X40_Y4_N40
\memoriaDados|ram~200\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \memoriaDados|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~200_q\);

-- Location: FF_X39_Y4_N26
\memoriaDados|ram~440\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \memoriaDados|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~440_q\);

-- Location: FF_X37_Y1_N50
\memoriaDados|ram~456\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \memoriaDados|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~456_q\);

-- Location: MLABCELL_X37_Y1_N48
\memoriaDados|ram~564\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~564_combout\ = ( \memoriaDados|ram~456_q\ & ( \ROM1|memROM~12_combout\ & ( (\memoriaDados|ram~440_q\) # (\ROM1|memROM~14_combout\) ) ) ) # ( !\memoriaDados|ram~456_q\ & ( \ROM1|memROM~12_combout\ & ( (!\ROM1|memROM~14_combout\ & 
-- \memoriaDados|ram~440_q\) ) ) ) # ( \memoriaDados|ram~456_q\ & ( !\ROM1|memROM~12_combout\ & ( (!\ROM1|memROM~14_combout\ & (\memoriaDados|ram~184_q\)) # (\ROM1|memROM~14_combout\ & ((\memoriaDados|ram~200_q\))) ) ) ) # ( !\memoriaDados|ram~456_q\ & ( 
-- !\ROM1|memROM~12_combout\ & ( (!\ROM1|memROM~14_combout\ & (\memoriaDados|ram~184_q\)) # (\ROM1|memROM~14_combout\ & ((\memoriaDados|ram~200_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~184_q\,
	datab => \memoriaDados|ALT_INV_ram~200_q\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \memoriaDados|ALT_INV_ram~440_q\,
	datae => \memoriaDados|ALT_INV_ram~456_q\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \memoriaDados|ram~564_combout\);

-- Location: FF_X35_Y4_N4
\memoriaDados|ram~472\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \memoriaDados|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~472_q\);

-- Location: FF_X35_Y4_N28
\memoriaDados|ram~216\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \memoriaDados|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~216_q\);

-- Location: LABCELL_X29_Y2_N36
\memoriaDados|ram~232feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~232feeder_combout\ = ( \CPU|REG1|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(1),
	combout => \memoriaDados|ram~232feeder_combout\);

-- Location: FF_X29_Y2_N37
\memoriaDados|ram~232\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~232feeder_combout\,
	ena => \memoriaDados|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~232_q\);

-- Location: FF_X37_Y1_N44
\memoriaDados|ram~488\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \memoriaDados|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~488_q\);

-- Location: MLABCELL_X37_Y1_N42
\memoriaDados|ram~565\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~565_combout\ = ( \memoriaDados|ram~488_q\ & ( \ROM1|memROM~12_combout\ & ( (\ROM1|memROM~14_combout\) # (\memoriaDados|ram~472_q\) ) ) ) # ( !\memoriaDados|ram~488_q\ & ( \ROM1|memROM~12_combout\ & ( (\memoriaDados|ram~472_q\ & 
-- !\ROM1|memROM~14_combout\) ) ) ) # ( \memoriaDados|ram~488_q\ & ( !\ROM1|memROM~12_combout\ & ( (!\ROM1|memROM~14_combout\ & (\memoriaDados|ram~216_q\)) # (\ROM1|memROM~14_combout\ & ((\memoriaDados|ram~232_q\))) ) ) ) # ( !\memoriaDados|ram~488_q\ & ( 
-- !\ROM1|memROM~12_combout\ & ( (!\ROM1|memROM~14_combout\ & (\memoriaDados|ram~216_q\)) # (\ROM1|memROM~14_combout\ & ((\memoriaDados|ram~232_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~472_q\,
	datab => \memoriaDados|ALT_INV_ram~216_q\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \memoriaDados|ALT_INV_ram~232_q\,
	datae => \memoriaDados|ALT_INV_ram~488_q\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \memoriaDados|ram~565_combout\);

-- Location: LABCELL_X32_Y4_N39
\memoriaDados|ram~248feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~248feeder_combout\ = ( \CPU|REG1|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(1),
	combout => \memoriaDados|ram~248feeder_combout\);

-- Location: FF_X32_Y4_N41
\memoriaDados|ram~248\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~248feeder_combout\,
	ena => \memoriaDados|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~248_q\);

-- Location: FF_X34_Y4_N58
\memoriaDados|ram~504\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \memoriaDados|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~504_q\);

-- Location: FF_X37_Y4_N28
\memoriaDados|ram~264\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \memoriaDados|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~264_q\);

-- Location: FF_X37_Y4_N32
\memoriaDados|ram~520\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \memoriaDados|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~520_q\);

-- Location: MLABCELL_X37_Y4_N30
\memoriaDados|ram~566\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~566_combout\ = ( \memoriaDados|ram~520_q\ & ( \ROM1|memROM~14_combout\ & ( (\memoriaDados|ram~264_q\) # (\ROM1|memROM~12_combout\) ) ) ) # ( !\memoriaDados|ram~520_q\ & ( \ROM1|memROM~14_combout\ & ( (!\ROM1|memROM~12_combout\ & 
-- \memoriaDados|ram~264_q\) ) ) ) # ( \memoriaDados|ram~520_q\ & ( !\ROM1|memROM~14_combout\ & ( (!\ROM1|memROM~12_combout\ & (\memoriaDados|ram~248_q\)) # (\ROM1|memROM~12_combout\ & ((\memoriaDados|ram~504_q\))) ) ) ) # ( !\memoriaDados|ram~520_q\ & ( 
-- !\ROM1|memROM~14_combout\ & ( (!\ROM1|memROM~12_combout\ & (\memoriaDados|ram~248_q\)) # (\ROM1|memROM~12_combout\ & ((\memoriaDados|ram~504_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~248_q\,
	datab => \memoriaDados|ALT_INV_ram~504_q\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \memoriaDados|ALT_INV_ram~264_q\,
	datae => \memoriaDados|ALT_INV_ram~520_q\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \memoriaDados|ram~566_combout\);

-- Location: LABCELL_X39_Y2_N30
\memoriaDados|ram~408feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~408feeder_combout\ = ( \CPU|REG1|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(1),
	combout => \memoriaDados|ram~408feeder_combout\);

-- Location: FF_X39_Y2_N31
\memoriaDados|ram~408\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~408feeder_combout\,
	ena => \memoriaDados|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~408_q\);

-- Location: LABCELL_X40_Y3_N33
\memoriaDados|ram~168feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~168feeder_combout\ = ( \CPU|REG1|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(1),
	combout => \memoriaDados|ram~168feeder_combout\);

-- Location: FF_X40_Y3_N34
\memoriaDados|ram~168\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~168feeder_combout\,
	ena => \memoriaDados|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~168_q\);

-- Location: FF_X40_Y5_N13
\memoriaDados|ram~152\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \memoriaDados|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~152_q\);

-- Location: FF_X39_Y2_N14
\memoriaDados|ram~424\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \memoriaDados|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~424_q\);

-- Location: LABCELL_X39_Y2_N12
\memoriaDados|ram~563\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~563_combout\ = ( \memoriaDados|ram~424_q\ & ( \ROM1|memROM~14_combout\ & ( (\ROM1|memROM~12_combout\) # (\memoriaDados|ram~168_q\) ) ) ) # ( !\memoriaDados|ram~424_q\ & ( \ROM1|memROM~14_combout\ & ( (\memoriaDados|ram~168_q\ & 
-- !\ROM1|memROM~12_combout\) ) ) ) # ( \memoriaDados|ram~424_q\ & ( !\ROM1|memROM~14_combout\ & ( (!\ROM1|memROM~12_combout\ & ((\memoriaDados|ram~152_q\))) # (\ROM1|memROM~12_combout\ & (\memoriaDados|ram~408_q\)) ) ) ) # ( !\memoriaDados|ram~424_q\ & ( 
-- !\ROM1|memROM~14_combout\ & ( (!\ROM1|memROM~12_combout\ & ((\memoriaDados|ram~152_q\))) # (\ROM1|memROM~12_combout\ & (\memoriaDados|ram~408_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~408_q\,
	datab => \memoriaDados|ALT_INV_ram~168_q\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \memoriaDados|ALT_INV_ram~152_q\,
	datae => \memoriaDados|ALT_INV_ram~424_q\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \memoriaDados|ram~563_combout\);

-- Location: LABCELL_X36_Y1_N36
\memoriaDados|ram~567\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~567_combout\ = ( \memoriaDados|ram~566_combout\ & ( \memoriaDados|ram~563_combout\ & ( (!\ROM1|memROM~55_combout\ & (((!\ROM1|memROM~19_combout\) # (\memoriaDados|ram~565_combout\)))) # (\ROM1|memROM~55_combout\ & 
-- (((\ROM1|memROM~19_combout\)) # (\memoriaDados|ram~564_combout\))) ) ) ) # ( !\memoriaDados|ram~566_combout\ & ( \memoriaDados|ram~563_combout\ & ( (!\ROM1|memROM~55_combout\ & (((!\ROM1|memROM~19_combout\) # (\memoriaDados|ram~565_combout\)))) # 
-- (\ROM1|memROM~55_combout\ & (\memoriaDados|ram~564_combout\ & (!\ROM1|memROM~19_combout\))) ) ) ) # ( \memoriaDados|ram~566_combout\ & ( !\memoriaDados|ram~563_combout\ & ( (!\ROM1|memROM~55_combout\ & (((\ROM1|memROM~19_combout\ & 
-- \memoriaDados|ram~565_combout\)))) # (\ROM1|memROM~55_combout\ & (((\ROM1|memROM~19_combout\)) # (\memoriaDados|ram~564_combout\))) ) ) ) # ( !\memoriaDados|ram~566_combout\ & ( !\memoriaDados|ram~563_combout\ & ( (!\ROM1|memROM~55_combout\ & 
-- (((\ROM1|memROM~19_combout\ & \memoriaDados|ram~565_combout\)))) # (\ROM1|memROM~55_combout\ & (\memoriaDados|ram~564_combout\ & (!\ROM1|memROM~19_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011010000101010001111110110000101110101011010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~55_combout\,
	datab => \memoriaDados|ALT_INV_ram~564_combout\,
	datac => \ROM1|ALT_INV_memROM~19_combout\,
	datad => \memoriaDados|ALT_INV_ram~565_combout\,
	datae => \memoriaDados|ALT_INV_ram~566_combout\,
	dataf => \memoriaDados|ALT_INV_ram~563_combout\,
	combout => \memoriaDados|ram~567_combout\);

-- Location: FF_X36_Y1_N40
\memoriaDados|ram~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \memoriaDados|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~104_q\);

-- Location: LABCELL_X32_Y5_N27
\memoriaDados|ram~296feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~296feeder_combout\ = ( \CPU|REG1|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(1),
	combout => \memoriaDados|ram~296feeder_combout\);

-- Location: FF_X32_Y5_N28
\memoriaDados|ram~296\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~296feeder_combout\,
	ena => \memoriaDados|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~296_q\);

-- Location: LABCELL_X41_Y3_N57
\memoriaDados|ram~40feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~40feeder_combout\ = ( \CPU|REG1|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(1),
	combout => \memoriaDados|ram~40feeder_combout\);

-- Location: FF_X41_Y3_N58
\memoriaDados|ram~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~40feeder_combout\,
	ena => \memoriaDados|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~40_q\);

-- Location: FF_X36_Y1_N32
\memoriaDados|ram~360\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \memoriaDados|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~360_q\);

-- Location: LABCELL_X36_Y1_N30
\memoriaDados|ram~555\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~555_combout\ = ( \memoriaDados|ram~360_q\ & ( \ROM1|memROM~12_combout\ & ( (\ROM1|memROM~19_combout\) # (\memoriaDados|ram~296_q\) ) ) ) # ( !\memoriaDados|ram~360_q\ & ( \ROM1|memROM~12_combout\ & ( (\memoriaDados|ram~296_q\ & 
-- !\ROM1|memROM~19_combout\) ) ) ) # ( \memoriaDados|ram~360_q\ & ( !\ROM1|memROM~12_combout\ & ( (!\ROM1|memROM~19_combout\ & ((\memoriaDados|ram~40_q\))) # (\ROM1|memROM~19_combout\ & (\memoriaDados|ram~104_q\)) ) ) ) # ( !\memoriaDados|ram~360_q\ & ( 
-- !\ROM1|memROM~12_combout\ & ( (!\ROM1|memROM~19_combout\ & ((\memoriaDados|ram~40_q\))) # (\ROM1|memROM~19_combout\ & (\memoriaDados|ram~104_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~104_q\,
	datab => \memoriaDados|ALT_INV_ram~296_q\,
	datac => \memoriaDados|ALT_INV_ram~40_q\,
	datad => \ROM1|ALT_INV_memROM~19_combout\,
	datae => \memoriaDados|ALT_INV_ram~360_q\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \memoriaDados|ram~555_combout\);

-- Location: FF_X32_Y3_N29
\memoriaDados|ram~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \memoriaDados|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~120_q\);

-- Location: FF_X32_Y3_N32
\memoriaDados|ram~376\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \memoriaDados|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~376_q\);

-- Location: FF_X35_Y6_N49
\memoriaDados|ram~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \memoriaDados|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~56_q\);

-- Location: FF_X34_Y5_N50
\memoriaDados|ram~312\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \memoriaDados|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~312_q\);

-- Location: LABCELL_X32_Y3_N24
\memoriaDados|ram~554\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~554_combout\ = ( \ROM1|memROM~12_combout\ & ( \ROM1|memROM~19_combout\ & ( \memoriaDados|ram~376_q\ ) ) ) # ( !\ROM1|memROM~12_combout\ & ( \ROM1|memROM~19_combout\ & ( \memoriaDados|ram~120_q\ ) ) ) # ( \ROM1|memROM~12_combout\ & ( 
-- !\ROM1|memROM~19_combout\ & ( \memoriaDados|ram~312_q\ ) ) ) # ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~19_combout\ & ( \memoriaDados|ram~56_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~120_q\,
	datab => \memoriaDados|ALT_INV_ram~376_q\,
	datac => \memoriaDados|ALT_INV_ram~56_q\,
	datad => \memoriaDados|ALT_INV_ram~312_q\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \memoriaDados|ram~554_combout\);

-- Location: FF_X35_Y3_N2
\memoriaDados|ram~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \memoriaDados|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~72_q\);

-- Location: FF_X36_Y7_N19
\memoriaDados|ram~328\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \memoriaDados|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~328_q\);

-- Location: FF_X37_Y4_N46
\memoriaDados|ram~136\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \memoriaDados|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~136_q\);

-- Location: FF_X35_Y3_N50
\memoriaDados|ram~392\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \memoriaDados|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~392_q\);

-- Location: LABCELL_X35_Y3_N48
\memoriaDados|ram~556\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~556_combout\ = ( \memoriaDados|ram~392_q\ & ( \ROM1|memROM~19_combout\ & ( (\ROM1|memROM~12_combout\) # (\memoriaDados|ram~136_q\) ) ) ) # ( !\memoriaDados|ram~392_q\ & ( \ROM1|memROM~19_combout\ & ( (\memoriaDados|ram~136_q\ & 
-- !\ROM1|memROM~12_combout\) ) ) ) # ( \memoriaDados|ram~392_q\ & ( !\ROM1|memROM~19_combout\ & ( (!\ROM1|memROM~12_combout\ & (\memoriaDados|ram~72_q\)) # (\ROM1|memROM~12_combout\ & ((\memoriaDados|ram~328_q\))) ) ) ) # ( !\memoriaDados|ram~392_q\ & ( 
-- !\ROM1|memROM~19_combout\ & ( (!\ROM1|memROM~12_combout\ & (\memoriaDados|ram~72_q\)) # (\ROM1|memROM~12_combout\ & ((\memoriaDados|ram~328_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~72_q\,
	datab => \memoriaDados|ALT_INV_ram~328_q\,
	datac => \memoriaDados|ALT_INV_ram~136_q\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \memoriaDados|ALT_INV_ram~392_q\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \memoriaDados|ram~556_combout\);

-- Location: LABCELL_X31_Y3_N24
\memoriaDados|ram~280feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~280feeder_combout\ = ( \CPU|REG1|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(1),
	combout => \memoriaDados|ram~280feeder_combout\);

-- Location: FF_X31_Y3_N25
\memoriaDados|ram~280\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~280feeder_combout\,
	ena => \memoriaDados|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~280_q\);

-- Location: FF_X34_Y1_N11
\memoriaDados|ram~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \memoriaDados|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~88_q\);

-- Location: LABCELL_X31_Y3_N57
\memoriaDados|ram~24feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~24feeder_combout\ = ( \CPU|REG1|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(1),
	combout => \memoriaDados|ram~24feeder_combout\);

-- Location: FF_X31_Y3_N58
\memoriaDados|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~24feeder_combout\,
	ena => \memoriaDados|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~24_q\);

-- Location: FF_X34_Y1_N2
\memoriaDados|ram~344\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \memoriaDados|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~344_q\);

-- Location: MLABCELL_X34_Y1_N0
\memoriaDados|ram~553\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~553_combout\ = ( \memoriaDados|ram~344_q\ & ( \ROM1|memROM~19_combout\ & ( (\ROM1|memROM~12_combout\) # (\memoriaDados|ram~88_q\) ) ) ) # ( !\memoriaDados|ram~344_q\ & ( \ROM1|memROM~19_combout\ & ( (\memoriaDados|ram~88_q\ & 
-- !\ROM1|memROM~12_combout\) ) ) ) # ( \memoriaDados|ram~344_q\ & ( !\ROM1|memROM~19_combout\ & ( (!\ROM1|memROM~12_combout\ & ((\memoriaDados|ram~24_q\))) # (\ROM1|memROM~12_combout\ & (\memoriaDados|ram~280_q\)) ) ) ) # ( !\memoriaDados|ram~344_q\ & ( 
-- !\ROM1|memROM~19_combout\ & ( (!\ROM1|memROM~12_combout\ & ((\memoriaDados|ram~24_q\))) # (\ROM1|memROM~12_combout\ & (\memoriaDados|ram~280_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~280_q\,
	datab => \memoriaDados|ALT_INV_ram~88_q\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \memoriaDados|ALT_INV_ram~24_q\,
	datae => \memoriaDados|ALT_INV_ram~344_q\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \memoriaDados|ram~553_combout\);

-- Location: LABCELL_X36_Y1_N15
\memoriaDados|ram~557\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~557_combout\ = ( \memoriaDados|ram~556_combout\ & ( \memoriaDados|ram~553_combout\ & ( (!\ROM1|memROM~55_combout\ & ((!\ROM1|memROM~14_combout\) # ((\memoriaDados|ram~555_combout\)))) # (\ROM1|memROM~55_combout\ & 
-- (((\memoriaDados|ram~554_combout\)) # (\ROM1|memROM~14_combout\))) ) ) ) # ( !\memoriaDados|ram~556_combout\ & ( \memoriaDados|ram~553_combout\ & ( (!\ROM1|memROM~55_combout\ & ((!\ROM1|memROM~14_combout\) # ((\memoriaDados|ram~555_combout\)))) # 
-- (\ROM1|memROM~55_combout\ & (!\ROM1|memROM~14_combout\ & ((\memoriaDados|ram~554_combout\)))) ) ) ) # ( \memoriaDados|ram~556_combout\ & ( !\memoriaDados|ram~553_combout\ & ( (!\ROM1|memROM~55_combout\ & (\ROM1|memROM~14_combout\ & 
-- (\memoriaDados|ram~555_combout\))) # (\ROM1|memROM~55_combout\ & (((\memoriaDados|ram~554_combout\)) # (\ROM1|memROM~14_combout\))) ) ) ) # ( !\memoriaDados|ram~556_combout\ & ( !\memoriaDados|ram~553_combout\ & ( (!\ROM1|memROM~55_combout\ & 
-- (\ROM1|memROM~14_combout\ & (\memoriaDados|ram~555_combout\))) # (\ROM1|memROM~55_combout\ & (!\ROM1|memROM~14_combout\ & ((\memoriaDados|ram~554_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000100110101011110001010110011101001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~55_combout\,
	datab => \ROM1|ALT_INV_memROM~14_combout\,
	datac => \memoriaDados|ALT_INV_ram~555_combout\,
	datad => \memoriaDados|ALT_INV_ram~554_combout\,
	datae => \memoriaDados|ALT_INV_ram~556_combout\,
	dataf => \memoriaDados|ALT_INV_ram~553_combout\,
	combout => \memoriaDados|ram~557_combout\);

-- Location: LABCELL_X36_Y1_N51
\memoriaDados|ram~568\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~568_combout\ = ( \memoriaDados|ram~567_combout\ & ( \memoriaDados|ram~557_combout\ & ( ((!\ROM1|memROM~24_combout\ & (\memoriaDados|ram~552_combout\)) # (\ROM1|memROM~24_combout\ & ((\memoriaDados|ram~562_combout\)))) # 
-- (\ROM1|memROM~13_combout\) ) ) ) # ( !\memoriaDados|ram~567_combout\ & ( \memoriaDados|ram~557_combout\ & ( (!\ROM1|memROM~24_combout\ & (((\memoriaDados|ram~552_combout\)) # (\ROM1|memROM~13_combout\))) # (\ROM1|memROM~24_combout\ & 
-- (!\ROM1|memROM~13_combout\ & ((\memoriaDados|ram~562_combout\)))) ) ) ) # ( \memoriaDados|ram~567_combout\ & ( !\memoriaDados|ram~557_combout\ & ( (!\ROM1|memROM~24_combout\ & (!\ROM1|memROM~13_combout\ & (\memoriaDados|ram~552_combout\))) # 
-- (\ROM1|memROM~24_combout\ & (((\memoriaDados|ram~562_combout\)) # (\ROM1|memROM~13_combout\))) ) ) ) # ( !\memoriaDados|ram~567_combout\ & ( !\memoriaDados|ram~557_combout\ & ( (!\ROM1|memROM~13_combout\ & ((!\ROM1|memROM~24_combout\ & 
-- (\memoriaDados|ram~552_combout\)) # (\ROM1|memROM~24_combout\ & ((\memoriaDados|ram~562_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000110010101110100101010011011100011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~24_combout\,
	datab => \ROM1|ALT_INV_memROM~13_combout\,
	datac => \memoriaDados|ALT_INV_ram~552_combout\,
	datad => \memoriaDados|ALT_INV_ram~562_combout\,
	datae => \memoriaDados|ALT_INV_ram~567_combout\,
	dataf => \memoriaDados|ALT_INV_ram~557_combout\,
	combout => \memoriaDados|ram~568_combout\);

-- Location: LABCELL_X36_Y1_N0
\CPU|MUX1|saida_MUX[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[1]~0_combout\ = ( \SW[1]~input_o\ & ( \memoriaDados|ram~568_combout\ & ( (!\CPU|Decoder|Equal1~0_combout\) # (\ROM1|memROM~14_combout\) ) ) ) # ( !\SW[1]~input_o\ & ( \memoriaDados|ram~568_combout\ & ( (!\CPU|Decoder|Equal1~0_combout\ 
-- & ((!\AND_ENABLE_BUFFER_8BITS~2_combout\))) # (\CPU|Decoder|Equal1~0_combout\ & (\ROM1|memROM~14_combout\)) ) ) ) # ( \SW[1]~input_o\ & ( !\memoriaDados|ram~568_combout\ & ( (!\CPU|Decoder|Equal1~0_combout\ & ((\AND_ENABLE_BUFFER_8BITS~2_combout\))) # 
-- (\CPU|Decoder|Equal1~0_combout\ & (\ROM1|memROM~14_combout\)) ) ) ) # ( !\SW[1]~input_o\ & ( !\memoriaDados|ram~568_combout\ & ( (\ROM1|memROM~14_combout\ & \CPU|Decoder|Equal1~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001011111010111110101000001011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~14_combout\,
	datac => \CPU|Decoder|ALT_INV_Equal1~0_combout\,
	datad => \ALT_INV_AND_ENABLE_BUFFER_8BITS~2_combout\,
	datae => \ALT_INV_SW[1]~input_o\,
	dataf => \memoriaDados|ALT_INV_ram~568_combout\,
	combout => \CPU|MUX1|saida_MUX[1]~0_combout\);

-- Location: LABCELL_X35_Y2_N6
\CPU|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~9_sumout\ = SUM(( \CPU|REG1|DOUT\(2) ) + ( \CPU|MUX1|saida_MUX[2]~1_combout\ ) + ( \CPU|ULA1|Add0~6\ ))
-- \CPU|ULA1|Add0~10\ = CARRY(( \CPU|REG1|DOUT\(2) ) + ( \CPU|MUX1|saida_MUX[2]~1_combout\ ) + ( \CPU|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|REG1|ALT_INV_DOUT\(2),
	dataf => \CPU|MUX1|ALT_INV_saida_MUX[2]~1_combout\,
	cin => \CPU|ULA1|Add0~6\,
	sumout => \CPU|ULA1|Add0~9_sumout\,
	cout => \CPU|ULA1|Add0~10\);

-- Location: LABCELL_X35_Y2_N39
\CPU|ULA1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~9_sumout\ = SUM(( !\CPU|MUX1|saida_MUX[2]~1_combout\ ) + ( \CPU|REG1|DOUT\(2) ) + ( \CPU|ULA1|Add1~6\ ))
-- \CPU|ULA1|Add1~10\ = CARRY(( !\CPU|MUX1|saida_MUX[2]~1_combout\ ) + ( \CPU|REG1|DOUT\(2) ) + ( \CPU|ULA1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|REG1|ALT_INV_DOUT\(2),
	datac => \CPU|MUX1|ALT_INV_saida_MUX[2]~1_combout\,
	cin => \CPU|ULA1|Add1~6\,
	sumout => \CPU|ULA1|Add1~9_sumout\,
	cout => \CPU|ULA1|Add1~10\);

-- Location: MLABCELL_X34_Y2_N0
\CPU|ULA1|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[2]~2_combout\ = ( \CPU|MUX1|saida_MUX[2]~1_combout\ & ( \CPU|ULA1|Add1~9_sumout\ ) ) # ( !\CPU|MUX1|saida_MUX[2]~1_combout\ & ( \CPU|ULA1|Add1~9_sumout\ & ( !\CPU|Decoder|Operacao~0_combout\ ) ) ) # ( \CPU|MUX1|saida_MUX[2]~1_combout\ & ( 
-- !\CPU|ULA1|Add1~9_sumout\ & ( \CPU|Decoder|Operacao~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111001100110011001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|Decoder|ALT_INV_Operacao~0_combout\,
	datae => \CPU|MUX1|ALT_INV_saida_MUX[2]~1_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~9_sumout\,
	combout => \CPU|ULA1|saida[2]~2_combout\);

-- Location: FF_X35_Y2_N8
\CPU|REG1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~9_sumout\,
	asdata => \CPU|ULA1|saida[2]~2_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|Decoder|OUTPUT\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(2));

-- Location: LABCELL_X35_Y2_N9
\CPU|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~13_sumout\ = SUM(( \CPU|REG1|DOUT\(3) ) + ( (!\CPU|Decoder|Equal1~0_combout\ & (((\CPU|MUX1|saida_MUX[3]~2_combout\)))) # (\CPU|Decoder|Equal1~0_combout\ & (\ROM1|memROM~26_combout\ & (!\CPU|PC|DOUT[8]~DUPLICATE_q\))) ) + ( 
-- \CPU|ULA1|Add0~10\ ))
-- \CPU|ULA1|Add0~14\ = CARRY(( \CPU|REG1|DOUT\(3) ) + ( (!\CPU|Decoder|Equal1~0_combout\ & (((\CPU|MUX1|saida_MUX[3]~2_combout\)))) # (\CPU|Decoder|Equal1~0_combout\ & (\ROM1|memROM~26_combout\ & (!\CPU|PC|DOUT[8]~DUPLICATE_q\))) ) + ( \CPU|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011110010001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~26_combout\,
	datab => \CPU|Decoder|ALT_INV_Equal1~0_combout\,
	datac => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datad => \CPU|REG1|ALT_INV_DOUT\(3),
	dataf => \CPU|MUX1|ALT_INV_saida_MUX[3]~2_combout\,
	cin => \CPU|ULA1|Add0~10\,
	sumout => \CPU|ULA1|Add0~13_sumout\,
	cout => \CPU|ULA1|Add0~14\);

-- Location: LABCELL_X35_Y2_N42
\CPU|ULA1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~13_sumout\ = SUM(( (!\CPU|Decoder|Equal1~0_combout\ & (((!\CPU|MUX1|saida_MUX[3]~2_combout\)))) # (\CPU|Decoder|Equal1~0_combout\ & (((!\ROM1|memROM~26_combout\)) # (\CPU|PC|DOUT[8]~DUPLICATE_q\))) ) + ( \CPU|REG1|DOUT\(3) ) + ( 
-- \CPU|ULA1|Add1~10\ ))
-- \CPU|ULA1|Add1~14\ = CARRY(( (!\CPU|Decoder|Equal1~0_combout\ & (((!\CPU|MUX1|saida_MUX[3]~2_combout\)))) # (\CPU|Decoder|Equal1~0_combout\ & (((!\ROM1|memROM~26_combout\)) # (\CPU|PC|DOUT[8]~DUPLICATE_q\))) ) + ( \CPU|REG1|DOUT\(3) ) + ( 
-- \CPU|ULA1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111110100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datab => \CPU|Decoder|ALT_INV_Equal1~0_combout\,
	datac => \ROM1|ALT_INV_memROM~26_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[3]~2_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(3),
	cin => \CPU|ULA1|Add1~10\,
	sumout => \CPU|ULA1|Add1~13_sumout\,
	cout => \CPU|ULA1|Add1~14\);

-- Location: LABCELL_X36_Y2_N6
\CPU|ULA1|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[3]~3_combout\ = ( \CPU|ULA1|Add1~13_sumout\ & ( (!\CPU|Decoder|Operacao~0_combout\) # ((!\CPU|Decoder|Equal1~0_combout\ & (\CPU|MUX1|saida_MUX[3]~2_combout\)) # (\CPU|Decoder|Equal1~0_combout\ & ((\ROM1|memROM~19_combout\)))) ) ) # ( 
-- !\CPU|ULA1|Add1~13_sumout\ & ( (\CPU|Decoder|Operacao~0_combout\ & ((!\CPU|Decoder|Equal1~0_combout\ & (\CPU|MUX1|saida_MUX[3]~2_combout\)) # (\CPU|Decoder|Equal1~0_combout\ & ((\ROM1|memROM~19_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010011110111001101111100010000000100111101110011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX1|ALT_INV_saida_MUX[3]~2_combout\,
	datab => \CPU|Decoder|ALT_INV_Operacao~0_combout\,
	datac => \CPU|Decoder|ALT_INV_Equal1~0_combout\,
	datad => \ROM1|ALT_INV_memROM~19_combout\,
	datae => \CPU|ULA1|ALT_INV_Add1~13_sumout\,
	combout => \CPU|ULA1|saida[3]~3_combout\);

-- Location: FF_X35_Y2_N11
\CPU|REG1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~13_sumout\,
	asdata => \CPU|ULA1|saida[3]~3_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|Decoder|OUTPUT\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(3));

-- Location: LABCELL_X35_Y2_N12
\CPU|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~17_sumout\ = SUM(( \CPU|REG1|DOUT\(4) ) + ( (!\CPU|Decoder|Equal1~0_combout\ & (((\CPU|MUX1|saida_MUX[4]~3_combout\)))) # (\CPU|Decoder|Equal1~0_combout\ & (!\CPU|PC|DOUT[8]~DUPLICATE_q\ & (\ROM1|memROM~27_combout\))) ) + ( 
-- \CPU|ULA1|Add0~14\ ))
-- \CPU|ULA1|Add0~18\ = CARRY(( \CPU|REG1|DOUT\(4) ) + ( (!\CPU|Decoder|Equal1~0_combout\ & (((\CPU|MUX1|saida_MUX[4]~3_combout\)))) # (\CPU|Decoder|Equal1~0_combout\ & (!\CPU|PC|DOUT[8]~DUPLICATE_q\ & (\ROM1|memROM~27_combout\))) ) + ( \CPU|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111010000110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datab => \ROM1|ALT_INV_memROM~27_combout\,
	datac => \CPU|Decoder|ALT_INV_Equal1~0_combout\,
	datad => \CPU|REG1|ALT_INV_DOUT\(4),
	dataf => \CPU|MUX1|ALT_INV_saida_MUX[4]~3_combout\,
	cin => \CPU|ULA1|Add0~14\,
	sumout => \CPU|ULA1|Add0~17_sumout\,
	cout => \CPU|ULA1|Add0~18\);

-- Location: LABCELL_X35_Y2_N45
\CPU|ULA1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~17_sumout\ = SUM(( (!\CPU|Decoder|Equal1~0_combout\ & (((!\CPU|MUX1|saida_MUX[4]~3_combout\)))) # (\CPU|Decoder|Equal1~0_combout\ & (((!\ROM1|memROM~27_combout\)) # (\CPU|PC|DOUT[8]~DUPLICATE_q\))) ) + ( \CPU|REG1|DOUT\(4) ) + ( 
-- \CPU|ULA1|Add1~14\ ))
-- \CPU|ULA1|Add1~18\ = CARRY(( (!\CPU|Decoder|Equal1~0_combout\ & (((!\CPU|MUX1|saida_MUX[4]~3_combout\)))) # (\CPU|Decoder|Equal1~0_combout\ & (((!\ROM1|memROM~27_combout\)) # (\CPU|PC|DOUT[8]~DUPLICATE_q\))) ) + ( \CPU|REG1|DOUT\(4) ) + ( 
-- \CPU|ULA1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111110100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datab => \CPU|Decoder|ALT_INV_Equal1~0_combout\,
	datac => \ROM1|ALT_INV_memROM~27_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[4]~3_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(4),
	cin => \CPU|ULA1|Add1~14\,
	sumout => \CPU|ULA1|Add1~17_sumout\,
	cout => \CPU|ULA1|Add1~18\);

-- Location: LABCELL_X35_Y2_N24
\CPU|ULA1|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[4]~4_combout\ = ( \CPU|MUX1|saida_MUX[4]~3_combout\ & ( (!\CPU|Decoder|Operacao~0_combout\ & (((\CPU|ULA1|Add1~17_sumout\)))) # (\CPU|Decoder|Operacao~0_combout\ & ((!\CPU|Decoder|Equal1~0_combout\) # ((\ROM1|memROM~24_combout\)))) ) ) # ( 
-- !\CPU|MUX1|saida_MUX[4]~3_combout\ & ( (!\CPU|Decoder|Operacao~0_combout\ & (((\CPU|ULA1|Add1~17_sumout\)))) # (\CPU|Decoder|Operacao~0_combout\ & (\CPU|Decoder|Equal1~0_combout\ & (\ROM1|memROM~24_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110101011000000011010101101000101111011110100010111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_Operacao~0_combout\,
	datab => \CPU|Decoder|ALT_INV_Equal1~0_combout\,
	datac => \ROM1|ALT_INV_memROM~24_combout\,
	datad => \CPU|ULA1|ALT_INV_Add1~17_sumout\,
	dataf => \CPU|MUX1|ALT_INV_saida_MUX[4]~3_combout\,
	combout => \CPU|ULA1|saida[4]~4_combout\);

-- Location: FF_X35_Y2_N14
\CPU|REG1|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~17_sumout\,
	asdata => \CPU|ULA1|saida[4]~4_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|Decoder|OUTPUT\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(4));

-- Location: LABCELL_X35_Y2_N15
\CPU|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~21_sumout\ = SUM(( \CPU|REG1|DOUT\(5) ) + ( \CPU|MUX1|saida_MUX[5]~4_combout\ ) + ( \CPU|ULA1|Add0~18\ ))
-- \CPU|ULA1|Add0~22\ = CARRY(( \CPU|REG1|DOUT\(5) ) + ( \CPU|MUX1|saida_MUX[5]~4_combout\ ) + ( \CPU|ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|MUX1|ALT_INV_saida_MUX[5]~4_combout\,
	datad => \CPU|REG1|ALT_INV_DOUT\(5),
	cin => \CPU|ULA1|Add0~18\,
	sumout => \CPU|ULA1|Add0~21_sumout\,
	cout => \CPU|ULA1|Add0~22\);

-- Location: LABCELL_X35_Y2_N48
\CPU|ULA1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~21_sumout\ = SUM(( !\CPU|MUX1|saida_MUX[5]~4_combout\ ) + ( \CPU|REG1|DOUT\(5) ) + ( \CPU|ULA1|Add1~18\ ))
-- \CPU|ULA1|Add1~22\ = CARRY(( !\CPU|MUX1|saida_MUX[5]~4_combout\ ) + ( \CPU|REG1|DOUT\(5) ) + ( \CPU|ULA1|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|MUX1|ALT_INV_saida_MUX[5]~4_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(5),
	cin => \CPU|ULA1|Add1~18\,
	sumout => \CPU|ULA1|Add1~21_sumout\,
	cout => \CPU|ULA1|Add1~22\);

-- Location: MLABCELL_X34_Y2_N6
\CPU|ULA1|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[5]~5_combout\ = ( \CPU|ULA1|Add1~21_sumout\ & ( \CPU|MUX1|saida_MUX[5]~4_combout\ ) ) # ( !\CPU|ULA1|Add1~21_sumout\ & ( \CPU|MUX1|saida_MUX[5]~4_combout\ & ( \CPU|Decoder|Operacao~0_combout\ ) ) ) # ( \CPU|ULA1|Add1~21_sumout\ & ( 
-- !\CPU|MUX1|saida_MUX[5]~4_combout\ & ( !\CPU|Decoder|Operacao~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|Decoder|ALT_INV_Operacao~0_combout\,
	datae => \CPU|ULA1|ALT_INV_Add1~21_sumout\,
	dataf => \CPU|MUX1|ALT_INV_saida_MUX[5]~4_combout\,
	combout => \CPU|ULA1|saida[5]~5_combout\);

-- Location: FF_X35_Y2_N17
\CPU|REG1|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~21_sumout\,
	asdata => \CPU|ULA1|saida[5]~5_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|Decoder|OUTPUT\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(5));

-- Location: LABCELL_X39_Y3_N57
\memoriaDados|ram~428feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~428feeder_combout\ = ( \CPU|REG1|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(5),
	combout => \memoriaDados|ram~428feeder_combout\);

-- Location: FF_X39_Y3_N59
\memoriaDados|ram~428\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~428feeder_combout\,
	ena => \memoriaDados|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~428_q\);

-- Location: FF_X32_Y2_N34
\memoriaDados|ram~492\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \memoriaDados|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~492_q\);

-- Location: FF_X32_Y2_N16
\memoriaDados|ram~460\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \memoriaDados|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~460_q\);

-- Location: FF_X34_Y3_N44
\memoriaDados|ram~524\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \memoriaDados|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~524_q\);

-- Location: MLABCELL_X34_Y3_N42
\memoriaDados|ram~650\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~650_combout\ = ( \memoriaDados|ram~524_q\ & ( \ROM1|memROM~55_combout\ & ( (\ROM1|memROM~19_combout\) # (\memoriaDados|ram~460_q\) ) ) ) # ( !\memoriaDados|ram~524_q\ & ( \ROM1|memROM~55_combout\ & ( (\memoriaDados|ram~460_q\ & 
-- !\ROM1|memROM~19_combout\) ) ) ) # ( \memoriaDados|ram~524_q\ & ( !\ROM1|memROM~55_combout\ & ( (!\ROM1|memROM~19_combout\ & (\memoriaDados|ram~428_q\)) # (\ROM1|memROM~19_combout\ & ((\memoriaDados|ram~492_q\))) ) ) ) # ( !\memoriaDados|ram~524_q\ & ( 
-- !\ROM1|memROM~55_combout\ & ( (!\ROM1|memROM~19_combout\ & (\memoriaDados|ram~428_q\)) # (\ROM1|memROM~19_combout\ & ((\memoriaDados|ram~492_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~428_q\,
	datab => \memoriaDados|ALT_INV_ram~492_q\,
	datac => \memoriaDados|ALT_INV_ram~460_q\,
	datad => \ROM1|ALT_INV_memROM~19_combout\,
	datae => \memoriaDados|ALT_INV_ram~524_q\,
	dataf => \ROM1|ALT_INV_memROM~55_combout\,
	combout => \memoriaDados|ram~650_combout\);

-- Location: FF_X35_Y4_N59
\memoriaDados|ram~476\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \memoriaDados|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~476_q\);

-- Location: LABCELL_X39_Y4_N6
\memoriaDados|ram~444feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~444feeder_combout\ = ( \CPU|REG1|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(5),
	combout => \memoriaDados|ram~444feeder_combout\);

-- Location: FF_X39_Y4_N8
\memoriaDados|ram~444\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~444feeder_combout\,
	ena => \memoriaDados|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~444_q\);

-- Location: LABCELL_X39_Y2_N57
\memoriaDados|ram~412feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~412feeder_combout\ = ( \CPU|REG1|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(5),
	combout => \memoriaDados|ram~412feeder_combout\);

-- Location: FF_X39_Y2_N58
\memoriaDados|ram~412\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~412feeder_combout\,
	ena => \memoriaDados|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~412_q\);

-- Location: FF_X34_Y3_N8
\memoriaDados|ram~508\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \memoriaDados|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~508_q\);

-- Location: MLABCELL_X34_Y3_N6
\memoriaDados|ram~648\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~648_combout\ = ( \memoriaDados|ram~508_q\ & ( \ROM1|memROM~55_combout\ & ( (\ROM1|memROM~19_combout\) # (\memoriaDados|ram~444_q\) ) ) ) # ( !\memoriaDados|ram~508_q\ & ( \ROM1|memROM~55_combout\ & ( (\memoriaDados|ram~444_q\ & 
-- !\ROM1|memROM~19_combout\) ) ) ) # ( \memoriaDados|ram~508_q\ & ( !\ROM1|memROM~55_combout\ & ( (!\ROM1|memROM~19_combout\ & ((\memoriaDados|ram~412_q\))) # (\ROM1|memROM~19_combout\ & (\memoriaDados|ram~476_q\)) ) ) ) # ( !\memoriaDados|ram~508_q\ & ( 
-- !\ROM1|memROM~55_combout\ & ( (!\ROM1|memROM~19_combout\ & ((\memoriaDados|ram~412_q\))) # (\ROM1|memROM~19_combout\ & (\memoriaDados|ram~476_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~476_q\,
	datab => \memoriaDados|ALT_INV_ram~444_q\,
	datac => \memoriaDados|ALT_INV_ram~412_q\,
	datad => \ROM1|ALT_INV_memROM~19_combout\,
	datae => \memoriaDados|ALT_INV_ram~508_q\,
	dataf => \ROM1|ALT_INV_memROM~55_combout\,
	combout => \memoriaDados|ram~648_combout\);

-- Location: LABCELL_X31_Y6_N57
\memoriaDados|ram~364feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~364feeder_combout\ = ( \CPU|REG1|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(5),
	combout => \memoriaDados|ram~364feeder_combout\);

-- Location: FF_X31_Y6_N59
\memoriaDados|ram~364\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~364feeder_combout\,
	ena => \memoriaDados|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~364_q\);

-- Location: FF_X32_Y5_N19
\memoriaDados|ram~300\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \memoriaDados|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~300_q\);

-- Location: FF_X36_Y7_N7
\memoriaDados|ram~332\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \memoriaDados|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~332_q\);

-- Location: FF_X34_Y3_N56
\memoriaDados|ram~396\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \memoriaDados|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~396_q\);

-- Location: MLABCELL_X34_Y3_N54
\memoriaDados|ram~649\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~649_combout\ = ( \memoriaDados|ram~396_q\ & ( \ROM1|memROM~55_combout\ & ( (\ROM1|memROM~19_combout\) # (\memoriaDados|ram~332_q\) ) ) ) # ( !\memoriaDados|ram~396_q\ & ( \ROM1|memROM~55_combout\ & ( (\memoriaDados|ram~332_q\ & 
-- !\ROM1|memROM~19_combout\) ) ) ) # ( \memoriaDados|ram~396_q\ & ( !\ROM1|memROM~55_combout\ & ( (!\ROM1|memROM~19_combout\ & ((\memoriaDados|ram~300_q\))) # (\ROM1|memROM~19_combout\ & (\memoriaDados|ram~364_q\)) ) ) ) # ( !\memoriaDados|ram~396_q\ & ( 
-- !\ROM1|memROM~55_combout\ & ( (!\ROM1|memROM~19_combout\ & ((\memoriaDados|ram~300_q\))) # (\ROM1|memROM~19_combout\ & (\memoriaDados|ram~364_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~364_q\,
	datab => \memoriaDados|ALT_INV_ram~300_q\,
	datac => \memoriaDados|ALT_INV_ram~332_q\,
	datad => \ROM1|ALT_INV_memROM~19_combout\,
	datae => \memoriaDados|ALT_INV_ram~396_q\,
	dataf => \ROM1|ALT_INV_memROM~55_combout\,
	combout => \memoriaDados|ram~649_combout\);

-- Location: FF_X31_Y3_N20
\memoriaDados|ram~284\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \memoriaDados|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~284_q\);

-- Location: FF_X34_Y5_N44
\memoriaDados|ram~316\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \memoriaDados|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~316_q\);

-- Location: FF_X34_Y4_N28
\memoriaDados|ram~348\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \memoriaDados|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~348_q\);

-- Location: FF_X34_Y5_N32
\memoriaDados|ram~380\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \memoriaDados|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~380_q\);

-- Location: MLABCELL_X34_Y5_N30
\memoriaDados|ram~647\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~647_combout\ = ( \memoriaDados|ram~380_q\ & ( \ROM1|memROM~55_combout\ & ( (\ROM1|memROM~19_combout\) # (\memoriaDados|ram~316_q\) ) ) ) # ( !\memoriaDados|ram~380_q\ & ( \ROM1|memROM~55_combout\ & ( (\memoriaDados|ram~316_q\ & 
-- !\ROM1|memROM~19_combout\) ) ) ) # ( \memoriaDados|ram~380_q\ & ( !\ROM1|memROM~55_combout\ & ( (!\ROM1|memROM~19_combout\ & (\memoriaDados|ram~284_q\)) # (\ROM1|memROM~19_combout\ & ((\memoriaDados|ram~348_q\))) ) ) ) # ( !\memoriaDados|ram~380_q\ & ( 
-- !\ROM1|memROM~55_combout\ & ( (!\ROM1|memROM~19_combout\ & (\memoriaDados|ram~284_q\)) # (\ROM1|memROM~19_combout\ & ((\memoriaDados|ram~348_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~284_q\,
	datab => \memoriaDados|ALT_INV_ram~316_q\,
	datac => \memoriaDados|ALT_INV_ram~348_q\,
	datad => \ROM1|ALT_INV_memROM~19_combout\,
	datae => \memoriaDados|ALT_INV_ram~380_q\,
	dataf => \ROM1|ALT_INV_memROM~55_combout\,
	combout => \memoriaDados|ram~647_combout\);

-- Location: MLABCELL_X34_Y3_N24
\memoriaDados|ram~651\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~651_combout\ = ( \memoriaDados|ram~649_combout\ & ( \memoriaDados|ram~647_combout\ & ( (!\ROM1|memROM~24_combout\) # ((!\ROM1|memROM~14_combout\ & ((\memoriaDados|ram~648_combout\))) # (\ROM1|memROM~14_combout\ & 
-- (\memoriaDados|ram~650_combout\))) ) ) ) # ( !\memoriaDados|ram~649_combout\ & ( \memoriaDados|ram~647_combout\ & ( (!\ROM1|memROM~24_combout\ & (((!\ROM1|memROM~14_combout\)))) # (\ROM1|memROM~24_combout\ & ((!\ROM1|memROM~14_combout\ & 
-- ((\memoriaDados|ram~648_combout\))) # (\ROM1|memROM~14_combout\ & (\memoriaDados|ram~650_combout\)))) ) ) ) # ( \memoriaDados|ram~649_combout\ & ( !\memoriaDados|ram~647_combout\ & ( (!\ROM1|memROM~24_combout\ & (((\ROM1|memROM~14_combout\)))) # 
-- (\ROM1|memROM~24_combout\ & ((!\ROM1|memROM~14_combout\ & ((\memoriaDados|ram~648_combout\))) # (\ROM1|memROM~14_combout\ & (\memoriaDados|ram~650_combout\)))) ) ) ) # ( !\memoriaDados|ram~649_combout\ & ( !\memoriaDados|ram~647_combout\ & ( 
-- (\ROM1|memROM~24_combout\ & ((!\ROM1|memROM~14_combout\ & ((\memoriaDados|ram~648_combout\))) # (\ROM1|memROM~14_combout\ & (\memoriaDados|ram~650_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010001000010110101101110100001111100011010101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~24_combout\,
	datab => \memoriaDados|ALT_INV_ram~650_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \memoriaDados|ALT_INV_ram~648_combout\,
	datae => \memoriaDados|ALT_INV_ram~649_combout\,
	dataf => \memoriaDados|ALT_INV_ram~647_combout\,
	combout => \memoriaDados|ram~651_combout\);

-- Location: LABCELL_X39_Y6_N3
\memoriaDados|ram~156feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~156feeder_combout\ = ( \CPU|REG1|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(5),
	combout => \memoriaDados|ram~156feeder_combout\);

-- Location: FF_X39_Y6_N4
\memoriaDados|ram~156\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~156feeder_combout\,
	ena => \memoriaDados|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~156_q\);

-- Location: FF_X40_Y4_N44
\memoriaDados|ram~188\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \memoriaDados|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~188_q\);

-- Location: FF_X40_Y6_N4
\memoriaDados|ram~172\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \memoriaDados|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~172_q\);

-- Location: FF_X40_Y4_N8
\memoriaDados|ram~204\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \memoriaDados|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~204_q\);

-- Location: LABCELL_X40_Y4_N6
\memoriaDados|ram~643\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~643_combout\ = ( \memoriaDados|ram~204_q\ & ( \ROM1|memROM~55_combout\ & ( (\ROM1|memROM~14_combout\) # (\memoriaDados|ram~188_q\) ) ) ) # ( !\memoriaDados|ram~204_q\ & ( \ROM1|memROM~55_combout\ & ( (\memoriaDados|ram~188_q\ & 
-- !\ROM1|memROM~14_combout\) ) ) ) # ( \memoriaDados|ram~204_q\ & ( !\ROM1|memROM~55_combout\ & ( (!\ROM1|memROM~14_combout\ & (\memoriaDados|ram~156_q\)) # (\ROM1|memROM~14_combout\ & ((\memoriaDados|ram~172_q\))) ) ) ) # ( !\memoriaDados|ram~204_q\ & ( 
-- !\ROM1|memROM~55_combout\ & ( (!\ROM1|memROM~14_combout\ & (\memoriaDados|ram~156_q\)) # (\ROM1|memROM~14_combout\ & ((\memoriaDados|ram~172_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~156_q\,
	datab => \memoriaDados|ALT_INV_ram~188_q\,
	datac => \memoriaDados|ALT_INV_ram~172_q\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	datae => \memoriaDados|ALT_INV_ram~204_q\,
	dataf => \ROM1|ALT_INV_memROM~55_combout\,
	combout => \memoriaDados|ram~643_combout\);

-- Location: LABCELL_X41_Y3_N48
\memoriaDados|ram~44feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~44feeder_combout\ = ( \CPU|REG1|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(5),
	combout => \memoriaDados|ram~44feeder_combout\);

-- Location: FF_X41_Y3_N50
\memoriaDados|ram~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~44feeder_combout\,
	ena => \memoriaDados|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~44_q\);

-- Location: FF_X35_Y6_N25
\memoriaDados|ram~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \memoriaDados|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~60_q\);

-- Location: FF_X31_Y3_N34
\memoriaDados|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \memoriaDados|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~28_q\);

-- Location: FF_X35_Y3_N44
\memoriaDados|ram~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \memoriaDados|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~76_q\);

-- Location: LABCELL_X35_Y3_N42
\memoriaDados|ram~642\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~642_combout\ = ( \memoriaDados|ram~76_q\ & ( \ROM1|memROM~55_combout\ & ( (\ROM1|memROM~14_combout\) # (\memoriaDados|ram~60_q\) ) ) ) # ( !\memoriaDados|ram~76_q\ & ( \ROM1|memROM~55_combout\ & ( (\memoriaDados|ram~60_q\ & 
-- !\ROM1|memROM~14_combout\) ) ) ) # ( \memoriaDados|ram~76_q\ & ( !\ROM1|memROM~55_combout\ & ( (!\ROM1|memROM~14_combout\ & ((\memoriaDados|ram~28_q\))) # (\ROM1|memROM~14_combout\ & (\memoriaDados|ram~44_q\)) ) ) ) # ( !\memoriaDados|ram~76_q\ & ( 
-- !\ROM1|memROM~55_combout\ & ( (!\ROM1|memROM~14_combout\ & ((\memoriaDados|ram~28_q\))) # (\ROM1|memROM~14_combout\ & (\memoriaDados|ram~44_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~44_q\,
	datab => \memoriaDados|ALT_INV_ram~60_q\,
	datac => \memoriaDados|ALT_INV_ram~28_q\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	datae => \memoriaDados|ALT_INV_ram~76_q\,
	dataf => \ROM1|ALT_INV_memROM~55_combout\,
	combout => \memoriaDados|ram~642_combout\);

-- Location: FF_X32_Y4_N5
\memoriaDados|ram~252\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \memoriaDados|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~252_q\);

-- Location: FF_X32_Y4_N52
\memoriaDados|ram~220\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \memoriaDados|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~220_q\);

-- Location: FF_X31_Y4_N53
\memoriaDados|ram~236\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \memoriaDados|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~236_q\);

-- Location: FF_X32_Y4_N8
\memoriaDados|ram~268\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \memoriaDados|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~268_q\);

-- Location: LABCELL_X32_Y4_N6
\memoriaDados|ram~645\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~645_combout\ = ( \memoriaDados|ram~268_q\ & ( \ROM1|memROM~55_combout\ & ( (\ROM1|memROM~14_combout\) # (\memoriaDados|ram~252_q\) ) ) ) # ( !\memoriaDados|ram~268_q\ & ( \ROM1|memROM~55_combout\ & ( (\memoriaDados|ram~252_q\ & 
-- !\ROM1|memROM~14_combout\) ) ) ) # ( \memoriaDados|ram~268_q\ & ( !\ROM1|memROM~55_combout\ & ( (!\ROM1|memROM~14_combout\ & (\memoriaDados|ram~220_q\)) # (\ROM1|memROM~14_combout\ & ((\memoriaDados|ram~236_q\))) ) ) ) # ( !\memoriaDados|ram~268_q\ & ( 
-- !\ROM1|memROM~55_combout\ & ( (!\ROM1|memROM~14_combout\ & (\memoriaDados|ram~220_q\)) # (\ROM1|memROM~14_combout\ & ((\memoriaDados|ram~236_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~252_q\,
	datab => \memoriaDados|ALT_INV_ram~220_q\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \memoriaDados|ALT_INV_ram~236_q\,
	datae => \memoriaDados|ALT_INV_ram~268_q\,
	dataf => \ROM1|ALT_INV_memROM~55_combout\,
	combout => \memoriaDados|ram~645_combout\);

-- Location: FF_X35_Y6_N13
\memoriaDados|ram~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \memoriaDados|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~124_q\);

-- Location: LABCELL_X32_Y1_N21
\memoriaDados|ram~108feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~108feeder_combout\ = ( \CPU|REG1|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(5),
	combout => \memoriaDados|ram~108feeder_combout\);

-- Location: FF_X32_Y1_N22
\memoriaDados|ram~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~108feeder_combout\,
	ena => \memoriaDados|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~108_q\);

-- Location: FF_X34_Y1_N46
\memoriaDados|ram~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \memoriaDados|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~92_q\);

-- Location: FF_X40_Y4_N35
\memoriaDados|ram~140\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \memoriaDados|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~140_q\);

-- Location: LABCELL_X40_Y4_N33
\memoriaDados|ram~644\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~644_combout\ = ( \memoriaDados|ram~140_q\ & ( \ROM1|memROM~14_combout\ & ( (\ROM1|memROM~55_combout\) # (\memoriaDados|ram~108_q\) ) ) ) # ( !\memoriaDados|ram~140_q\ & ( \ROM1|memROM~14_combout\ & ( (\memoriaDados|ram~108_q\ & 
-- !\ROM1|memROM~55_combout\) ) ) ) # ( \memoriaDados|ram~140_q\ & ( !\ROM1|memROM~14_combout\ & ( (!\ROM1|memROM~55_combout\ & ((\memoriaDados|ram~92_q\))) # (\ROM1|memROM~55_combout\ & (\memoriaDados|ram~124_q\)) ) ) ) # ( !\memoriaDados|ram~140_q\ & ( 
-- !\ROM1|memROM~14_combout\ & ( (!\ROM1|memROM~55_combout\ & ((\memoriaDados|ram~92_q\))) # (\ROM1|memROM~55_combout\ & (\memoriaDados|ram~124_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~124_q\,
	datab => \memoriaDados|ALT_INV_ram~108_q\,
	datac => \ROM1|ALT_INV_memROM~55_combout\,
	datad => \memoriaDados|ALT_INV_ram~92_q\,
	datae => \memoriaDados|ALT_INV_ram~140_q\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \memoriaDados|ram~644_combout\);

-- Location: MLABCELL_X34_Y3_N0
\memoriaDados|ram~646\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~646_combout\ = ( \memoriaDados|ram~645_combout\ & ( \memoriaDados|ram~644_combout\ & ( ((!\ROM1|memROM~24_combout\ & ((\memoriaDados|ram~642_combout\))) # (\ROM1|memROM~24_combout\ & (\memoriaDados|ram~643_combout\))) # 
-- (\ROM1|memROM~19_combout\) ) ) ) # ( !\memoriaDados|ram~645_combout\ & ( \memoriaDados|ram~644_combout\ & ( (!\ROM1|memROM~24_combout\ & (((\memoriaDados|ram~642_combout\)) # (\ROM1|memROM~19_combout\))) # (\ROM1|memROM~24_combout\ & 
-- (!\ROM1|memROM~19_combout\ & (\memoriaDados|ram~643_combout\))) ) ) ) # ( \memoriaDados|ram~645_combout\ & ( !\memoriaDados|ram~644_combout\ & ( (!\ROM1|memROM~24_combout\ & (!\ROM1|memROM~19_combout\ & ((\memoriaDados|ram~642_combout\)))) # 
-- (\ROM1|memROM~24_combout\ & (((\memoriaDados|ram~643_combout\)) # (\ROM1|memROM~19_combout\))) ) ) ) # ( !\memoriaDados|ram~645_combout\ & ( !\memoriaDados|ram~644_combout\ & ( (!\ROM1|memROM~19_combout\ & ((!\ROM1|memROM~24_combout\ & 
-- ((\memoriaDados|ram~642_combout\))) # (\ROM1|memROM~24_combout\ & (\memoriaDados|ram~643_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000101011001110100100110101011100011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~24_combout\,
	datab => \ROM1|ALT_INV_memROM~19_combout\,
	datac => \memoriaDados|ALT_INV_ram~643_combout\,
	datad => \memoriaDados|ALT_INV_ram~642_combout\,
	datae => \memoriaDados|ALT_INV_ram~645_combout\,
	dataf => \memoriaDados|ALT_INV_ram~644_combout\,
	combout => \memoriaDados|ram~646_combout\);

-- Location: FF_X37_Y5_N16
\memoriaDados|ram~148\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \memoriaDados|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~148_q\);

-- Location: LABCELL_X40_Y1_N57
\memoriaDados|ram~164feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~164feeder_combout\ = ( \CPU|REG1|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(5),
	combout => \memoriaDados|ram~164feeder_combout\);

-- Location: FF_X40_Y1_N58
\memoriaDados|ram~164\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~164feeder_combout\,
	ena => \memoriaDados|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~164_q\);

-- Location: FF_X39_Y1_N50
\memoriaDados|ram~180\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \memoriaDados|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~180_q\);

-- Location: FF_X37_Y3_N14
\memoriaDados|ram~196\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \memoriaDados|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~196_q\);

-- Location: MLABCELL_X37_Y3_N12
\memoriaDados|ram~633\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~633_combout\ = ( \memoriaDados|ram~196_q\ & ( \ROM1|memROM~55_combout\ & ( (\memoriaDados|ram~180_q\) # (\ROM1|memROM~14_combout\) ) ) ) # ( !\memoriaDados|ram~196_q\ & ( \ROM1|memROM~55_combout\ & ( (!\ROM1|memROM~14_combout\ & 
-- \memoriaDados|ram~180_q\) ) ) ) # ( \memoriaDados|ram~196_q\ & ( !\ROM1|memROM~55_combout\ & ( (!\ROM1|memROM~14_combout\ & (\memoriaDados|ram~148_q\)) # (\ROM1|memROM~14_combout\ & ((\memoriaDados|ram~164_q\))) ) ) ) # ( !\memoriaDados|ram~196_q\ & ( 
-- !\ROM1|memROM~55_combout\ & ( (!\ROM1|memROM~14_combout\ & (\memoriaDados|ram~148_q\)) # (\ROM1|memROM~14_combout\ & ((\memoriaDados|ram~164_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~148_q\,
	datab => \memoriaDados|ALT_INV_ram~164_q\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \memoriaDados|ALT_INV_ram~180_q\,
	datae => \memoriaDados|ALT_INV_ram~196_q\,
	dataf => \ROM1|ALT_INV_memROM~55_combout\,
	combout => \memoriaDados|ram~633_combout\);

-- Location: FF_X34_Y6_N20
\memoriaDados|ram~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \memoriaDados|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~116_q\);

-- Location: LABCELL_X32_Y1_N33
\memoriaDados|ram~84feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~84feeder_combout\ = ( \CPU|REG1|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(5),
	combout => \memoriaDados|ram~84feeder_combout\);

-- Location: FF_X32_Y1_N34
\memoriaDados|ram~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~84feeder_combout\,
	ena => \memoriaDados|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~84_q\);

-- Location: LABCELL_X32_Y1_N3
\memoriaDados|ram~100feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~100feeder_combout\ = ( \CPU|REG1|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(5),
	combout => \memoriaDados|ram~100feeder_combout\);

-- Location: FF_X32_Y1_N4
\memoriaDados|ram~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~100feeder_combout\,
	ena => \memoriaDados|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~100_q\);

-- Location: FF_X34_Y6_N50
\memoriaDados|ram~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \memoriaDados|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~132_q\);

-- Location: MLABCELL_X34_Y6_N48
\memoriaDados|ram~634\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~634_combout\ = ( \memoriaDados|ram~132_q\ & ( \ROM1|memROM~55_combout\ & ( (\ROM1|memROM~14_combout\) # (\memoriaDados|ram~116_q\) ) ) ) # ( !\memoriaDados|ram~132_q\ & ( \ROM1|memROM~55_combout\ & ( (\memoriaDados|ram~116_q\ & 
-- !\ROM1|memROM~14_combout\) ) ) ) # ( \memoriaDados|ram~132_q\ & ( !\ROM1|memROM~55_combout\ & ( (!\ROM1|memROM~14_combout\ & (\memoriaDados|ram~84_q\)) # (\ROM1|memROM~14_combout\ & ((\memoriaDados|ram~100_q\))) ) ) ) # ( !\memoriaDados|ram~132_q\ & ( 
-- !\ROM1|memROM~55_combout\ & ( (!\ROM1|memROM~14_combout\ & (\memoriaDados|ram~84_q\)) # (\ROM1|memROM~14_combout\ & ((\memoriaDados|ram~100_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~116_q\,
	datab => \memoriaDados|ALT_INV_ram~84_q\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \memoriaDados|ALT_INV_ram~100_q\,
	datae => \memoriaDados|ALT_INV_ram~132_q\,
	dataf => \ROM1|ALT_INV_memROM~55_combout\,
	combout => \memoriaDados|ram~634_combout\);

-- Location: FF_X34_Y6_N7
\memoriaDados|ram~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \memoriaDados|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~68_q\);

-- Location: LABCELL_X31_Y6_N3
\memoriaDados|ram~36feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~36feeder_combout\ = ( \CPU|REG1|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(5),
	combout => \memoriaDados|ram~36feeder_combout\);

-- Location: FF_X31_Y6_N4
\memoriaDados|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~36feeder_combout\,
	ena => \memoriaDados|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~36_q\);

-- Location: LABCELL_X41_Y3_N33
\memoriaDados|ram~20feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~20feeder_combout\ = ( \CPU|REG1|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(5),
	combout => \memoriaDados|ram~20feeder_combout\);

-- Location: FF_X41_Y3_N35
\memoriaDados|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~20feeder_combout\,
	ena => \memoriaDados|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~20_q\);

-- Location: FF_X36_Y6_N38
\memoriaDados|ram~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \memoriaDados|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~52_q\);

-- Location: MLABCELL_X34_Y5_N12
\memoriaDados|ram~632\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~632_combout\ = ( \ROM1|memROM~14_combout\ & ( \ROM1|memROM~55_combout\ & ( \memoriaDados|ram~68_q\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( \ROM1|memROM~55_combout\ & ( \memoriaDados|ram~52_q\ ) ) ) # ( \ROM1|memROM~14_combout\ & ( 
-- !\ROM1|memROM~55_combout\ & ( \memoriaDados|ram~36_q\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( !\ROM1|memROM~55_combout\ & ( \memoriaDados|ram~20_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~68_q\,
	datab => \memoriaDados|ALT_INV_ram~36_q\,
	datac => \memoriaDados|ALT_INV_ram~20_q\,
	datad => \memoriaDados|ALT_INV_ram~52_q\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~55_combout\,
	combout => \memoriaDados|ram~632_combout\);

-- Location: FF_X37_Y3_N25
\memoriaDados|ram~244\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \memoriaDados|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~244_q\);

-- Location: FF_X31_Y4_N1
\memoriaDados|ram~212\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \memoriaDados|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~212_q\);

-- Location: LABCELL_X31_Y4_N30
\memoriaDados|ram~228feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~228feeder_combout\ = \CPU|REG1|DOUT\(5)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|REG1|ALT_INV_DOUT\(5),
	combout => \memoriaDados|ram~228feeder_combout\);

-- Location: FF_X31_Y4_N32
\memoriaDados|ram~228\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~228feeder_combout\,
	ena => \memoriaDados|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~228_q\);

-- Location: FF_X35_Y1_N23
\memoriaDados|ram~260\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \memoriaDados|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~260_q\);

-- Location: LABCELL_X35_Y1_N21
\memoriaDados|ram~635\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~635_combout\ = ( \memoriaDados|ram~260_q\ & ( \ROM1|memROM~55_combout\ & ( (\ROM1|memROM~14_combout\) # (\memoriaDados|ram~244_q\) ) ) ) # ( !\memoriaDados|ram~260_q\ & ( \ROM1|memROM~55_combout\ & ( (\memoriaDados|ram~244_q\ & 
-- !\ROM1|memROM~14_combout\) ) ) ) # ( \memoriaDados|ram~260_q\ & ( !\ROM1|memROM~55_combout\ & ( (!\ROM1|memROM~14_combout\ & (\memoriaDados|ram~212_q\)) # (\ROM1|memROM~14_combout\ & ((\memoriaDados|ram~228_q\))) ) ) ) # ( !\memoriaDados|ram~260_q\ & ( 
-- !\ROM1|memROM~55_combout\ & ( (!\ROM1|memROM~14_combout\ & (\memoriaDados|ram~212_q\)) # (\ROM1|memROM~14_combout\ & ((\memoriaDados|ram~228_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~244_q\,
	datab => \memoriaDados|ALT_INV_ram~212_q\,
	datac => \memoriaDados|ALT_INV_ram~228_q\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	datae => \memoriaDados|ALT_INV_ram~260_q\,
	dataf => \ROM1|ALT_INV_memROM~55_combout\,
	combout => \memoriaDados|ram~635_combout\);

-- Location: MLABCELL_X34_Y3_N36
\memoriaDados|ram~636\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~636_combout\ = ( \memoriaDados|ram~632_combout\ & ( \memoriaDados|ram~635_combout\ & ( (!\ROM1|memROM~24_combout\ & (((!\ROM1|memROM~19_combout\) # (\memoriaDados|ram~634_combout\)))) # (\ROM1|memROM~24_combout\ & 
-- (((\ROM1|memROM~19_combout\)) # (\memoriaDados|ram~633_combout\))) ) ) ) # ( !\memoriaDados|ram~632_combout\ & ( \memoriaDados|ram~635_combout\ & ( (!\ROM1|memROM~24_combout\ & (((\memoriaDados|ram~634_combout\ & \ROM1|memROM~19_combout\)))) # 
-- (\ROM1|memROM~24_combout\ & (((\ROM1|memROM~19_combout\)) # (\memoriaDados|ram~633_combout\))) ) ) ) # ( \memoriaDados|ram~632_combout\ & ( !\memoriaDados|ram~635_combout\ & ( (!\ROM1|memROM~24_combout\ & (((!\ROM1|memROM~19_combout\) # 
-- (\memoriaDados|ram~634_combout\)))) # (\ROM1|memROM~24_combout\ & (\memoriaDados|ram~633_combout\ & ((!\ROM1|memROM~19_combout\)))) ) ) ) # ( !\memoriaDados|ram~632_combout\ & ( !\memoriaDados|ram~635_combout\ & ( (!\ROM1|memROM~24_combout\ & 
-- (((\memoriaDados|ram~634_combout\ & \ROM1|memROM~19_combout\)))) # (\ROM1|memROM~24_combout\ & (\memoriaDados|ram~633_combout\ & ((!\ROM1|memROM~19_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001010101110110000101000010001010111111011101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~24_combout\,
	datab => \memoriaDados|ALT_INV_ram~633_combout\,
	datac => \memoriaDados|ALT_INV_ram~634_combout\,
	datad => \ROM1|ALT_INV_memROM~19_combout\,
	datae => \memoriaDados|ALT_INV_ram~632_combout\,
	dataf => \memoriaDados|ALT_INV_ram~635_combout\,
	combout => \memoriaDados|ram~636_combout\);

-- Location: FF_X37_Y6_N5
\memoriaDados|ram~404\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \memoriaDados|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~404_q\);

-- Location: LABCELL_X29_Y3_N3
\memoriaDados|ram~276feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~276feeder_combout\ = ( \CPU|REG1|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(5),
	combout => \memoriaDados|ram~276feeder_combout\);

-- Location: FF_X29_Y3_N4
\memoriaDados|ram~276\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~276feeder_combout\,
	ena => \memoriaDados|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~276_q\);

-- Location: LABCELL_X35_Y7_N12
\memoriaDados|ram~308feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~308feeder_combout\ = ( \CPU|REG1|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(5),
	combout => \memoriaDados|ram~308feeder_combout\);

-- Location: FF_X35_Y7_N13
\memoriaDados|ram~308\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~308feeder_combout\,
	ena => \memoriaDados|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~308_q\);

-- Location: FF_X36_Y4_N1
\memoriaDados|ram~436\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \memoriaDados|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~436_q\);

-- Location: LABCELL_X35_Y3_N36
\memoriaDados|ram~637\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~637_combout\ = ( \memoriaDados|ram~436_q\ & ( \ROM1|memROM~55_combout\ & ( (\ROM1|memROM~24_combout\) # (\memoriaDados|ram~308_q\) ) ) ) # ( !\memoriaDados|ram~436_q\ & ( \ROM1|memROM~55_combout\ & ( (\memoriaDados|ram~308_q\ & 
-- !\ROM1|memROM~24_combout\) ) ) ) # ( \memoriaDados|ram~436_q\ & ( !\ROM1|memROM~55_combout\ & ( (!\ROM1|memROM~24_combout\ & ((\memoriaDados|ram~276_q\))) # (\ROM1|memROM~24_combout\ & (\memoriaDados|ram~404_q\)) ) ) ) # ( !\memoriaDados|ram~436_q\ & ( 
-- !\ROM1|memROM~55_combout\ & ( (!\ROM1|memROM~24_combout\ & ((\memoriaDados|ram~276_q\))) # (\ROM1|memROM~24_combout\ & (\memoriaDados|ram~404_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~404_q\,
	datab => \memoriaDados|ALT_INV_ram~276_q\,
	datac => \memoriaDados|ALT_INV_ram~308_q\,
	datad => \ROM1|ALT_INV_memROM~24_combout\,
	datae => \memoriaDados|ALT_INV_ram~436_q\,
	dataf => \ROM1|ALT_INV_memROM~55_combout\,
	combout => \memoriaDados|ram~637_combout\);

-- Location: FF_X34_Y2_N26
\memoriaDados|ram~356\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \memoriaDados|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~356_q\);

-- Location: LABCELL_X35_Y3_N33
\memoriaDados|ram~388feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~388feeder_combout\ = ( \CPU|REG1|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(5),
	combout => \memoriaDados|ram~388feeder_combout\);

-- Location: FF_X35_Y3_N34
\memoriaDados|ram~388\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~388feeder_combout\,
	ena => \memoriaDados|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~388_q\);

-- Location: LABCELL_X39_Y6_N57
\memoriaDados|ram~484feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~484feeder_combout\ = ( \CPU|REG1|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(5),
	combout => \memoriaDados|ram~484feeder_combout\);

-- Location: FF_X39_Y6_N59
\memoriaDados|ram~484\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~484feeder_combout\,
	ena => \memoriaDados|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~484_q\);

-- Location: FF_X34_Y2_N38
\memoriaDados|ram~516\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \memoriaDados|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~516_q\);

-- Location: MLABCELL_X34_Y2_N36
\memoriaDados|ram~640\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~640_combout\ = ( \memoriaDados|ram~516_q\ & ( \ROM1|memROM~55_combout\ & ( (\memoriaDados|ram~388_q\) # (\ROM1|memROM~24_combout\) ) ) ) # ( !\memoriaDados|ram~516_q\ & ( \ROM1|memROM~55_combout\ & ( (!\ROM1|memROM~24_combout\ & 
-- \memoriaDados|ram~388_q\) ) ) ) # ( \memoriaDados|ram~516_q\ & ( !\ROM1|memROM~55_combout\ & ( (!\ROM1|memROM~24_combout\ & (\memoriaDados|ram~356_q\)) # (\ROM1|memROM~24_combout\ & ((\memoriaDados|ram~484_q\))) ) ) ) # ( !\memoriaDados|ram~516_q\ & ( 
-- !\ROM1|memROM~55_combout\ & ( (!\ROM1|memROM~24_combout\ & (\memoriaDados|ram~356_q\)) # (\ROM1|memROM~24_combout\ & ((\memoriaDados|ram~484_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011100001100000011000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~356_q\,
	datab => \ROM1|ALT_INV_memROM~24_combout\,
	datac => \memoriaDados|ALT_INV_ram~388_q\,
	datad => \memoriaDados|ALT_INV_ram~484_q\,
	datae => \memoriaDados|ALT_INV_ram~516_q\,
	dataf => \ROM1|ALT_INV_memROM~55_combout\,
	combout => \memoriaDados|ram~640_combout\);

-- Location: LABCELL_X39_Y5_N12
\memoriaDados|ram~340feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~340feeder_combout\ = ( \CPU|REG1|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(5),
	combout => \memoriaDados|ram~340feeder_combout\);

-- Location: FF_X39_Y5_N13
\memoriaDados|ram~340\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~340feeder_combout\,
	ena => \memoriaDados|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~340_q\);

-- Location: FF_X34_Y5_N16
\memoriaDados|ram~372\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \memoriaDados|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~372_q\);

-- Location: FF_X36_Y4_N26
\memoriaDados|ram~468\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \memoriaDados|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~468_q\);

-- Location: FF_X36_Y4_N38
\memoriaDados|ram~500\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \memoriaDados|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~500_q\);

-- Location: LABCELL_X36_Y4_N36
\memoriaDados|ram~639\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~639_combout\ = ( \memoriaDados|ram~500_q\ & ( \ROM1|memROM~24_combout\ & ( (\ROM1|memROM~55_combout\) # (\memoriaDados|ram~468_q\) ) ) ) # ( !\memoriaDados|ram~500_q\ & ( \ROM1|memROM~24_combout\ & ( (\memoriaDados|ram~468_q\ & 
-- !\ROM1|memROM~55_combout\) ) ) ) # ( \memoriaDados|ram~500_q\ & ( !\ROM1|memROM~24_combout\ & ( (!\ROM1|memROM~55_combout\ & (\memoriaDados|ram~340_q\)) # (\ROM1|memROM~55_combout\ & ((\memoriaDados|ram~372_q\))) ) ) ) # ( !\memoriaDados|ram~500_q\ & ( 
-- !\ROM1|memROM~24_combout\ & ( (!\ROM1|memROM~55_combout\ & (\memoriaDados|ram~340_q\)) # (\ROM1|memROM~55_combout\ & ((\memoriaDados|ram~372_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~340_q\,
	datab => \memoriaDados|ALT_INV_ram~372_q\,
	datac => \memoriaDados|ALT_INV_ram~468_q\,
	datad => \ROM1|ALT_INV_memROM~55_combout\,
	datae => \memoriaDados|ALT_INV_ram~500_q\,
	dataf => \ROM1|ALT_INV_memROM~24_combout\,
	combout => \memoriaDados|ram~639_combout\);

-- Location: FF_X40_Y6_N22
\memoriaDados|ram~420\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \memoriaDados|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~420_q\);

-- Location: FF_X36_Y7_N26
\memoriaDados|ram~324\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \memoriaDados|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~324_q\);

-- Location: LABCELL_X32_Y5_N15
\memoriaDados|ram~292feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~292feeder_combout\ = ( \CPU|REG1|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(5),
	combout => \memoriaDados|ram~292feeder_combout\);

-- Location: FF_X32_Y5_N16
\memoriaDados|ram~292\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \memoriaDados|ram~292feeder_combout\,
	ena => \memoriaDados|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~292_q\);

-- Location: FF_X34_Y7_N34
\memoriaDados|ram~452\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \memoriaDados|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~452_q\);

-- Location: LABCELL_X35_Y7_N0
\memoriaDados|ram~638\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~638_combout\ = ( \ROM1|memROM~24_combout\ & ( \ROM1|memROM~55_combout\ & ( \memoriaDados|ram~452_q\ ) ) ) # ( !\ROM1|memROM~24_combout\ & ( \ROM1|memROM~55_combout\ & ( \memoriaDados|ram~324_q\ ) ) ) # ( \ROM1|memROM~24_combout\ & ( 
-- !\ROM1|memROM~55_combout\ & ( \memoriaDados|ram~420_q\ ) ) ) # ( !\ROM1|memROM~24_combout\ & ( !\ROM1|memROM~55_combout\ & ( \memoriaDados|ram~292_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~420_q\,
	datab => \memoriaDados|ALT_INV_ram~324_q\,
	datac => \memoriaDados|ALT_INV_ram~292_q\,
	datad => \memoriaDados|ALT_INV_ram~452_q\,
	datae => \ROM1|ALT_INV_memROM~24_combout\,
	dataf => \ROM1|ALT_INV_memROM~55_combout\,
	combout => \memoriaDados|ram~638_combout\);

-- Location: MLABCELL_X34_Y3_N30
\memoriaDados|ram~641\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~641_combout\ = ( \memoriaDados|ram~639_combout\ & ( \memoriaDados|ram~638_combout\ & ( (!\ROM1|memROM~14_combout\ & (((\ROM1|memROM~19_combout\)) # (\memoriaDados|ram~637_combout\))) # (\ROM1|memROM~14_combout\ & 
-- (((!\ROM1|memROM~19_combout\) # (\memoriaDados|ram~640_combout\)))) ) ) ) # ( !\memoriaDados|ram~639_combout\ & ( \memoriaDados|ram~638_combout\ & ( (!\ROM1|memROM~14_combout\ & (\memoriaDados|ram~637_combout\ & (!\ROM1|memROM~19_combout\))) # 
-- (\ROM1|memROM~14_combout\ & (((!\ROM1|memROM~19_combout\) # (\memoriaDados|ram~640_combout\)))) ) ) ) # ( \memoriaDados|ram~639_combout\ & ( !\memoriaDados|ram~638_combout\ & ( (!\ROM1|memROM~14_combout\ & (((\ROM1|memROM~19_combout\)) # 
-- (\memoriaDados|ram~637_combout\))) # (\ROM1|memROM~14_combout\ & (((\ROM1|memROM~19_combout\ & \memoriaDados|ram~640_combout\)))) ) ) ) # ( !\memoriaDados|ram~639_combout\ & ( !\memoriaDados|ram~638_combout\ & ( (!\ROM1|memROM~14_combout\ & 
-- (\memoriaDados|ram~637_combout\ & (!\ROM1|memROM~19_combout\))) # (\ROM1|memROM~14_combout\ & (((\ROM1|memROM~19_combout\ & \memoriaDados|ram~640_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100101001010100010111101110000011101010111101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~14_combout\,
	datab => \memoriaDados|ALT_INV_ram~637_combout\,
	datac => \ROM1|ALT_INV_memROM~19_combout\,
	datad => \memoriaDados|ALT_INV_ram~640_combout\,
	datae => \memoriaDados|ALT_INV_ram~639_combout\,
	dataf => \memoriaDados|ALT_INV_ram~638_combout\,
	combout => \memoriaDados|ram~641_combout\);

-- Location: MLABCELL_X34_Y3_N18
\memoriaDados|ram~652\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~652_combout\ = ( \memoriaDados|ram~636_combout\ & ( \memoriaDados|ram~641_combout\ & ( (!\ROM1|memROM~13_combout\) # ((!\ROM1|memROM~12_combout\ & ((\memoriaDados|ram~646_combout\))) # (\ROM1|memROM~12_combout\ & 
-- (\memoriaDados|ram~651_combout\))) ) ) ) # ( !\memoriaDados|ram~636_combout\ & ( \memoriaDados|ram~641_combout\ & ( (!\ROM1|memROM~13_combout\ & (((\ROM1|memROM~12_combout\)))) # (\ROM1|memROM~13_combout\ & ((!\ROM1|memROM~12_combout\ & 
-- ((\memoriaDados|ram~646_combout\))) # (\ROM1|memROM~12_combout\ & (\memoriaDados|ram~651_combout\)))) ) ) ) # ( \memoriaDados|ram~636_combout\ & ( !\memoriaDados|ram~641_combout\ & ( (!\ROM1|memROM~13_combout\ & (((!\ROM1|memROM~12_combout\)))) # 
-- (\ROM1|memROM~13_combout\ & ((!\ROM1|memROM~12_combout\ & ((\memoriaDados|ram~646_combout\))) # (\ROM1|memROM~12_combout\ & (\memoriaDados|ram~651_combout\)))) ) ) ) # ( !\memoriaDados|ram~636_combout\ & ( !\memoriaDados|ram~641_combout\ & ( 
-- (\ROM1|memROM~13_combout\ & ((!\ROM1|memROM~12_combout\ & ((\memoriaDados|ram~646_combout\))) # (\ROM1|memROM~12_combout\ & (\memoriaDados|ram~651_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010001110011110001000100000011110111011100111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~651_combout\,
	datab => \ROM1|ALT_INV_memROM~13_combout\,
	datac => \memoriaDados|ALT_INV_ram~646_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \memoriaDados|ALT_INV_ram~636_combout\,
	dataf => \memoriaDados|ALT_INV_ram~641_combout\,
	combout => \memoriaDados|ram~652_combout\);

-- Location: MLABCELL_X34_Y3_N15
\CPU|MUX1|saida_MUX[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[5]~4_combout\ = ( \AND_ENABLE_BUFFER_8BITS~2_combout\ & ( \memoriaDados|ram~652_combout\ & ( (!\CPU|Decoder|Equal1~0_combout\ & ((\SW[5]~input_o\))) # (\CPU|Decoder|Equal1~0_combout\ & (\ROM1|memROM~12_combout\)) ) ) ) # ( 
-- !\AND_ENABLE_BUFFER_8BITS~2_combout\ & ( \memoriaDados|ram~652_combout\ & ( (!\CPU|Decoder|Equal1~0_combout\) # (\ROM1|memROM~12_combout\) ) ) ) # ( \AND_ENABLE_BUFFER_8BITS~2_combout\ & ( !\memoriaDados|ram~652_combout\ & ( 
-- (!\CPU|Decoder|Equal1~0_combout\ & ((\SW[5]~input_o\))) # (\CPU|Decoder|Equal1~0_combout\ & (\ROM1|memROM~12_combout\)) ) ) ) # ( !\AND_ENABLE_BUFFER_8BITS~2_combout\ & ( !\memoriaDados|ram~652_combout\ & ( (\CPU|Decoder|Equal1~0_combout\ & 
-- \ROM1|memROM~12_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000110110001101110111011101110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_Equal1~0_combout\,
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	datac => \ALT_INV_SW[5]~input_o\,
	datae => \ALT_INV_AND_ENABLE_BUFFER_8BITS~2_combout\,
	dataf => \memoriaDados|ALT_INV_ram~652_combout\,
	combout => \CPU|MUX1|saida_MUX[5]~4_combout\);

-- Location: LABCELL_X35_Y2_N18
\CPU|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~25_sumout\ = SUM(( \CPU|REG1|DOUT\(6) ) + ( (!\CPU|Decoder|Equal1~0_combout\ & (((\CPU|MUX1|saida_MUX[6]~5_combout\)))) # (\CPU|Decoder|Equal1~0_combout\ & (\ROM1|memROM~28_combout\ & (!\CPU|PC|DOUT[8]~DUPLICATE_q\))) ) + ( 
-- \CPU|ULA1|Add0~22\ ))
-- \CPU|ULA1|Add0~26\ = CARRY(( \CPU|REG1|DOUT\(6) ) + ( (!\CPU|Decoder|Equal1~0_combout\ & (((\CPU|MUX1|saida_MUX[6]~5_combout\)))) # (\CPU|Decoder|Equal1~0_combout\ & (\ROM1|memROM~28_combout\ & (!\CPU|PC|DOUT[8]~DUPLICATE_q\))) ) + ( \CPU|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011110100010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_Equal1~0_combout\,
	datab => \ROM1|ALT_INV_memROM~28_combout\,
	datac => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datad => \CPU|REG1|ALT_INV_DOUT\(6),
	dataf => \CPU|MUX1|ALT_INV_saida_MUX[6]~5_combout\,
	cin => \CPU|ULA1|Add0~22\,
	sumout => \CPU|ULA1|Add0~25_sumout\,
	cout => \CPU|ULA1|Add0~26\);

-- Location: LABCELL_X35_Y2_N51
\CPU|ULA1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~25_sumout\ = SUM(( (!\CPU|Decoder|Equal1~0_combout\ & (((!\CPU|MUX1|saida_MUX[6]~5_combout\)))) # (\CPU|Decoder|Equal1~0_combout\ & (((!\ROM1|memROM~28_combout\)) # (\CPU|PC|DOUT[8]~DUPLICATE_q\))) ) + ( \CPU|REG1|DOUT\(6) ) + ( 
-- \CPU|ULA1|Add1~22\ ))
-- \CPU|ULA1|Add1~26\ = CARRY(( (!\CPU|Decoder|Equal1~0_combout\ & (((!\CPU|MUX1|saida_MUX[6]~5_combout\)))) # (\CPU|Decoder|Equal1~0_combout\ & (((!\ROM1|memROM~28_combout\)) # (\CPU|PC|DOUT[8]~DUPLICATE_q\))) ) + ( \CPU|REG1|DOUT\(6) ) + ( 
-- \CPU|ULA1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111110100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datab => \ROM1|ALT_INV_memROM~28_combout\,
	datac => \CPU|Decoder|ALT_INV_Equal1~0_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[6]~5_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(6),
	cin => \CPU|ULA1|Add1~22\,
	sumout => \CPU|ULA1|Add1~25_sumout\,
	cout => \CPU|ULA1|Add1~26\);

-- Location: MLABCELL_X34_Y2_N33
\CPU|ULA1|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[6]~6_combout\ = ( \CPU|Decoder|Equal1~0_combout\ & ( \CPU|ULA1|Add1~25_sumout\ & ( (!\CPU|Decoder|Operacao~0_combout\) # (\ROM1|memROM~5_combout\) ) ) ) # ( !\CPU|Decoder|Equal1~0_combout\ & ( \CPU|ULA1|Add1~25_sumout\ & ( 
-- (!\CPU|Decoder|Operacao~0_combout\) # (\CPU|MUX1|saida_MUX[6]~5_combout\) ) ) ) # ( \CPU|Decoder|Equal1~0_combout\ & ( !\CPU|ULA1|Add1~25_sumout\ & ( (\CPU|Decoder|Operacao~0_combout\ & \ROM1|memROM~5_combout\) ) ) ) # ( !\CPU|Decoder|Equal1~0_combout\ & 
-- ( !\CPU|ULA1|Add1~25_sumout\ & ( (\CPU|Decoder|Operacao~0_combout\ & \CPU|MUX1|saida_MUX[6]~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000110000001111001100111111111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|Decoder|ALT_INV_Operacao~0_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[6]~5_combout\,
	datae => \CPU|Decoder|ALT_INV_Equal1~0_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~25_sumout\,
	combout => \CPU|ULA1|saida[6]~6_combout\);

-- Location: FF_X35_Y2_N20
\CPU|REG1|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~25_sumout\,
	asdata => \CPU|ULA1|saida[6]~6_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|Decoder|OUTPUT\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(6));

-- Location: LABCELL_X35_Y2_N21
\CPU|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~29_sumout\ = SUM(( \CPU|REG1|DOUT\(7) ) + ( (!\CPU|Decoder|Equal1~0_combout\ & ((\CPU|MUX1|saida_MUX[7]~6_combout\))) # (\CPU|Decoder|Equal1~0_combout\ & (\ROM1|memROM~10_combout\)) ) + ( \CPU|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_Equal1~0_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \CPU|REG1|ALT_INV_DOUT\(7),
	dataf => \CPU|MUX1|ALT_INV_saida_MUX[7]~6_combout\,
	cin => \CPU|ULA1|Add0~26\,
	sumout => \CPU|ULA1|Add0~29_sumout\);

-- Location: MLABCELL_X34_Y2_N27
\CPU|ULA1|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[7]~7_combout\ = ( \CPU|ULA1|Add1~29_sumout\ & ( \CPU|MUX1|saida_MUX[7]~6_combout\ & ( ((!\CPU|Decoder|Operacao~0_combout\) # (!\CPU|Decoder|Equal1~0_combout\)) # (\ROM1|memROM~10_combout\) ) ) ) # ( !\CPU|ULA1|Add1~29_sumout\ & ( 
-- \CPU|MUX1|saida_MUX[7]~6_combout\ & ( (\CPU|Decoder|Operacao~0_combout\ & ((!\CPU|Decoder|Equal1~0_combout\) # (\ROM1|memROM~10_combout\))) ) ) ) # ( \CPU|ULA1|Add1~29_sumout\ & ( !\CPU|MUX1|saida_MUX[7]~6_combout\ & ( (!\CPU|Decoder|Operacao~0_combout\) 
-- # ((\ROM1|memROM~10_combout\ & \CPU|Decoder|Equal1~0_combout\)) ) ) ) # ( !\CPU|ULA1|Add1~29_sumout\ & ( !\CPU|MUX1|saida_MUX[7]~6_combout\ & ( (\ROM1|memROM~10_combout\ & (\CPU|Decoder|Operacao~0_combout\ & \CPU|Decoder|Equal1~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001110011001101110100110011000100011111111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~10_combout\,
	datab => \CPU|Decoder|ALT_INV_Operacao~0_combout\,
	datad => \CPU|Decoder|ALT_INV_Equal1~0_combout\,
	datae => \CPU|ULA1|ALT_INV_Add1~29_sumout\,
	dataf => \CPU|MUX1|ALT_INV_saida_MUX[7]~6_combout\,
	combout => \CPU|ULA1|saida[7]~7_combout\);

-- Location: FF_X35_Y2_N23
\CPU|REG1|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~29_sumout\,
	asdata => \CPU|ULA1|saida[7]~7_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|Decoder|OUTPUT\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(7));

-- Location: LABCELL_X35_Y2_N54
\CPU|ULA1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~29_sumout\ = SUM(( (!\CPU|Decoder|Equal1~0_combout\ & ((!\CPU|MUX1|saida_MUX[7]~6_combout\))) # (\CPU|Decoder|Equal1~0_combout\ & (!\ROM1|memROM~10_combout\)) ) + ( \CPU|REG1|DOUT\(7) ) + ( \CPU|ULA1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001111110000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REG1|ALT_INV_DOUT\(7),
	datab => \CPU|Decoder|ALT_INV_Equal1~0_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[7]~6_combout\,
	cin => \CPU|ULA1|Add1~26\,
	sumout => \CPU|ULA1|Add1~29_sumout\);

-- Location: LABCELL_X36_Y2_N48
\CPU|FLAG_IGUAL|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLAG_IGUAL|DOUT~1_combout\ = ( \CPU|ULA1|Add1~13_sumout\ & ( \CPU|ULA1|Add1~9_sumout\ & ( (!\CPU|Decoder|Equal1~1_combout\ & \CPU|FLAG_IGUAL|DOUT~q\) ) ) ) # ( !\CPU|ULA1|Add1~13_sumout\ & ( \CPU|ULA1|Add1~9_sumout\ & ( 
-- (!\CPU|Decoder|Equal1~1_combout\ & \CPU|FLAG_IGUAL|DOUT~q\) ) ) ) # ( \CPU|ULA1|Add1~13_sumout\ & ( !\CPU|ULA1|Add1~9_sumout\ & ( (!\CPU|Decoder|Equal1~1_combout\ & \CPU|FLAG_IGUAL|DOUT~q\) ) ) ) # ( !\CPU|ULA1|Add1~13_sumout\ & ( 
-- !\CPU|ULA1|Add1~9_sumout\ & ( (!\CPU|Decoder|Equal1~1_combout\ & (\CPU|FLAG_IGUAL|DOUT~q\)) # (\CPU|Decoder|Equal1~1_combout\ & (((!\CPU|ULA1|Add1~5_sumout\ & !\CPU|ULA1|Add1~1_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_Equal1~1_combout\,
	datab => \CPU|FLAG_IGUAL|ALT_INV_DOUT~q\,
	datac => \CPU|ULA1|ALT_INV_Add1~5_sumout\,
	datad => \CPU|ULA1|ALT_INV_Add1~1_sumout\,
	datae => \CPU|ULA1|ALT_INV_Add1~13_sumout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~9_sumout\,
	combout => \CPU|FLAG_IGUAL|DOUT~1_combout\);

-- Location: LABCELL_X36_Y2_N42
\CPU|FLAG_IGUAL|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLAG_IGUAL|DOUT~0_combout\ = ( \CPU|ULA1|Add1~17_sumout\ & ( \CPU|FLAG_IGUAL|DOUT~1_combout\ & ( !\CPU|Decoder|Equal1~1_combout\ ) ) ) # ( !\CPU|ULA1|Add1~17_sumout\ & ( \CPU|FLAG_IGUAL|DOUT~1_combout\ & ( (!\CPU|Decoder|Equal1~1_combout\) # 
-- ((!\CPU|ULA1|Add1~29_sumout\ & (!\CPU|ULA1|Add1~25_sumout\ & !\CPU|ULA1|Add1~21_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011101100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Add1~29_sumout\,
	datab => \CPU|Decoder|ALT_INV_Equal1~1_combout\,
	datac => \CPU|ULA1|ALT_INV_Add1~25_sumout\,
	datad => \CPU|ULA1|ALT_INV_Add1~21_sumout\,
	datae => \CPU|ULA1|ALT_INV_Add1~17_sumout\,
	dataf => \CPU|FLAG_IGUAL|ALT_INV_DOUT~1_combout\,
	combout => \CPU|FLAG_IGUAL|DOUT~0_combout\);

-- Location: FF_X36_Y2_N44
\CPU|FLAG_IGUAL|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|FLAG_IGUAL|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FLAG_IGUAL|DOUT~q\);

-- Location: LABCELL_X36_Y6_N24
\CPU|MUX4x2_PC|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX4x2_PC|Equal2~0_combout\ = ( \ROM1|memROM~18_combout\ & ( (!\ROM1|memROM~17_combout\ & (!\ROM1|memROM~16_combout\ $ (!\ROM1|memROM~15_combout\))) ) ) # ( !\ROM1|memROM~18_combout\ & ( (\ROM1|memROM~17_combout\ & (\ROM1|memROM~15_combout\ & 
-- ((!\ROM1|memROM~16_combout\) # (\CPU|FLAG_IGUAL|DOUT~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000101000001000000010100101000001010000010100000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~17_combout\,
	datab => \ROM1|ALT_INV_memROM~16_combout\,
	datac => \ROM1|ALT_INV_memROM~15_combout\,
	datad => \CPU|FLAG_IGUAL|ALT_INV_DOUT~q\,
	dataf => \ROM1|ALT_INV_memROM~18_combout\,
	combout => \CPU|MUX4x2_PC|Equal2~0_combout\);

-- Location: MLABCELL_X37_Y6_N36
\CPU|somaUm|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|somaUm|Add0~9_sumout\ = SUM(( \CPU|PC|DOUT[2]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|somaUm|Add0~6\ ))
-- \CPU|somaUm|Add0~10\ = CARRY(( \CPU|PC|DOUT[2]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|somaUm|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	cin => \CPU|somaUm|Add0~6\,
	sumout => \CPU|somaUm|Add0~9_sumout\,
	cout => \CPU|somaUm|Add0~10\);

-- Location: FF_X37_Y6_N37
\CPU|END_RET|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|somaUm|Add0~9_sumout\,
	ena => \CPU|Decoder|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RET|DOUT\(2));

-- Location: LABCELL_X36_Y5_N45
\CPU|MUX4x2_PC|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX4x2_PC|saida_MUX[2]~2_combout\ = ( \ROM1|memROM~55_combout\ & ( (!\CPU|MUX4x2_PC|Equal2~0_combout\ & (((\CPU|somaUm|Add0~9_sumout\)))) # (\CPU|MUX4x2_PC|Equal2~0_combout\ & (((\CPU|END_RET|DOUT\(2))) # (\CPU|MUX4x2_PC|Equal1~0_combout\))) ) ) # ( 
-- !\ROM1|memROM~55_combout\ & ( (!\CPU|MUX4x2_PC|Equal2~0_combout\ & (((\CPU|somaUm|Add0~9_sumout\)))) # (\CPU|MUX4x2_PC|Equal2~0_combout\ & (!\CPU|MUX4x2_PC|Equal1~0_combout\ & (\CPU|END_RET|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011001110000000101100111000010011110111110001001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX4x2_PC|ALT_INV_Equal1~0_combout\,
	datab => \CPU|MUX4x2_PC|ALT_INV_Equal2~0_combout\,
	datac => \CPU|END_RET|ALT_INV_DOUT\(2),
	datad => \CPU|somaUm|ALT_INV_Add0~9_sumout\,
	dataf => \ROM1|ALT_INV_memROM~55_combout\,
	combout => \CPU|MUX4x2_PC|saida_MUX[2]~2_combout\);

-- Location: FF_X36_Y5_N47
\CPU|PC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX4x2_PC|saida_MUX[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[2]~DUPLICATE_q\);

-- Location: MLABCELL_X37_Y6_N39
\CPU|somaUm|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|somaUm|Add0~13_sumout\ = SUM(( \CPU|PC|DOUT[3]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|somaUm|Add0~10\ ))
-- \CPU|somaUm|Add0~14\ = CARRY(( \CPU|PC|DOUT[3]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|somaUm|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	cin => \CPU|somaUm|Add0~10\,
	sumout => \CPU|somaUm|Add0~13_sumout\,
	cout => \CPU|somaUm|Add0~14\);

-- Location: FF_X37_Y6_N40
\CPU|END_RET|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|somaUm|Add0~13_sumout\,
	ena => \CPU|Decoder|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RET|DOUT\(3));

-- Location: MLABCELL_X34_Y6_N27
\CPU|MUX4x2_PC|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX4x2_PC|saida_MUX[3]~3_combout\ = ( \CPU|MUX4x2_PC|Equal2~0_combout\ & ( \ROM1|memROM~19_combout\ & ( (\CPU|MUX4x2_PC|Equal1~0_combout\) # (\CPU|END_RET|DOUT\(3)) ) ) ) # ( !\CPU|MUX4x2_PC|Equal2~0_combout\ & ( \ROM1|memROM~19_combout\ & ( 
-- \CPU|somaUm|Add0~13_sumout\ ) ) ) # ( \CPU|MUX4x2_PC|Equal2~0_combout\ & ( !\ROM1|memROM~19_combout\ & ( (\CPU|END_RET|DOUT\(3) & !\CPU|MUX4x2_PC|Equal1~0_combout\) ) ) ) # ( !\CPU|MUX4x2_PC|Equal2~0_combout\ & ( !\ROM1|memROM~19_combout\ & ( 
-- \CPU|somaUm|Add0~13_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010001000100010000001111000011110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|END_RET|ALT_INV_DOUT\(3),
	datab => \CPU|MUX4x2_PC|ALT_INV_Equal1~0_combout\,
	datac => \CPU|somaUm|ALT_INV_Add0~13_sumout\,
	datae => \CPU|MUX4x2_PC|ALT_INV_Equal2~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \CPU|MUX4x2_PC|saida_MUX[3]~3_combout\);

-- Location: FF_X36_Y5_N59
\CPU|PC|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|MUX4x2_PC|saida_MUX[3]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[3]~DUPLICATE_q\);

-- Location: MLABCELL_X37_Y6_N42
\CPU|somaUm|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|somaUm|Add0~17_sumout\ = SUM(( \CPU|PC|DOUT\(4) ) + ( GND ) + ( \CPU|somaUm|Add0~14\ ))
-- \CPU|somaUm|Add0~18\ = CARRY(( \CPU|PC|DOUT\(4) ) + ( GND ) + ( \CPU|somaUm|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(4),
	cin => \CPU|somaUm|Add0~14\,
	sumout => \CPU|somaUm|Add0~17_sumout\,
	cout => \CPU|somaUm|Add0~18\);

-- Location: FF_X37_Y6_N43
\CPU|END_RET|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|somaUm|Add0~17_sumout\,
	ena => \CPU|Decoder|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RET|DOUT\(4));

-- Location: LABCELL_X35_Y6_N18
\CPU|MUX4x2_PC|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX4x2_PC|saida_MUX[4]~4_combout\ = ( \ROM1|memROM~24_combout\ & ( \CPU|MUX4x2_PC|Equal2~0_combout\ & ( (\CPU|END_RET|DOUT\(4)) # (\CPU|MUX4x2_PC|Equal1~0_combout\) ) ) ) # ( !\ROM1|memROM~24_combout\ & ( \CPU|MUX4x2_PC|Equal2~0_combout\ & ( 
-- (!\CPU|MUX4x2_PC|Equal1~0_combout\ & \CPU|END_RET|DOUT\(4)) ) ) ) # ( \ROM1|memROM~24_combout\ & ( !\CPU|MUX4x2_PC|Equal2~0_combout\ & ( \CPU|somaUm|Add0~17_sumout\ ) ) ) # ( !\ROM1|memROM~24_combout\ & ( !\CPU|MUX4x2_PC|Equal2~0_combout\ & ( 
-- \CPU|somaUm|Add0~17_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100100010001000100111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX4x2_PC|ALT_INV_Equal1~0_combout\,
	datab => \CPU|END_RET|ALT_INV_DOUT\(4),
	datac => \CPU|somaUm|ALT_INV_Add0~17_sumout\,
	datae => \ROM1|ALT_INV_memROM~24_combout\,
	dataf => \CPU|MUX4x2_PC|ALT_INV_Equal2~0_combout\,
	combout => \CPU|MUX4x2_PC|saida_MUX[4]~4_combout\);

-- Location: FF_X37_Y5_N8
\CPU|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|MUX4x2_PC|saida_MUX[4]~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(4));

-- Location: FF_X37_Y6_N46
\CPU|END_RET|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|somaUm|Add0~21_sumout\,
	ena => \CPU|Decoder|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RET|DOUT\(5));

-- Location: MLABCELL_X37_Y5_N36
\CPU|MUX4x2_PC|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX4x2_PC|saida_MUX[5]~5_combout\ = ( \CPU|somaUm|Add0~21_sumout\ & ( (!\CPU|MUX4x2_PC|Equal2~0_combout\) # ((!\CPU|MUX4x2_PC|Equal1~0_combout\ & (\CPU|END_RET|DOUT\(5))) # (\CPU|MUX4x2_PC|Equal1~0_combout\ & ((\ROM1|memROM~12_combout\)))) ) ) # ( 
-- !\CPU|somaUm|Add0~21_sumout\ & ( (\CPU|MUX4x2_PC|Equal2~0_combout\ & ((!\CPU|MUX4x2_PC|Equal1~0_combout\ & (\CPU|END_RET|DOUT\(5))) # (\CPU|MUX4x2_PC|Equal1~0_combout\ & ((\ROM1|memROM~12_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011000001010000001111110101111100111111010111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|END_RET|ALT_INV_DOUT\(5),
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	datac => \CPU|MUX4x2_PC|ALT_INV_Equal2~0_combout\,
	datad => \CPU|MUX4x2_PC|ALT_INV_Equal1~0_combout\,
	dataf => \CPU|somaUm|ALT_INV_Add0~21_sumout\,
	combout => \CPU|MUX4x2_PC|saida_MUX[5]~5_combout\);

-- Location: FF_X36_Y5_N2
\CPU|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|MUX4x2_PC|saida_MUX[5]~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(5));

-- Location: MLABCELL_X37_Y7_N27
\ROM1|memROM~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~43_combout\ = ( \CPU|PC|DOUT\(0) & ( \CPU|PC|DOUT\(6) & ( \CPU|PC|DOUT[2]~DUPLICATE_q\ ) ) ) # ( !\CPU|PC|DOUT\(0) & ( \CPU|PC|DOUT\(6) & ( !\CPU|PC|DOUT[2]~DUPLICATE_q\ ) ) ) # ( \CPU|PC|DOUT\(0) & ( !\CPU|PC|DOUT\(6) & ( (\CPU|PC|DOUT\(3) & 
-- (\CPU|PC|DOUT\(4) & ((!\CPU|PC|DOUT[1]~DUPLICATE_q\) # (\CPU|PC|DOUT[2]~DUPLICATE_q\)))) ) ) ) # ( !\CPU|PC|DOUT\(0) & ( !\CPU|PC|DOUT\(6) & ( (\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(4) & ((\CPU|PC|DOUT[2]~DUPLICATE_q\) # (\CPU|PC|DOUT[1]~DUPLICATE_q\)))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000111000000000000101111001100110011000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	datae => \CPU|PC|ALT_INV_DOUT\(0),
	dataf => \CPU|PC|ALT_INV_DOUT\(6),
	combout => \ROM1|memROM~43_combout\);

-- Location: MLABCELL_X37_Y7_N48
\ROM1|memROM~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~44_combout\ = ( \CPU|PC|DOUT\(1) & ( \CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(4) $ (((\CPU|PC|DOUT\(3) & !\CPU|PC|DOUT\(6)))))) # (\CPU|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(3) & 
-- \CPU|PC|DOUT\(6)))) ) ) ) # ( !\CPU|PC|DOUT\(1) & ( \CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT\(4) & (\CPU|PC|DOUT\(6) & ((!\CPU|PC|DOUT[2]~DUPLICATE_q\) # (\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT[2]~DUPLICATE_q\ $ 
-- (!\CPU|PC|DOUT\(3))))) ) ) ) # ( \CPU|PC|DOUT\(1) & ( !\CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT\(4) & (((\CPU|PC|DOUT[2]~DUPLICATE_q\ & \CPU|PC|DOUT\(6))) # (\CPU|PC|DOUT\(3)))) # (\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(6) & ((!\CPU|PC|DOUT\(3)) # 
-- (\CPU|PC|DOUT[2]~DUPLICATE_q\)))) ) ) ) # ( !\CPU|PC|DOUT\(1) & ( !\CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT\(6) & ((!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(4))) # (\CPU|PC|DOUT\(3) & ((\CPU|PC|DOUT[2]~DUPLICATE_q\))))) # (\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(4) & 
-- ((\CPU|PC|DOUT\(3)) # (\CPU|PC|DOUT[2]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100101010010110110010101000010100100010101000010010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \CPU|PC|ALT_INV_DOUT\(6),
	datae => \CPU|PC|ALT_INV_DOUT\(1),
	dataf => \CPU|PC|ALT_INV_DOUT\(0),
	combout => \ROM1|memROM~44_combout\);

-- Location: MLABCELL_X37_Y7_N9
\ROM1|memROM~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~45_combout\ = ( \ROM1|memROM~44_combout\ & ( (!\ROM1|memROM~43_combout\) # (\CPU|PC|DOUT\(5)) ) ) # ( !\ROM1|memROM~44_combout\ & ( (!\CPU|PC|DOUT\(5) & !\ROM1|memROM~43_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000011111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datad => \ROM1|ALT_INV_memROM~43_combout\,
	dataf => \ROM1|ALT_INV_memROM~44_combout\,
	combout => \ROM1|memROM~45_combout\);

-- Location: LABCELL_X36_Y6_N51
\ROM1|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~17_combout\ = (\ROM1|memROM~4_combout\ & \ROM1|memROM~45_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~45_combout\,
	combout => \ROM1|memROM~17_combout\);

-- Location: LABCELL_X36_Y6_N27
\CPU|MUX4x2_PC|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX4x2_PC|Equal1~0_combout\ = ( \ROM1|memROM~15_combout\ & ( (\ROM1|memROM~17_combout\ & (!\ROM1|memROM~18_combout\ & ((!\ROM1|memROM~16_combout\) # (\CPU|FLAG_IGUAL|DOUT~q\)))) ) ) # ( !\ROM1|memROM~15_combout\ & ( (!\ROM1|memROM~17_combout\ & 
-- (\ROM1|memROM~16_combout\ & \ROM1|memROM~18_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001001000000010100000100000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~17_combout\,
	datab => \ROM1|ALT_INV_memROM~16_combout\,
	datac => \ROM1|ALT_INV_memROM~18_combout\,
	datad => \CPU|FLAG_IGUAL|ALT_INV_DOUT~q\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \CPU|MUX4x2_PC|Equal1~0_combout\);

-- Location: MLABCELL_X37_Y6_N51
\CPU|somaUm|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|somaUm|Add0~29_sumout\ = SUM(( \CPU|PC|DOUT\(7) ) + ( GND ) + ( \CPU|somaUm|Add0~26\ ))
-- \CPU|somaUm|Add0~30\ = CARRY(( \CPU|PC|DOUT\(7) ) + ( GND ) + ( \CPU|somaUm|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(7),
	cin => \CPU|somaUm|Add0~26\,
	sumout => \CPU|somaUm|Add0~29_sumout\,
	cout => \CPU|somaUm|Add0~30\);

-- Location: FF_X37_Y6_N52
\CPU|END_RET|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|somaUm|Add0~29_sumout\,
	ena => \CPU|Decoder|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RET|DOUT\(7));

-- Location: LABCELL_X35_Y6_N9
\CPU|MUX4x2_PC|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX4x2_PC|saida_MUX[7]~7_combout\ = ( \CPU|somaUm|Add0~29_sumout\ & ( \CPU|MUX4x2_PC|Equal2~0_combout\ & ( (!\CPU|MUX4x2_PC|Equal1~0_combout\ & (\CPU|END_RET|DOUT\(7))) # (\CPU|MUX4x2_PC|Equal1~0_combout\ & ((\ROM1|memROM~10_combout\))) ) ) ) # ( 
-- !\CPU|somaUm|Add0~29_sumout\ & ( \CPU|MUX4x2_PC|Equal2~0_combout\ & ( (!\CPU|MUX4x2_PC|Equal1~0_combout\ & (\CPU|END_RET|DOUT\(7))) # (\CPU|MUX4x2_PC|Equal1~0_combout\ & ((\ROM1|memROM~10_combout\))) ) ) ) # ( \CPU|somaUm|Add0~29_sumout\ & ( 
-- !\CPU|MUX4x2_PC|Equal2~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX4x2_PC|ALT_INV_Equal1~0_combout\,
	datac => \CPU|END_RET|ALT_INV_DOUT\(7),
	datad => \ROM1|ALT_INV_memROM~10_combout\,
	datae => \CPU|somaUm|ALT_INV_Add0~29_sumout\,
	dataf => \CPU|MUX4x2_PC|ALT_INV_Equal2~0_combout\,
	combout => \CPU|MUX4x2_PC|saida_MUX[7]~7_combout\);

-- Location: FF_X36_Y6_N59
\CPU|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|MUX4x2_PC|saida_MUX[7]~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(7));

-- Location: MLABCELL_X37_Y6_N54
\CPU|somaUm|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|somaUm|Add0~33_sumout\ = SUM(( \CPU|PC|DOUT\(8) ) + ( GND ) + ( \CPU|somaUm|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	cin => \CPU|somaUm|Add0~30\,
	sumout => \CPU|somaUm|Add0~33_sumout\);

-- Location: FF_X37_Y6_N55
\CPU|END_RET|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|somaUm|Add0~33_sumout\,
	ena => \CPU|Decoder|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RET|DOUT\(8));

-- Location: LABCELL_X36_Y6_N12
\CPU|MUX4x2_PC|saida_MUX[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX4x2_PC|saida_MUX[8]~8_combout\ = ( \CPU|MUX4x2_PC|Equal2~0_combout\ & ( (!\CPU|MUX4x2_PC|Equal1~0_combout\ & (\CPU|END_RET|DOUT\(8))) # (\CPU|MUX4x2_PC|Equal1~0_combout\ & ((\ROM1|memROM~8_combout\))) ) ) # ( !\CPU|MUX4x2_PC|Equal2~0_combout\ & ( 
-- \CPU|somaUm|Add0~33_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|END_RET|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \CPU|MUX4x2_PC|ALT_INV_Equal1~0_combout\,
	datad => \CPU|somaUm|ALT_INV_Add0~33_sumout\,
	dataf => \CPU|MUX4x2_PC|ALT_INV_Equal2~0_combout\,
	combout => \CPU|MUX4x2_PC|saida_MUX[8]~8_combout\);

-- Location: FF_X36_Y6_N13
\CPU|PC|DOUT[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX4x2_PC|saida_MUX[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[8]~DUPLICATE_q\);

-- Location: LABCELL_X35_Y2_N27
\CPU|ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[0]~0_combout\ = ( \CPU|ULA1|Add1~1_sumout\ & ( (!\CPU|Decoder|Operacao~0_combout\) # ((!\CPU|Decoder|Equal1~0_combout\ & ((\Data_IN[0]~4_combout\))) # (\CPU|Decoder|Equal1~0_combout\ & (\ROM1|memROM~13_combout\))) ) ) # ( 
-- !\CPU|ULA1|Add1~1_sumout\ & ( (\CPU|Decoder|Operacao~0_combout\ & ((!\CPU|Decoder|Equal1~0_combout\ & ((\Data_IN[0]~4_combout\))) # (\CPU|Decoder|Equal1~0_combout\ & (\ROM1|memROM~13_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010110101011111011111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_Operacao~0_combout\,
	datab => \CPU|Decoder|ALT_INV_Equal1~0_combout\,
	datac => \ROM1|ALT_INV_memROM~13_combout\,
	datad => \ALT_INV_Data_IN[0]~4_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~1_sumout\,
	combout => \CPU|ULA1|saida[0]~0_combout\);

-- Location: FF_X35_Y2_N2
\CPU|REG1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~1_sumout\,
	asdata => \CPU|ULA1|saida[0]~0_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|Decoder|OUTPUT\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(0));

-- Location: MLABCELL_X37_Y6_N27
\AND_HEX0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_HEX0~0_combout\ = ( !\ROM1|memROM~51_combout\ & ( \DECODER_BLOCOS|OUTPUT[5]~0_combout\ & ( (!\ROM1|memROM~42_combout\ & (\ROM1|memROM~45_combout\ & (\ROM1|memROM~48_combout\ & \ROM1|memROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~42_combout\,
	datab => \ROM1|ALT_INV_memROM~45_combout\,
	datac => \ROM1|ALT_INV_memROM~48_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \ROM1|ALT_INV_memROM~51_combout\,
	dataf => \DECODER_BLOCOS|ALT_INV_OUTPUT[5]~0_combout\,
	combout => \AND_HEX0~0_combout\);

-- Location: LABCELL_X36_Y6_N48
\ANDLEDR~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ANDLEDR~0_combout\ = ( !\AND_HEX0~1_combout\ & ( (!\ROM1|memROM~12_combout\ & (!\ROM1|memROM~5_combout\ & (\AND_HEX0~0_combout\ & !\ROM1|memROM~55_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~12_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ALT_INV_AND_HEX0~0_combout\,
	datad => \ROM1|ALT_INV_memROM~55_combout\,
	dataf => \ALT_INV_AND_HEX0~1_combout\,
	combout => \ANDLEDR~0_combout\);

-- Location: FF_X29_Y6_N1
\REGLEDR|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \ANDLEDR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLEDR|DOUT\(0));

-- Location: FF_X29_Y6_N43
\REGLEDR|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \ANDLEDR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLEDR|DOUT\(1));

-- Location: FF_X29_Y6_N13
\REGLEDR|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \ANDLEDR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLEDR|DOUT\(2));

-- Location: FF_X29_Y6_N10
\REGLEDR|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \ANDLEDR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLEDR|DOUT\(3));

-- Location: LABCELL_X29_Y6_N15
\REGLEDR|DOUT[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGLEDR|DOUT[4]~feeder_combout\ = ( \CPU|REG1|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(4),
	combout => \REGLEDR|DOUT[4]~feeder_combout\);

-- Location: FF_X29_Y6_N17
\REGLEDR|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \REGLEDR|DOUT[4]~feeder_combout\,
	ena => \ANDLEDR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLEDR|DOUT\(4));

-- Location: LABCELL_X29_Y6_N36
\REGLEDR|DOUT[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGLEDR|DOUT[5]~feeder_combout\ = ( \CPU|REG1|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(5),
	combout => \REGLEDR|DOUT[5]~feeder_combout\);

-- Location: FF_X29_Y6_N37
\REGLEDR|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \REGLEDR|DOUT[5]~feeder_combout\,
	ena => \ANDLEDR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLEDR|DOUT\(5));

-- Location: FF_X31_Y6_N16
\REGLEDR|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \ANDLEDR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLEDR|DOUT\(6));

-- Location: LABCELL_X29_Y6_N39
\REGLEDR|DOUT[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGLEDR|DOUT[7]~feeder_combout\ = ( \CPU|REG1|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(7),
	combout => \REGLEDR|DOUT[7]~feeder_combout\);

-- Location: FF_X29_Y6_N41
\REGLEDR|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \REGLEDR|DOUT[7]~feeder_combout\,
	ena => \ANDLEDR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLEDR|DOUT\(7));

-- Location: MLABCELL_X34_Y5_N51
\ANDLEDR8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ANDLEDR8~0_combout\ = ( !\ROM1|memROM~5_combout\ & ( \AND_HEX0~0_combout\ & ( (!\ROM1|memROM~12_combout\ & !\ROM1|memROM~55_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000110000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	datac => \ROM1|ALT_INV_memROM~55_combout\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ALT_INV_AND_HEX0~0_combout\,
	combout => \ANDLEDR8~0_combout\);

-- Location: LABCELL_X35_Y5_N36
\REGLEDR8|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGLEDR8|DOUT~0_combout\ = ( \ROM1|memROM~14_combout\ & ( \REGLEDR8|DOUT~q\ ) ) # ( !\ROM1|memROM~14_combout\ & ( (!\ROM1|memROM~13_combout\ & (((\REGLEDR8|DOUT~q\)))) # (\ROM1|memROM~13_combout\ & ((!\ANDLEDR8~0_combout\ & ((\REGLEDR8|DOUT~q\))) # 
-- (\ANDLEDR8~0_combout\ & (\CPU|REG1|DOUT\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111111101000000011111110100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REG1|ALT_INV_DOUT\(0),
	datab => \ROM1|ALT_INV_memROM~13_combout\,
	datac => \ALT_INV_ANDLEDR8~0_combout\,
	datad => \REGLEDR8|ALT_INV_DOUT~q\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \REGLEDR8|DOUT~0_combout\);

-- Location: FF_X35_Y5_N38
\REGLEDR8|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \REGLEDR8|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLEDR8|DOUT~q\);

-- Location: LABCELL_X35_Y5_N39
\REGLEDR9|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGLEDR9|DOUT~0_combout\ = ( \ANDLEDR8~0_combout\ & ( (!\ROM1|memROM~13_combout\ & ((!\ROM1|memROM~14_combout\ & ((\REGLEDR9|DOUT~q\))) # (\ROM1|memROM~14_combout\ & (\CPU|REG1|DOUT\(0))))) # (\ROM1|memROM~13_combout\ & (((\REGLEDR9|DOUT~q\)))) ) ) # ( 
-- !\ANDLEDR8~0_combout\ & ( \REGLEDR9|DOUT~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000100111101110000010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REG1|ALT_INV_DOUT\(0),
	datab => \ROM1|ALT_INV_memROM~13_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \REGLEDR9|ALT_INV_DOUT~q\,
	dataf => \ALT_INV_ANDLEDR8~0_combout\,
	combout => \REGLEDR9|DOUT~0_combout\);

-- Location: FF_X35_Y5_N41
\REGLEDR9|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \REGLEDR9|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLEDR9|DOUT~q\);

-- Location: MLABCELL_X37_Y5_N57
\AND_HEX0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_HEX0~2_combout\ = ( \ROM1|memROM~12_combout\ & ( (!\ROM1|memROM~55_combout\ & (\AND_HEX0~0_combout\ & (!\ROM1|memROM~5_combout\ & !\AND_HEX0~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~55_combout\,
	datab => \ALT_INV_AND_HEX0~0_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ALT_INV_AND_HEX0~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \AND_HEX0~2_combout\);

-- Location: FF_X41_Y2_N32
\REG_HEX0|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \AND_HEX0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX0|DOUT\(3));

-- Location: FF_X41_Y2_N50
\REG_HEX0|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \AND_HEX0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX0|DOUT\(0));

-- Location: FF_X41_Y2_N53
\REG_HEX0|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \AND_HEX0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX0|DOUT\(2));

-- Location: FF_X41_Y2_N35
\REG_HEX0|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \AND_HEX0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX0|DOUT\(1));

-- Location: LABCELL_X41_Y2_N0
\LED_HEX0|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX0|rascSaida7seg[0]~0_combout\ = ( \REG_HEX0|DOUT\(1) & ( (\REG_HEX0|DOUT\(3) & (\REG_HEX0|DOUT\(0) & !\REG_HEX0|DOUT\(2))) ) ) # ( !\REG_HEX0|DOUT\(1) & ( (!\REG_HEX0|DOUT\(3) & (!\REG_HEX0|DOUT\(0) $ (!\REG_HEX0|DOUT\(2)))) # (\REG_HEX0|DOUT\(3) 
-- & (\REG_HEX0|DOUT\(0) & \REG_HEX0|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011000011000011001100001100000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX0|ALT_INV_DOUT\(3),
	datac => \REG_HEX0|ALT_INV_DOUT\(0),
	datad => \REG_HEX0|ALT_INV_DOUT\(2),
	dataf => \REG_HEX0|ALT_INV_DOUT\(1),
	combout => \LED_HEX0|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X41_Y2_N54
\LED_HEX0|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX0|rascSaida7seg[1]~1_combout\ = ( \REG_HEX0|DOUT\(1) & ( (!\REG_HEX0|DOUT\(0) & ((\REG_HEX0|DOUT\(2)))) # (\REG_HEX0|DOUT\(0) & (\REG_HEX0|DOUT\(3))) ) ) # ( !\REG_HEX0|DOUT\(1) & ( (\REG_HEX0|DOUT\(2) & (!\REG_HEX0|DOUT\(3) $ 
-- (!\REG_HEX0|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110000000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX0|ALT_INV_DOUT\(3),
	datac => \REG_HEX0|ALT_INV_DOUT\(0),
	datad => \REG_HEX0|ALT_INV_DOUT\(2),
	dataf => \REG_HEX0|ALT_INV_DOUT\(1),
	combout => \LED_HEX0|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X41_Y2_N36
\LED_HEX0|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX0|rascSaida7seg[2]~2_combout\ = ( \REG_HEX0|DOUT\(3) & ( (\REG_HEX0|DOUT\(2) & ((!\REG_HEX0|DOUT\(0)) # (\REG_HEX0|DOUT\(1)))) ) ) # ( !\REG_HEX0|DOUT\(3) & ( (!\REG_HEX0|DOUT\(0) & (\REG_HEX0|DOUT\(1) & !\REG_HEX0|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000000000101011110000000010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX0|ALT_INV_DOUT\(0),
	datac => \REG_HEX0|ALT_INV_DOUT\(1),
	datad => \REG_HEX0|ALT_INV_DOUT\(2),
	dataf => \REG_HEX0|ALT_INV_DOUT\(3),
	combout => \LED_HEX0|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X41_Y2_N3
\LED_HEX0|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX0|rascSaida7seg[3]~3_combout\ = ( \REG_HEX0|DOUT\(0) & ( (!\REG_HEX0|DOUT\(1) & (!\REG_HEX0|DOUT\(3) & !\REG_HEX0|DOUT\(2))) # (\REG_HEX0|DOUT\(1) & ((\REG_HEX0|DOUT\(2)))) ) ) # ( !\REG_HEX0|DOUT\(0) & ( (!\REG_HEX0|DOUT\(1) & 
-- (!\REG_HEX0|DOUT\(3) & \REG_HEX0|DOUT\(2))) # (\REG_HEX0|DOUT\(1) & (\REG_HEX0|DOUT\(3) & !\REG_HEX0|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100000011000000110000001100010000101100001011000010110000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX0|ALT_INV_DOUT\(1),
	datab => \REG_HEX0|ALT_INV_DOUT\(3),
	datac => \REG_HEX0|ALT_INV_DOUT\(2),
	dataf => \REG_HEX0|ALT_INV_DOUT\(0),
	combout => \LED_HEX0|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X41_Y2_N30
\LED_HEX0|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX0|rascSaida7seg[4]~4_combout\ = ( \REG_HEX0|DOUT\(1) & ( (\REG_HEX0|DOUT\(0) & !\REG_HEX0|DOUT\(3)) ) ) # ( !\REG_HEX0|DOUT\(1) & ( (!\REG_HEX0|DOUT\(2) & (\REG_HEX0|DOUT\(0))) # (\REG_HEX0|DOUT\(2) & ((!\REG_HEX0|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101000100011101110100010001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX0|ALT_INV_DOUT\(0),
	datab => \REG_HEX0|ALT_INV_DOUT\(2),
	datad => \REG_HEX0|ALT_INV_DOUT\(3),
	dataf => \REG_HEX0|ALT_INV_DOUT\(1),
	combout => \LED_HEX0|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X41_Y2_N33
\LED_HEX0|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX0|rascSaida7seg[5]~5_combout\ = (!\REG_HEX0|DOUT\(0) & (!\REG_HEX0|DOUT\(2) & (!\REG_HEX0|DOUT\(3) & \REG_HEX0|DOUT\(1)))) # (\REG_HEX0|DOUT\(0) & (!\REG_HEX0|DOUT\(3) $ (((\REG_HEX0|DOUT\(2) & !\REG_HEX0|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000111010000010000011101000001000001110100000100000111010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX0|ALT_INV_DOUT\(0),
	datab => \REG_HEX0|ALT_INV_DOUT\(2),
	datac => \REG_HEX0|ALT_INV_DOUT\(3),
	datad => \REG_HEX0|ALT_INV_DOUT\(1),
	combout => \LED_HEX0|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X41_Y2_N51
\LED_HEX0|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX0|rascSaida7seg[6]~6_combout\ = ( \REG_HEX0|DOUT\(2) & ( \REG_HEX0|DOUT\(1) & ( (\REG_HEX0|DOUT\(0) & !\REG_HEX0|DOUT\(3)) ) ) ) # ( \REG_HEX0|DOUT\(2) & ( !\REG_HEX0|DOUT\(1) & ( (!\REG_HEX0|DOUT\(0) & \REG_HEX0|DOUT\(3)) ) ) ) # ( 
-- !\REG_HEX0|DOUT\(2) & ( !\REG_HEX0|DOUT\(1) & ( !\REG_HEX0|DOUT\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000010100000101000000000000000000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX0|ALT_INV_DOUT\(0),
	datac => \REG_HEX0|ALT_INV_DOUT\(3),
	datae => \REG_HEX0|ALT_INV_DOUT\(2),
	dataf => \REG_HEX0|ALT_INV_DOUT\(1),
	combout => \LED_HEX0|rascSaida7seg[6]~6_combout\);

-- Location: MLABCELL_X37_Y2_N48
\AND_HEX1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_HEX1~0_combout\ = ( \ROM1|memROM~13_combout\ & ( !\ROM1|memROM~14_combout\ & ( (\AND_HEX0~0_combout\ & (!\ROM1|memROM~55_combout\ & (\ROM1|memROM~12_combout\ & !\ROM1|memROM~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AND_HEX0~0_combout\,
	datab => \ROM1|ALT_INV_memROM~55_combout\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \AND_HEX1~0_combout\);

-- Location: FF_X41_Y2_N47
\REG_HEX1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \AND_HEX1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX1|DOUT\(2));

-- Location: FF_X41_Y2_N14
\REG_HEX1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \AND_HEX1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX1|DOUT\(3));

-- Location: FF_X41_Y2_N44
\REG_HEX1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \AND_HEX1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX1|DOUT\(0));

-- Location: FF_X41_Y2_N17
\REG_HEX1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \AND_HEX1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX1|DOUT\(1));

-- Location: LABCELL_X41_Y2_N9
\LED_HEX1|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX1|rascSaida7seg[0]~0_combout\ = ( \REG_HEX1|DOUT\(1) & ( (!\REG_HEX1|DOUT\(2) & (\REG_HEX1|DOUT\(3) & \REG_HEX1|DOUT\(0))) ) ) # ( !\REG_HEX1|DOUT\(1) & ( (!\REG_HEX1|DOUT\(2) & (!\REG_HEX1|DOUT\(3) & \REG_HEX1|DOUT\(0))) # (\REG_HEX1|DOUT\(2) & 
-- (!\REG_HEX1|DOUT\(3) $ (\REG_HEX1|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100101001001010010010100100100000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX1|ALT_INV_DOUT\(2),
	datab => \REG_HEX1|ALT_INV_DOUT\(3),
	datac => \REG_HEX1|ALT_INV_DOUT\(0),
	dataf => \REG_HEX1|ALT_INV_DOUT\(1),
	combout => \LED_HEX1|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X41_Y2_N6
\LED_HEX1|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX1|rascSaida7seg[1]~1_combout\ = ( \REG_HEX1|DOUT\(1) & ( (!\REG_HEX1|DOUT\(0) & ((\REG_HEX1|DOUT\(2)))) # (\REG_HEX1|DOUT\(0) & (\REG_HEX1|DOUT\(3))) ) ) # ( !\REG_HEX1|DOUT\(1) & ( (\REG_HEX1|DOUT\(2) & (!\REG_HEX1|DOUT\(3) $ 
-- (!\REG_HEX1|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110000000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX1|ALT_INV_DOUT\(3),
	datac => \REG_HEX1|ALT_INV_DOUT\(0),
	datad => \REG_HEX1|ALT_INV_DOUT\(2),
	dataf => \REG_HEX1|ALT_INV_DOUT\(1),
	combout => \LED_HEX1|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X41_Y2_N39
\LED_HEX1|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX1|rascSaida7seg[2]~2_combout\ = ( \REG_HEX1|DOUT\(3) & ( (\REG_HEX1|DOUT\(2) & ((!\REG_HEX1|DOUT\(0)) # (\REG_HEX1|DOUT\(1)))) ) ) # ( !\REG_HEX1|DOUT\(3) & ( (\REG_HEX1|DOUT\(1) & (!\REG_HEX1|DOUT\(0) & !\REG_HEX1|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000000000111100110000000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX1|ALT_INV_DOUT\(1),
	datac => \REG_HEX1|ALT_INV_DOUT\(0),
	datad => \REG_HEX1|ALT_INV_DOUT\(2),
	dataf => \REG_HEX1|ALT_INV_DOUT\(3),
	combout => \LED_HEX1|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X41_Y2_N42
\LED_HEX1|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX1|rascSaida7seg[3]~3_combout\ = ( \REG_HEX1|DOUT\(1) & ( (!\REG_HEX1|DOUT\(2) & (\REG_HEX1|DOUT\(3) & !\REG_HEX1|DOUT\(0))) # (\REG_HEX1|DOUT\(2) & ((\REG_HEX1|DOUT\(0)))) ) ) # ( !\REG_HEX1|DOUT\(1) & ( (!\REG_HEX1|DOUT\(3) & (!\REG_HEX1|DOUT\(2) 
-- $ (!\REG_HEX1|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011000000000011001100000000110000000011110011000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX1|ALT_INV_DOUT\(3),
	datac => \REG_HEX1|ALT_INV_DOUT\(2),
	datad => \REG_HEX1|ALT_INV_DOUT\(0),
	dataf => \REG_HEX1|ALT_INV_DOUT\(1),
	combout => \LED_HEX1|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X41_Y2_N12
\LED_HEX1|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX1|rascSaida7seg[4]~4_combout\ = ( \REG_HEX1|DOUT\(1) & ( (\REG_HEX1|DOUT\(0) & !\REG_HEX1|DOUT\(3)) ) ) # ( !\REG_HEX1|DOUT\(1) & ( (!\REG_HEX1|DOUT\(2) & (\REG_HEX1|DOUT\(0))) # (\REG_HEX1|DOUT\(2) & ((!\REG_HEX1|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100110000001111110011000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX1|ALT_INV_DOUT\(0),
	datac => \REG_HEX1|ALT_INV_DOUT\(2),
	datad => \REG_HEX1|ALT_INV_DOUT\(3),
	dataf => \REG_HEX1|ALT_INV_DOUT\(1),
	combout => \LED_HEX1|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X41_Y2_N15
\LED_HEX1|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX1|rascSaida7seg[5]~5_combout\ = ( \REG_HEX1|DOUT\(3) & ( (\REG_HEX1|DOUT\(0) & (\REG_HEX1|DOUT\(2) & !\REG_HEX1|DOUT\(1))) ) ) # ( !\REG_HEX1|DOUT\(3) & ( (!\REG_HEX1|DOUT\(0) & (!\REG_HEX1|DOUT\(2) & \REG_HEX1|DOUT\(1))) # (\REG_HEX1|DOUT\(0) & 
-- ((!\REG_HEX1|DOUT\(2)) # (\REG_HEX1|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011110011001100001111001100000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX1|ALT_INV_DOUT\(0),
	datac => \REG_HEX1|ALT_INV_DOUT\(2),
	datad => \REG_HEX1|ALT_INV_DOUT\(1),
	dataf => \REG_HEX1|ALT_INV_DOUT\(3),
	combout => \LED_HEX1|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X41_Y2_N45
\LED_HEX1|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX1|rascSaida7seg[6]~6_combout\ = ( \REG_HEX1|DOUT\(0) & ( (!\REG_HEX1|DOUT\(3) & (!\REG_HEX1|DOUT\(1) $ (\REG_HEX1|DOUT\(2)))) ) ) # ( !\REG_HEX1|DOUT\(0) & ( (!\REG_HEX1|DOUT\(1) & (!\REG_HEX1|DOUT\(3) $ (\REG_HEX1|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000110000110000000011000011000000000011001100000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX1|ALT_INV_DOUT\(3),
	datac => \REG_HEX1|ALT_INV_DOUT\(1),
	datad => \REG_HEX1|ALT_INV_DOUT\(2),
	dataf => \REG_HEX1|ALT_INV_DOUT\(0),
	combout => \LED_HEX1|rascSaida7seg[6]~6_combout\);

-- Location: MLABCELL_X37_Y2_N51
\AND_HEX2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_HEX2~0_combout\ = ( \ROM1|memROM~14_combout\ & ( !\ROM1|memROM~13_combout\ & ( (\AND_HEX0~0_combout\ & (!\ROM1|memROM~55_combout\ & (!\ROM1|memROM~5_combout\ & \ROM1|memROM~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AND_HEX0~0_combout\,
	datab => \ROM1|ALT_INV_memROM~55_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \AND_HEX2~0_combout\);

-- Location: FF_X40_Y2_N14
\REG_HEX2|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \AND_HEX2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX2|DOUT\(0));

-- Location: LABCELL_X40_Y2_N18
\REG_HEX2|DOUT[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_HEX2|DOUT[2]~feeder_combout\ = ( \CPU|REG1|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(2),
	combout => \REG_HEX2|DOUT[2]~feeder_combout\);

-- Location: FF_X40_Y2_N20
\REG_HEX2|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \REG_HEX2|DOUT[2]~feeder_combout\,
	ena => \AND_HEX2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX2|DOUT\(2));

-- Location: LABCELL_X40_Y2_N0
\REG_HEX2|DOUT[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_HEX2|DOUT[1]~feeder_combout\ = ( \CPU|REG1|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(1),
	combout => \REG_HEX2|DOUT[1]~feeder_combout\);

-- Location: FF_X40_Y2_N2
\REG_HEX2|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \REG_HEX2|DOUT[1]~feeder_combout\,
	ena => \AND_HEX2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX2|DOUT\(1));

-- Location: FF_X40_Y2_N8
\REG_HEX2|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \AND_HEX2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX2|DOUT\(3));

-- Location: LABCELL_X40_Y2_N36
\LED_HEX2|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX2|rascSaida7seg[0]~0_combout\ = ( \REG_HEX2|DOUT\(3) & ( (\REG_HEX2|DOUT\(0) & (!\REG_HEX2|DOUT\(2) $ (!\REG_HEX2|DOUT\(1)))) ) ) # ( !\REG_HEX2|DOUT\(3) & ( (!\REG_HEX2|DOUT\(1) & (!\REG_HEX2|DOUT\(0) $ (!\REG_HEX2|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000000000001111000000000000000011001100000000001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX2|ALT_INV_DOUT\(0),
	datac => \REG_HEX2|ALT_INV_DOUT\(2),
	datad => \REG_HEX2|ALT_INV_DOUT\(1),
	dataf => \REG_HEX2|ALT_INV_DOUT\(3),
	combout => \LED_HEX2|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X40_Y2_N39
\LED_HEX2|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX2|rascSaida7seg[1]~1_combout\ = ( \REG_HEX2|DOUT\(3) & ( (!\REG_HEX2|DOUT\(0) & (\REG_HEX2|DOUT\(2))) # (\REG_HEX2|DOUT\(0) & ((\REG_HEX2|DOUT\(1)))) ) ) # ( !\REG_HEX2|DOUT\(3) & ( (\REG_HEX2|DOUT\(2) & (!\REG_HEX2|DOUT\(0) $ 
-- (!\REG_HEX2|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010000000001010101000001010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX2|ALT_INV_DOUT\(2),
	datac => \REG_HEX2|ALT_INV_DOUT\(0),
	datad => \REG_HEX2|ALT_INV_DOUT\(1),
	dataf => \REG_HEX2|ALT_INV_DOUT\(3),
	combout => \LED_HEX2|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X40_Y2_N54
\LED_HEX2|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX2|rascSaida7seg[2]~2_combout\ = ( \REG_HEX2|DOUT\(3) & ( (\REG_HEX2|DOUT\(2) & ((!\REG_HEX2|DOUT\(0)) # (\REG_HEX2|DOUT\(1)))) ) ) # ( !\REG_HEX2|DOUT\(3) & ( (!\REG_HEX2|DOUT\(0) & (!\REG_HEX2|DOUT\(2) & \REG_HEX2|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000001100000011110000110000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX2|ALT_INV_DOUT\(0),
	datac => \REG_HEX2|ALT_INV_DOUT\(2),
	datad => \REG_HEX2|ALT_INV_DOUT\(1),
	dataf => \REG_HEX2|ALT_INV_DOUT\(3),
	combout => \LED_HEX2|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X40_Y2_N57
\LED_HEX2|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX2|rascSaida7seg[3]~3_combout\ = ( \REG_HEX2|DOUT\(2) & ( (!\REG_HEX2|DOUT\(1) & (!\REG_HEX2|DOUT\(0) & !\REG_HEX2|DOUT\(3))) # (\REG_HEX2|DOUT\(1) & (\REG_HEX2|DOUT\(0))) ) ) # ( !\REG_HEX2|DOUT\(2) & ( (!\REG_HEX2|DOUT\(1) & (\REG_HEX2|DOUT\(0) & 
-- !\REG_HEX2|DOUT\(3))) # (\REG_HEX2|DOUT\(1) & (!\REG_HEX2|DOUT\(0) & \REG_HEX2|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010000100100001001000010010010010001100100011001000110010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX2|ALT_INV_DOUT\(1),
	datab => \REG_HEX2|ALT_INV_DOUT\(0),
	datac => \REG_HEX2|ALT_INV_DOUT\(3),
	dataf => \REG_HEX2|ALT_INV_DOUT\(2),
	combout => \LED_HEX2|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X40_Y2_N48
\LED_HEX2|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX2|rascSaida7seg[4]~4_combout\ = ( \REG_HEX2|DOUT\(3) & ( (\REG_HEX2|DOUT\(0) & (!\REG_HEX2|DOUT\(2) & !\REG_HEX2|DOUT\(1))) ) ) # ( !\REG_HEX2|DOUT\(3) & ( ((\REG_HEX2|DOUT\(2) & !\REG_HEX2|DOUT\(1))) # (\REG_HEX2|DOUT\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100110011001111110011001100110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX2|ALT_INV_DOUT\(0),
	datac => \REG_HEX2|ALT_INV_DOUT\(2),
	datad => \REG_HEX2|ALT_INV_DOUT\(1),
	dataf => \REG_HEX2|ALT_INV_DOUT\(3),
	combout => \LED_HEX2|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X40_Y2_N51
\LED_HEX2|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX2|rascSaida7seg[5]~5_combout\ = ( \REG_HEX2|DOUT\(3) & ( (\REG_HEX2|DOUT\(2) & (\REG_HEX2|DOUT\(0) & !\REG_HEX2|DOUT\(1))) ) ) # ( !\REG_HEX2|DOUT\(3) & ( (!\REG_HEX2|DOUT\(2) & ((\REG_HEX2|DOUT\(1)) # (\REG_HEX2|DOUT\(0)))) # (\REG_HEX2|DOUT\(2) 
-- & (\REG_HEX2|DOUT\(0) & \REG_HEX2|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010101111000010101010111100000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX2|ALT_INV_DOUT\(2),
	datac => \REG_HEX2|ALT_INV_DOUT\(0),
	datad => \REG_HEX2|ALT_INV_DOUT\(1),
	dataf => \REG_HEX2|ALT_INV_DOUT\(3),
	combout => \LED_HEX2|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X40_Y2_N30
\LED_HEX2|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX2|rascSaida7seg[6]~6_combout\ = ( !\REG_HEX2|DOUT\(1) & ( \REG_HEX2|DOUT\(3) & ( (\REG_HEX2|DOUT\(2) & !\REG_HEX2|DOUT\(0)) ) ) ) # ( \REG_HEX2|DOUT\(1) & ( !\REG_HEX2|DOUT\(3) & ( (\REG_HEX2|DOUT\(2) & \REG_HEX2|DOUT\(0)) ) ) ) # ( 
-- !\REG_HEX2|DOUT\(1) & ( !\REG_HEX2|DOUT\(3) & ( !\REG_HEX2|DOUT\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010000100010001000101000100010001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX2|ALT_INV_DOUT\(2),
	datab => \REG_HEX2|ALT_INV_DOUT\(0),
	datae => \REG_HEX2|ALT_INV_DOUT\(1),
	dataf => \REG_HEX2|ALT_INV_DOUT\(3),
	combout => \LED_HEX2|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X39_Y4_N27
\AND_HEX3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_HEX3~0_combout\ = ( !\ROM1|memROM~5_combout\ & ( \ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~55_combout\ & (\ROM1|memROM~14_combout\ & (\AND_HEX0~0_combout\ & \ROM1|memROM~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~55_combout\,
	datab => \ROM1|ALT_INV_memROM~14_combout\,
	datac => \ALT_INV_AND_HEX0~0_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \AND_HEX3~0_combout\);

-- Location: FF_X41_Y2_N29
\REG_HEX3|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \AND_HEX3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX3|DOUT\(3));

-- Location: FF_X41_Y2_N20
\REG_HEX3|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \AND_HEX3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX3|DOUT\(1));

-- Location: FF_X41_Y2_N26
\REG_HEX3|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \AND_HEX3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX3|DOUT\(0));

-- Location: FF_X41_Y2_N23
\REG_HEX3|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \AND_HEX3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX3|DOUT\(2));

-- Location: LABCELL_X40_Y2_N27
\LED_HEX3|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX3|rascSaida7seg[0]~0_combout\ = ( \REG_HEX3|DOUT\(2) & ( (!\REG_HEX3|DOUT\(1) & (!\REG_HEX3|DOUT\(3) $ (\REG_HEX3|DOUT\(0)))) ) ) # ( !\REG_HEX3|DOUT\(2) & ( (\REG_HEX3|DOUT\(0) & (!\REG_HEX3|DOUT\(3) $ (\REG_HEX3|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100001001100001001000010000001001000010011000010010000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX3|ALT_INV_DOUT\(3),
	datab => \REG_HEX3|ALT_INV_DOUT\(1),
	datac => \REG_HEX3|ALT_INV_DOUT\(0),
	datae => \REG_HEX3|ALT_INV_DOUT\(2),
	combout => \LED_HEX3|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X41_Y2_N57
\LED_HEX3|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX3|rascSaida7seg[1]~1_combout\ = ( \REG_HEX3|DOUT\(0) & ( (!\REG_HEX3|DOUT\(3) & (!\REG_HEX3|DOUT\(1) & \REG_HEX3|DOUT\(2))) # (\REG_HEX3|DOUT\(3) & (\REG_HEX3|DOUT\(1))) ) ) # ( !\REG_HEX3|DOUT\(0) & ( (\REG_HEX3|DOUT\(2) & ((\REG_HEX3|DOUT\(1)) # 
-- (\REG_HEX3|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011111000000000101111100000101101001010000010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX3|ALT_INV_DOUT\(3),
	datac => \REG_HEX3|ALT_INV_DOUT\(1),
	datad => \REG_HEX3|ALT_INV_DOUT\(2),
	dataf => \REG_HEX3|ALT_INV_DOUT\(0),
	combout => \LED_HEX3|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X40_Y2_N45
\LED_HEX3|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX3|rascSaida7seg[2]~2_combout\ = ( \REG_HEX3|DOUT\(1) & ( (!\REG_HEX3|DOUT\(3) & (!\REG_HEX3|DOUT\(0) & !\REG_HEX3|DOUT\(2))) # (\REG_HEX3|DOUT\(3) & ((\REG_HEX3|DOUT\(2)))) ) ) # ( !\REG_HEX3|DOUT\(1) & ( (\REG_HEX3|DOUT\(3) & (!\REG_HEX3|DOUT\(0) 
-- & \REG_HEX3|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000010100000010101011010000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX3|ALT_INV_DOUT\(3),
	datac => \REG_HEX3|ALT_INV_DOUT\(0),
	datad => \REG_HEX3|ALT_INV_DOUT\(2),
	dataf => \REG_HEX3|ALT_INV_DOUT\(1),
	combout => \LED_HEX3|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X41_Y2_N24
\LED_HEX3|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX3|rascSaida7seg[3]~3_combout\ = (!\REG_HEX3|DOUT\(1) & (!\REG_HEX3|DOUT\(3) & (!\REG_HEX3|DOUT\(2) $ (!\REG_HEX3|DOUT\(0))))) # (\REG_HEX3|DOUT\(1) & ((!\REG_HEX3|DOUT\(2) & (\REG_HEX3|DOUT\(3) & !\REG_HEX3|DOUT\(0))) # (\REG_HEX3|DOUT\(2) & 
-- ((\REG_HEX3|DOUT\(0))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001010010001010000101001000101000010100100010100001010010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX3|ALT_INV_DOUT\(2),
	datab => \REG_HEX3|ALT_INV_DOUT\(1),
	datac => \REG_HEX3|ALT_INV_DOUT\(3),
	datad => \REG_HEX3|ALT_INV_DOUT\(0),
	combout => \LED_HEX3|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X41_Y2_N27
\LED_HEX3|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX3|rascSaida7seg[4]~4_combout\ = ( \REG_HEX3|DOUT\(0) & ( (!\REG_HEX3|DOUT\(3)) # ((!\REG_HEX3|DOUT\(2) & !\REG_HEX3|DOUT\(1))) ) ) # ( !\REG_HEX3|DOUT\(0) & ( (\REG_HEX3|DOUT\(2) & (!\REG_HEX3|DOUT\(1) & !\REG_HEX3|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000010001000000000011111111100010001111111110001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX3|ALT_INV_DOUT\(2),
	datab => \REG_HEX3|ALT_INV_DOUT\(1),
	datad => \REG_HEX3|ALT_INV_DOUT\(3),
	dataf => \REG_HEX3|ALT_INV_DOUT\(0),
	combout => \LED_HEX3|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X41_Y2_N18
\LED_HEX3|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX3|rascSaida7seg[5]~5_combout\ = ( \REG_HEX3|DOUT\(0) & ( !\REG_HEX3|DOUT\(3) $ (((\REG_HEX3|DOUT\(2) & !\REG_HEX3|DOUT\(1)))) ) ) # ( !\REG_HEX3|DOUT\(0) & ( (!\REG_HEX3|DOUT\(3) & (!\REG_HEX3|DOUT\(2) & \REG_HEX3|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000010100101101010101010010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX3|ALT_INV_DOUT\(3),
	datac => \REG_HEX3|ALT_INV_DOUT\(2),
	datad => \REG_HEX3|ALT_INV_DOUT\(1),
	dataf => \REG_HEX3|ALT_INV_DOUT\(0),
	combout => \LED_HEX3|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X41_Y2_N21
\LED_HEX3|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX3|rascSaida7seg[6]~6_combout\ = ( \REG_HEX3|DOUT\(0) & ( (!\REG_HEX3|DOUT\(3) & (!\REG_HEX3|DOUT\(1) $ (\REG_HEX3|DOUT\(2)))) ) ) # ( !\REG_HEX3|DOUT\(0) & ( (!\REG_HEX3|DOUT\(1) & (!\REG_HEX3|DOUT\(3) $ (\REG_HEX3|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000001010000101000000101000010100000000010101010000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX3|ALT_INV_DOUT\(3),
	datac => \REG_HEX3|ALT_INV_DOUT\(1),
	datad => \REG_HEX3|ALT_INV_DOUT\(2),
	dataf => \REG_HEX3|ALT_INV_DOUT\(0),
	combout => \LED_HEX3|rascSaida7seg[6]~6_combout\);

-- Location: MLABCELL_X42_Y2_N42
\REG_HEX4|DOUT[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_HEX4|DOUT[2]~feeder_combout\ = ( \CPU|REG1|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(2),
	combout => \REG_HEX4|DOUT[2]~feeder_combout\);

-- Location: LABCELL_X39_Y4_N33
\AND_HEX5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_HEX5~0_combout\ = ( \ROM1|memROM~55_combout\ & ( (!\ROM1|memROM~14_combout\ & (\ROM1|memROM~11_combout\ & \ROM1|memROM~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~14_combout\,
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~55_combout\,
	combout => \AND_HEX5~0_combout\);

-- Location: LABCELL_X39_Y4_N30
\AND_HEX4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_HEX4~0_combout\ = ( \AND_HEX5~0_combout\ & ( (\AND_HEX0~0_combout\ & (!\ROM1|memROM~5_combout\ & !\ROM1|memROM~13_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AND_HEX0~0_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ALT_INV_AND_HEX5~0_combout\,
	combout => \AND_HEX4~0_combout\);

-- Location: FF_X42_Y2_N44
\REG_HEX4|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \REG_HEX4|DOUT[2]~feeder_combout\,
	ena => \AND_HEX4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX4|DOUT\(2));

-- Location: FF_X42_Y2_N26
\REG_HEX4|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \AND_HEX4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX4|DOUT\(0));

-- Location: MLABCELL_X42_Y2_N36
\REG_HEX4|DOUT[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_HEX4|DOUT[1]~feeder_combout\ = ( \CPU|REG1|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(1),
	combout => \REG_HEX4|DOUT[1]~feeder_combout\);

-- Location: FF_X42_Y2_N38
\REG_HEX4|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \REG_HEX4|DOUT[1]~feeder_combout\,
	ena => \AND_HEX4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX4|DOUT\(1));

-- Location: MLABCELL_X42_Y2_N30
\REG_HEX4|DOUT[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_HEX4|DOUT[3]~feeder_combout\ = ( \CPU|REG1|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(3),
	combout => \REG_HEX4|DOUT[3]~feeder_combout\);

-- Location: FF_X42_Y2_N32
\REG_HEX4|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \REG_HEX4|DOUT[3]~feeder_combout\,
	ena => \AND_HEX4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX4|DOUT\(3));

-- Location: MLABCELL_X42_Y2_N0
\LED_HEX4|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX4|rascSaida7seg[0]~0_combout\ = ( \REG_HEX4|DOUT\(1) & ( \REG_HEX4|DOUT\(3) & ( (!\REG_HEX4|DOUT\(2) & \REG_HEX4|DOUT\(0)) ) ) ) # ( !\REG_HEX4|DOUT\(1) & ( \REG_HEX4|DOUT\(3) & ( (\REG_HEX4|DOUT\(2) & \REG_HEX4|DOUT\(0)) ) ) ) # ( 
-- !\REG_HEX4|DOUT\(1) & ( !\REG_HEX4|DOUT\(3) & ( !\REG_HEX4|DOUT\(2) $ (!\REG_HEX4|DOUT\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100000000000000000000000011000000110000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX4|ALT_INV_DOUT\(2),
	datac => \REG_HEX4|ALT_INV_DOUT\(0),
	datae => \REG_HEX4|ALT_INV_DOUT\(1),
	dataf => \REG_HEX4|ALT_INV_DOUT\(3),
	combout => \LED_HEX4|rascSaida7seg[0]~0_combout\);

-- Location: MLABCELL_X42_Y2_N57
\LED_HEX4|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX4|rascSaida7seg[1]~1_combout\ = ( \REG_HEX4|DOUT\(1) & ( \REG_HEX4|DOUT\(0) & ( \REG_HEX4|DOUT\(3) ) ) ) # ( !\REG_HEX4|DOUT\(1) & ( \REG_HEX4|DOUT\(0) & ( (!\REG_HEX4|DOUT\(3) & \REG_HEX4|DOUT\(2)) ) ) ) # ( \REG_HEX4|DOUT\(1) & ( 
-- !\REG_HEX4|DOUT\(0) & ( \REG_HEX4|DOUT\(2) ) ) ) # ( !\REG_HEX4|DOUT\(1) & ( !\REG_HEX4|DOUT\(0) & ( (\REG_HEX4|DOUT\(3) & \REG_HEX4|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000011110000111100001100000011000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX4|ALT_INV_DOUT\(3),
	datac => \REG_HEX4|ALT_INV_DOUT\(2),
	datae => \REG_HEX4|ALT_INV_DOUT\(1),
	dataf => \REG_HEX4|ALT_INV_DOUT\(0),
	combout => \LED_HEX4|rascSaida7seg[1]~1_combout\);

-- Location: MLABCELL_X42_Y2_N15
\LED_HEX4|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX4|rascSaida7seg[2]~2_combout\ = ( \REG_HEX4|DOUT\(1) & ( \REG_HEX4|DOUT\(0) & ( (\REG_HEX4|DOUT\(3) & \REG_HEX4|DOUT\(2)) ) ) ) # ( \REG_HEX4|DOUT\(1) & ( !\REG_HEX4|DOUT\(0) & ( !\REG_HEX4|DOUT\(3) $ (\REG_HEX4|DOUT\(2)) ) ) ) # ( 
-- !\REG_HEX4|DOUT\(1) & ( !\REG_HEX4|DOUT\(0) & ( (\REG_HEX4|DOUT\(3) & \REG_HEX4|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011110000111100001100000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX4|ALT_INV_DOUT\(3),
	datac => \REG_HEX4|ALT_INV_DOUT\(2),
	datae => \REG_HEX4|ALT_INV_DOUT\(1),
	dataf => \REG_HEX4|ALT_INV_DOUT\(0),
	combout => \LED_HEX4|rascSaida7seg[2]~2_combout\);

-- Location: MLABCELL_X42_Y2_N6
\LED_HEX4|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX4|rascSaida7seg[3]~3_combout\ = ( \REG_HEX4|DOUT\(2) & ( (!\REG_HEX4|DOUT\(0) & (!\REG_HEX4|DOUT\(3) & !\REG_HEX4|DOUT\(1))) # (\REG_HEX4|DOUT\(0) & ((\REG_HEX4|DOUT\(1)))) ) ) # ( !\REG_HEX4|DOUT\(2) & ( (!\REG_HEX4|DOUT\(0) & (\REG_HEX4|DOUT\(3) 
-- & \REG_HEX4|DOUT\(1))) # (\REG_HEX4|DOUT\(0) & (!\REG_HEX4|DOUT\(3) & !\REG_HEX4|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001001000010010000100100001010000101100001011000010110000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX4|ALT_INV_DOUT\(0),
	datab => \REG_HEX4|ALT_INV_DOUT\(3),
	datac => \REG_HEX4|ALT_INV_DOUT\(1),
	dataf => \REG_HEX4|ALT_INV_DOUT\(2),
	combout => \LED_HEX4|rascSaida7seg[3]~3_combout\);

-- Location: MLABCELL_X42_Y2_N48
\LED_HEX4|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX4|rascSaida7seg[4]~4_combout\ = ( !\REG_HEX4|DOUT\(1) & ( \REG_HEX4|DOUT\(3) & ( (!\REG_HEX4|DOUT\(2) & \REG_HEX4|DOUT\(0)) ) ) ) # ( \REG_HEX4|DOUT\(1) & ( !\REG_HEX4|DOUT\(3) & ( \REG_HEX4|DOUT\(0) ) ) ) # ( !\REG_HEX4|DOUT\(1) & ( 
-- !\REG_HEX4|DOUT\(3) & ( (\REG_HEX4|DOUT\(0)) # (\REG_HEX4|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111000011110000111100001100000011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX4|ALT_INV_DOUT\(2),
	datac => \REG_HEX4|ALT_INV_DOUT\(0),
	datae => \REG_HEX4|ALT_INV_DOUT\(1),
	dataf => \REG_HEX4|ALT_INV_DOUT\(3),
	combout => \LED_HEX4|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X42_Y2_N9
\LED_HEX4|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX4|rascSaida7seg[5]~5_combout\ = ( \REG_HEX4|DOUT\(2) & ( (\REG_HEX4|DOUT\(0) & (!\REG_HEX4|DOUT\(3) $ (!\REG_HEX4|DOUT\(1)))) ) ) # ( !\REG_HEX4|DOUT\(2) & ( (!\REG_HEX4|DOUT\(3) & ((\REG_HEX4|DOUT\(1)) # (\REG_HEX4|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010011001100010001001100110000010001010001000001000101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX4|ALT_INV_DOUT\(0),
	datab => \REG_HEX4|ALT_INV_DOUT\(3),
	datad => \REG_HEX4|ALT_INV_DOUT\(1),
	dataf => \REG_HEX4|ALT_INV_DOUT\(2),
	combout => \LED_HEX4|rascSaida7seg[5]~5_combout\);

-- Location: MLABCELL_X42_Y2_N18
\LED_HEX4|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX4|rascSaida7seg[6]~6_combout\ = ( !\REG_HEX4|DOUT\(1) & ( \REG_HEX4|DOUT\(3) & ( (\REG_HEX4|DOUT\(2) & !\REG_HEX4|DOUT\(0)) ) ) ) # ( \REG_HEX4|DOUT\(1) & ( !\REG_HEX4|DOUT\(3) & ( (\REG_HEX4|DOUT\(2) & \REG_HEX4|DOUT\(0)) ) ) ) # ( 
-- !\REG_HEX4|DOUT\(1) & ( !\REG_HEX4|DOUT\(3) & ( !\REG_HEX4|DOUT\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100000000110000001100110000001100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX4|ALT_INV_DOUT\(2),
	datac => \REG_HEX4|ALT_INV_DOUT\(0),
	datae => \REG_HEX4|ALT_INV_DOUT\(1),
	dataf => \REG_HEX4|ALT_INV_DOUT\(3),
	combout => \LED_HEX4|rascSaida7seg[6]~6_combout\);

-- Location: MLABCELL_X34_Y5_N6
AND_HEX5 : cyclonev_lcell_comb
-- Equation(s):
-- \AND_HEX5~combout\ = ( \AND_HEX0~0_combout\ & ( (\AND_HEX5~0_combout\ & (!\ROM1|memROM~5_combout\ & \ROM1|memROM~13_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AND_HEX5~0_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ALT_INV_AND_HEX0~0_combout\,
	combout => \AND_HEX5~combout\);

-- Location: FF_X29_Y6_N56
\REG_HEX5|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \AND_HEX5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX5|DOUT\(0));

-- Location: FF_X29_Y6_N53
\REG_HEX5|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \AND_HEX5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX5|DOUT[2]~DUPLICATE_q\);

-- Location: FF_X29_Y6_N59
\REG_HEX5|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \AND_HEX5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX5|DOUT\(3));

-- Location: FF_X29_Y6_N50
\REG_HEX5|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \AND_HEX5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX5|DOUT\(1));

-- Location: LABCELL_X29_Y6_N30
\LED_HEX5|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX5|rascSaida7seg[0]~0_combout\ = ( \REG_HEX5|DOUT\(1) & ( (\REG_HEX5|DOUT\(0) & (!\REG_HEX5|DOUT[2]~DUPLICATE_q\ & \REG_HEX5|DOUT\(3))) ) ) # ( !\REG_HEX5|DOUT\(1) & ( (!\REG_HEX5|DOUT\(0) & (\REG_HEX5|DOUT[2]~DUPLICATE_q\ & !\REG_HEX5|DOUT\(3))) # 
-- (\REG_HEX5|DOUT\(0) & (!\REG_HEX5|DOUT[2]~DUPLICATE_q\ $ (\REG_HEX5|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101000000101010110100000010100000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX5|ALT_INV_DOUT\(0),
	datac => \REG_HEX5|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \REG_HEX5|ALT_INV_DOUT\(3),
	dataf => \REG_HEX5|ALT_INV_DOUT\(1),
	combout => \LED_HEX5|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X29_Y6_N27
\LED_HEX5|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX5|rascSaida7seg[1]~1_combout\ = ( \REG_HEX5|DOUT\(3) & ( \REG_HEX5|DOUT[2]~DUPLICATE_q\ & ( (!\REG_HEX5|DOUT\(0)) # (\REG_HEX5|DOUT\(1)) ) ) ) # ( !\REG_HEX5|DOUT\(3) & ( \REG_HEX5|DOUT[2]~DUPLICATE_q\ & ( !\REG_HEX5|DOUT\(1) $ 
-- (!\REG_HEX5|DOUT\(0)) ) ) ) # ( \REG_HEX5|DOUT\(3) & ( !\REG_HEX5|DOUT[2]~DUPLICATE_q\ & ( (\REG_HEX5|DOUT\(1) & \REG_HEX5|DOUT\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101010101010101101010101111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX5|ALT_INV_DOUT\(1),
	datad => \REG_HEX5|ALT_INV_DOUT\(0),
	datae => \REG_HEX5|ALT_INV_DOUT\(3),
	dataf => \REG_HEX5|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \LED_HEX5|rascSaida7seg[1]~1_combout\);

-- Location: FF_X29_Y6_N52
\REG_HEX5|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \AND_HEX5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX5|DOUT\(2));

-- Location: LABCELL_X29_Y6_N21
\LED_HEX5|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX5|rascSaida7seg[2]~2_combout\ = ( \REG_HEX5|DOUT\(1) & ( (!\REG_HEX5|DOUT\(2) & (!\REG_HEX5|DOUT\(0) & !\REG_HEX5|DOUT\(3))) # (\REG_HEX5|DOUT\(2) & ((\REG_HEX5|DOUT\(3)))) ) ) # ( !\REG_HEX5|DOUT\(1) & ( (!\REG_HEX5|DOUT\(0) & (\REG_HEX5|DOUT\(2) 
-- & \REG_HEX5|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001010000011100000111000001110000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX5|ALT_INV_DOUT\(0),
	datab => \REG_HEX5|ALT_INV_DOUT\(2),
	datac => \REG_HEX5|ALT_INV_DOUT\(3),
	dataf => \REG_HEX5|ALT_INV_DOUT\(1),
	combout => \LED_HEX5|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X29_Y6_N6
\LED_HEX5|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX5|rascSaida7seg[3]~3_combout\ = ( \REG_HEX5|DOUT\(0) & ( (!\REG_HEX5|DOUT[2]~DUPLICATE_q\ & (!\REG_HEX5|DOUT\(3) & !\REG_HEX5|DOUT\(1))) # (\REG_HEX5|DOUT[2]~DUPLICATE_q\ & ((\REG_HEX5|DOUT\(1)))) ) ) # ( !\REG_HEX5|DOUT\(0) & ( 
-- (!\REG_HEX5|DOUT[2]~DUPLICATE_q\ & (\REG_HEX5|DOUT\(3) & \REG_HEX5|DOUT\(1))) # (\REG_HEX5|DOUT[2]~DUPLICATE_q\ & (!\REG_HEX5|DOUT\(3) & !\REG_HEX5|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001001000010100001011000010101000010010000101000010110000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX5|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \REG_HEX5|ALT_INV_DOUT\(3),
	datac => \REG_HEX5|ALT_INV_DOUT\(1),
	datae => \REG_HEX5|ALT_INV_DOUT\(0),
	combout => \LED_HEX5|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X29_Y6_N33
\LED_HEX5|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX5|rascSaida7seg[4]~4_combout\ = ( \REG_HEX5|DOUT\(1) & ( (\REG_HEX5|DOUT\(0) & !\REG_HEX5|DOUT\(3)) ) ) # ( !\REG_HEX5|DOUT\(1) & ( (!\REG_HEX5|DOUT\(2) & (\REG_HEX5|DOUT\(0))) # (\REG_HEX5|DOUT\(2) & ((!\REG_HEX5|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010001110100011101000111010001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX5|ALT_INV_DOUT\(0),
	datab => \REG_HEX5|ALT_INV_DOUT\(2),
	datac => \REG_HEX5|ALT_INV_DOUT\(3),
	dataf => \REG_HEX5|ALT_INV_DOUT\(1),
	combout => \LED_HEX5|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X29_Y6_N18
\LED_HEX5|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX5|rascSaida7seg[5]~5_combout\ = ( \REG_HEX5|DOUT\(1) & ( (!\REG_HEX5|DOUT\(3) & ((!\REG_HEX5|DOUT[2]~DUPLICATE_q\) # (\REG_HEX5|DOUT\(0)))) ) ) # ( !\REG_HEX5|DOUT\(1) & ( (\REG_HEX5|DOUT\(0) & (!\REG_HEX5|DOUT[2]~DUPLICATE_q\ $ 
-- (\REG_HEX5|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000101010100000000010111110101000000001111010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX5|ALT_INV_DOUT\(0),
	datac => \REG_HEX5|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \REG_HEX5|ALT_INV_DOUT\(3),
	dataf => \REG_HEX5|ALT_INV_DOUT\(1),
	combout => \LED_HEX5|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X29_Y6_N3
\LED_HEX5|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX5|rascSaida7seg[6]~6_combout\ = ( \REG_HEX5|DOUT\(0) & ( (!\REG_HEX5|DOUT\(3) & (!\REG_HEX5|DOUT\(1) $ (\REG_HEX5|DOUT[2]~DUPLICATE_q\))) ) ) # ( !\REG_HEX5|DOUT\(0) & ( (!\REG_HEX5|DOUT\(1) & (!\REG_HEX5|DOUT\(3) $ 
-- (\REG_HEX5|DOUT[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000001010101000000101000010100000000010101010000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX5|ALT_INV_DOUT\(1),
	datac => \REG_HEX5|ALT_INV_DOUT\(3),
	datad => \REG_HEX5|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datae => \REG_HEX5|ALT_INV_DOUT\(0),
	combout => \LED_HEX5|rascSaida7seg[6]~6_combout\);

-- Location: MLABCELL_X13_Y23_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


