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

-- DATE "09/23/2021 16:03:24"

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

ENTITY 	Aula8 IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	LEDR : OUT std_logic_vector(7 DOWNTO 0);
	LEDR8 : OUT std_logic;
	LEDR9 : OUT std_logic;
	saida_ROM : OUT std_logic_vector(12 DOWNTO 0);
	saida_RAM : OUT std_logic_vector(7 DOWNTO 0);
	Teste_Endereco : OUT std_logic_vector(8 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0)
	);
END Aula8;

ARCHITECTURE structure OF Aula8 IS
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
SIGNAL ww_LEDR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LEDR8 : std_logic;
SIGNAL ww_LEDR9 : std_logic;
SIGNAL ww_saida_ROM : std_logic_vector(12 DOWNTO 0);
SIGNAL ww_saida_RAM : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Teste_Endereco : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \CPU|somaUm|Add0~1_sumout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \CPU|somaUm|Add0~18\ : std_logic;
SIGNAL \CPU|somaUm|Add0~21_sumout\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \ROM1|memROM~8_combout\ : std_logic;
SIGNAL \ROM1|memROM~11_combout\ : std_logic;
SIGNAL \ROM1|memROM~12_combout\ : std_logic;
SIGNAL \ROM1|memROM~13_combout\ : std_logic;
SIGNAL \ROM1|memROM~14_combout\ : std_logic;
SIGNAL \ROM1|memROM~15_combout\ : std_logic;
SIGNAL \ROM1|memROM~16_combout\ : std_logic;
SIGNAL \CPU|Decoder|Equal5~0_combout\ : std_logic;
SIGNAL \CPU|somaUm|Add0~22\ : std_logic;
SIGNAL \CPU|somaUm|Add0~25_sumout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \CPU|somaUm|Add0~26\ : std_logic;
SIGNAL \CPU|somaUm|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|somaUm|Add0~30\ : std_logic;
SIGNAL \CPU|somaUm|Add0~33_sumout\ : std_logic;
SIGNAL \ROM1|memROM~9_combout\ : std_logic;
SIGNAL \ROM1|memROM~10_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \CPU|somaUm|Add0~2\ : std_logic;
SIGNAL \CPU|somaUm|Add0~5_sumout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \CPU|somaUm|Add0~6\ : std_logic;
SIGNAL \CPU|somaUm|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|somaUm|Add0~10\ : std_logic;
SIGNAL \CPU|somaUm|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|somaUm|Add0~14\ : std_logic;
SIGNAL \CPU|somaUm|Add0~17_sumout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \CPU|Decoder|Equal5~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~17_combout\ : std_logic;
SIGNAL \memoriaDados|ram~527_combout\ : std_logic;
SIGNAL \memoriaDados|process_0~0_combout\ : std_logic;
SIGNAL \memoriaDados|ram~563_combout\ : std_logic;
SIGNAL \memoriaDados|ram~39_q\ : std_logic;
SIGNAL \memoriaDados|ram~528_combout\ : std_logic;
SIGNAL \memoriaDados|ram~564_combout\ : std_logic;
SIGNAL \memoriaDados|ram~311_q\ : std_logic;
SIGNAL \memoriaDados|ram~565_combout\ : std_logic;
SIGNAL \memoriaDados|ram~71_q\ : std_logic;
SIGNAL \memoriaDados|ram~529_combout\ : std_logic;
SIGNAL \memoriaDados|ram~566_combout\ : std_logic;
SIGNAL \memoriaDados|ram~15_q\ : std_logic;
SIGNAL \memoriaDados|ram~567_combout\ : std_logic;
SIGNAL \memoriaDados|ram~31_q\ : std_logic;
SIGNAL \memoriaDados|ram~530_combout\ : std_logic;
SIGNAL \memoriaDados|ram~568_combout\ : std_logic;
SIGNAL \memoriaDados|ram~63_q\ : std_logic;
SIGNAL \memoriaDados|ram~531_combout\ : std_logic;
SIGNAL \memoriaDados|ram~532_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|Decoder|Operacao~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~34_cout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~1_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|Equal1~0_combout\ : std_logic;
SIGNAL \CPU|Decoder|OUTPUT[5]~0_combout\ : std_logic;
SIGNAL \AND_HEX3~0_combout\ : std_logic;
SIGNAL \ANDLEDR8~0_combout\ : std_logic;
SIGNAL \REGLEDR8|DOUT~0_combout\ : std_logic;
SIGNAL \REGLEDR8|DOUT~q\ : std_logic;
SIGNAL \REGLEDR9|DOUT~0_combout\ : std_logic;
SIGNAL \REGLEDR9|DOUT~q\ : std_logic;
SIGNAL \ROM1|memROM~18_combout\ : std_logic;
SIGNAL \memoriaDados|ram~16_q\ : std_logic;
SIGNAL \memoriaDados|ram~533_combout\ : std_logic;
SIGNAL \memoriaDados|ram~312_q\ : std_logic;
SIGNAL \memoriaDados|ram~534_combout\ : std_logic;
SIGNAL \memoriaDados|ram~40_q\ : std_logic;
SIGNAL \memoriaDados|ram~32_q\ : std_logic;
SIGNAL \memoriaDados|ram~72_q\ : std_logic;
SIGNAL \memoriaDados|ram~64_q\ : std_logic;
SIGNAL \memoriaDados|ram~535_combout\ : std_logic;
SIGNAL \memoriaDados|ram~536_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~2\ : std_logic;
SIGNAL \CPU|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~2\ : std_logic;
SIGNAL \CPU|ULA1|Add1~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[1]~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~19_combout\ : std_logic;
SIGNAL \memoriaDados|ram~41_q\ : std_logic;
SIGNAL \memoriaDados|ram~537_combout\ : std_logic;
SIGNAL \memoriaDados|ram~313_q\ : std_logic;
SIGNAL \memoriaDados|ram~73_q\ : std_logic;
SIGNAL \memoriaDados|ram~538_combout\ : std_logic;
SIGNAL \memoriaDados|ram~17_q\ : std_logic;
SIGNAL \memoriaDados|ram~33_q\ : std_logic;
SIGNAL \memoriaDados|ram~539_combout\ : std_logic;
SIGNAL \memoriaDados|ram~65_q\ : std_logic;
SIGNAL \memoriaDados|ram~540_combout\ : std_logic;
SIGNAL \memoriaDados|ram~541_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~6\ : std_logic;
SIGNAL \CPU|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~6\ : std_logic;
SIGNAL \CPU|ULA1|Add1~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[2]~2_combout\ : std_logic;
SIGNAL \memoriaDados|ram~18_q\ : std_logic;
SIGNAL \memoriaDados|ram~542_combout\ : std_logic;
SIGNAL \memoriaDados|ram~314_q\ : std_logic;
SIGNAL \memoriaDados|ram~543_combout\ : std_logic;
SIGNAL \memoriaDados|ram~42_q\ : std_logic;
SIGNAL \memoriaDados|ram~34_q\ : std_logic;
SIGNAL \memoriaDados|ram~74_q\ : std_logic;
SIGNAL \memoriaDados|ram~66_q\ : std_logic;
SIGNAL \memoriaDados|ram~544_combout\ : std_logic;
SIGNAL \memoriaDados|ram~545_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~10\ : std_logic;
SIGNAL \CPU|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~10\ : std_logic;
SIGNAL \CPU|ULA1|Add1~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[3]~3_combout\ : std_logic;
SIGNAL \memoriaDados|ram~43_q\ : std_logic;
SIGNAL \memoriaDados|ram~546_combout\ : std_logic;
SIGNAL \memoriaDados|ram~315_q\ : std_logic;
SIGNAL \memoriaDados|ram~75_q\ : std_logic;
SIGNAL \memoriaDados|ram~547_combout\ : std_logic;
SIGNAL \memoriaDados|ram~19_q\ : std_logic;
SIGNAL \memoriaDados|ram~35_q\ : std_logic;
SIGNAL \memoriaDados|ram~548_combout\ : std_logic;
SIGNAL \memoriaDados|ram~67_q\ : std_logic;
SIGNAL \memoriaDados|ram~549_combout\ : std_logic;
SIGNAL \memoriaDados|ram~550_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~14\ : std_logic;
SIGNAL \CPU|ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~14\ : std_logic;
SIGNAL \CPU|ULA1|Add1~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[4]~4_combout\ : std_logic;
SIGNAL \ROM1|memROM~20_combout\ : std_logic;
SIGNAL \memoriaDados|ram~20_q\ : std_logic;
SIGNAL \memoriaDados|ram~551_combout\ : std_logic;
SIGNAL \memoriaDados|ram~316_q\ : std_logic;
SIGNAL \memoriaDados|ram~552_combout\ : std_logic;
SIGNAL \memoriaDados|ram~44_q\ : std_logic;
SIGNAL \memoriaDados|ram~36_q\ : std_logic;
SIGNAL \memoriaDados|ram~76_q\ : std_logic;
SIGNAL \memoriaDados|ram~68_q\ : std_logic;
SIGNAL \memoriaDados|ram~553_combout\ : std_logic;
SIGNAL \memoriaDados|ram~554_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~18\ : std_logic;
SIGNAL \CPU|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~18\ : std_logic;
SIGNAL \CPU|ULA1|Add1~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[5]~5_combout\ : std_logic;
SIGNAL \memoriaDados|ram~45_q\ : std_logic;
SIGNAL \memoriaDados|ram~77_q\ : std_logic;
SIGNAL \memoriaDados|ram~555_combout\ : std_logic;
SIGNAL \memoriaDados|ram~21_q\ : std_logic;
SIGNAL \memoriaDados|ram~37_q\ : std_logic;
SIGNAL \memoriaDados|ram~69_q\ : std_logic;
SIGNAL \memoriaDados|ram~556_combout\ : std_logic;
SIGNAL \memoriaDados|ram~317_q\ : std_logic;
SIGNAL \memoriaDados|ram~557_combout\ : std_logic;
SIGNAL \memoriaDados|ram~558_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~22\ : std_logic;
SIGNAL \CPU|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~22\ : std_logic;
SIGNAL \CPU|ULA1|Add1~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[6]~6_combout\ : std_logic;
SIGNAL \memoriaDados|ram~22_q\ : std_logic;
SIGNAL \memoriaDados|ram~46_q\ : std_logic;
SIGNAL \memoriaDados|ram~38_q\ : std_logic;
SIGNAL \memoriaDados|ram~559_combout\ : std_logic;
SIGNAL \memoriaDados|ram~78_q\ : std_logic;
SIGNAL \memoriaDados|ram~70_q\ : std_logic;
SIGNAL \memoriaDados|ram~560_combout\ : std_logic;
SIGNAL \memoriaDados|ram~318_q\ : std_logic;
SIGNAL \memoriaDados|ram~561_combout\ : std_logic;
SIGNAL \memoriaDados|ram~562_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~26\ : std_logic;
SIGNAL \CPU|ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~26\ : std_logic;
SIGNAL \CPU|ULA1|Add1~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[7]~7_combout\ : std_logic;
SIGNAL \AND_HEX0~0_combout\ : std_logic;
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
SIGNAL \LED_HEX2|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \LED_HEX2|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \LED_HEX2|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \LED_HEX2|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \LED_HEX2|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \LED_HEX2|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \LED_HEX2|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \AND_HEX3~combout\ : std_logic;
SIGNAL \LED_HEX3|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \LED_HEX3|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \LED_HEX3|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \LED_HEX3|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \LED_HEX3|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \LED_HEX3|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \LED_HEX3|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \AND_HEX4~combout\ : std_logic;
SIGNAL \LED_HEX4|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \LED_HEX4|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \LED_HEX4|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \LED_HEX4|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \LED_HEX4|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \LED_HEX4|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \LED_HEX4|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \REG_HEX4|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_HEX3|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_HEX2|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \REG_HEX0|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|REG1|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REG_HEX1|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ROM1|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \REGLEDR9|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \REGLEDR8|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \CPU|REG1|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \memoriaDados|ALT_INV_ram~66_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~74_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~42_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~543_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~314_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~542_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~541_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~540_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~65_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~539_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~538_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~73_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~313_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~537_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~41_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~536_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~535_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~64_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~72_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~40_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~534_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~312_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~533_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \CPU|Decoder|ALT_INV_Operacao~0_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~532_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~531_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~63_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~530_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~15_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~529_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~71_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~311_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~528_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~39_q\ : std_logic;
SIGNAL \CPU|Decoder|ALT_INV_Equal5~1_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~527_combout\ : std_logic;
SIGNAL \ALT_INV_ANDLEDR8~0_combout\ : std_logic;
SIGNAL \ALT_INV_AND_HEX3~0_combout\ : std_logic;
SIGNAL \REG_HEX4|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_HEX3|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_HEX2|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_HEX1|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_HEX0|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ROM1|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~20_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~19_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~18_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~17_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~562_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~561_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~318_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~560_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~70_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~78_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~559_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~46_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~558_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~557_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~317_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~556_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~69_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~555_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~77_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~45_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~554_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~553_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~68_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~76_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~44_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~552_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~316_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~551_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~550_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~549_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~67_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~548_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~547_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~75_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~315_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~546_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~43_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~545_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~544_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
LEDR8 <= ww_LEDR8;
LEDR9 <= ww_LEDR9;
saida_ROM <= ww_saida_ROM;
saida_RAM <= ww_saida_RAM;
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
\ROM1|ALT_INV_memROM~7_combout\ <= NOT \ROM1|memROM~7_combout\;
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\ROM1|ALT_INV_memROM~3_combout\ <= NOT \ROM1|memROM~3_combout\;
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\REGLEDR9|ALT_INV_DOUT~q\ <= NOT \REGLEDR9|DOUT~q\;
\REGLEDR8|ALT_INV_DOUT~q\ <= NOT \REGLEDR8|DOUT~q\;
\CPU|ULA1|ALT_INV_Add1~29_sumout\ <= NOT \CPU|ULA1|Add1~29_sumout\;
\CPU|ULA1|ALT_INV_Add1~25_sumout\ <= NOT \CPU|ULA1|Add1~25_sumout\;
\CPU|ULA1|ALT_INV_Add1~21_sumout\ <= NOT \CPU|ULA1|Add1~21_sumout\;
\CPU|ULA1|ALT_INV_Add1~17_sumout\ <= NOT \CPU|ULA1|Add1~17_sumout\;
\CPU|ULA1|ALT_INV_Add1~13_sumout\ <= NOT \CPU|ULA1|Add1~13_sumout\;
\CPU|ULA1|ALT_INV_Add1~9_sumout\ <= NOT \CPU|ULA1|Add1~9_sumout\;
\CPU|ULA1|ALT_INV_Add1~5_sumout\ <= NOT \CPU|ULA1|Add1~5_sumout\;
\CPU|ULA1|ALT_INV_Add1~1_sumout\ <= NOT \CPU|ULA1|Add1~1_sumout\;
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
\memoriaDados|ALT_INV_ram~66_q\ <= NOT \memoriaDados|ram~66_q\;
\memoriaDados|ALT_INV_ram~74_q\ <= NOT \memoriaDados|ram~74_q\;
\memoriaDados|ALT_INV_ram~34_q\ <= NOT \memoriaDados|ram~34_q\;
\memoriaDados|ALT_INV_ram~42_q\ <= NOT \memoriaDados|ram~42_q\;
\memoriaDados|ALT_INV_ram~543_combout\ <= NOT \memoriaDados|ram~543_combout\;
\memoriaDados|ALT_INV_ram~314_q\ <= NOT \memoriaDados|ram~314_q\;
\memoriaDados|ALT_INV_ram~542_combout\ <= NOT \memoriaDados|ram~542_combout\;
\memoriaDados|ALT_INV_ram~18_q\ <= NOT \memoriaDados|ram~18_q\;
\memoriaDados|ALT_INV_ram~541_combout\ <= NOT \memoriaDados|ram~541_combout\;
\memoriaDados|ALT_INV_ram~540_combout\ <= NOT \memoriaDados|ram~540_combout\;
\memoriaDados|ALT_INV_ram~65_q\ <= NOT \memoriaDados|ram~65_q\;
\memoriaDados|ALT_INV_ram~539_combout\ <= NOT \memoriaDados|ram~539_combout\;
\memoriaDados|ALT_INV_ram~33_q\ <= NOT \memoriaDados|ram~33_q\;
\memoriaDados|ALT_INV_ram~17_q\ <= NOT \memoriaDados|ram~17_q\;
\memoriaDados|ALT_INV_ram~538_combout\ <= NOT \memoriaDados|ram~538_combout\;
\memoriaDados|ALT_INV_ram~73_q\ <= NOT \memoriaDados|ram~73_q\;
\memoriaDados|ALT_INV_ram~313_q\ <= NOT \memoriaDados|ram~313_q\;
\memoriaDados|ALT_INV_ram~537_combout\ <= NOT \memoriaDados|ram~537_combout\;
\memoriaDados|ALT_INV_ram~41_q\ <= NOT \memoriaDados|ram~41_q\;
\memoriaDados|ALT_INV_ram~536_combout\ <= NOT \memoriaDados|ram~536_combout\;
\memoriaDados|ALT_INV_ram~535_combout\ <= NOT \memoriaDados|ram~535_combout\;
\memoriaDados|ALT_INV_ram~64_q\ <= NOT \memoriaDados|ram~64_q\;
\memoriaDados|ALT_INV_ram~72_q\ <= NOT \memoriaDados|ram~72_q\;
\memoriaDados|ALT_INV_ram~32_q\ <= NOT \memoriaDados|ram~32_q\;
\memoriaDados|ALT_INV_ram~40_q\ <= NOT \memoriaDados|ram~40_q\;
\memoriaDados|ALT_INV_ram~534_combout\ <= NOT \memoriaDados|ram~534_combout\;
\memoriaDados|ALT_INV_ram~312_q\ <= NOT \memoriaDados|ram~312_q\;
\memoriaDados|ALT_INV_ram~533_combout\ <= NOT \memoriaDados|ram~533_combout\;
\memoriaDados|ALT_INV_ram~16_q\ <= NOT \memoriaDados|ram~16_q\;
\CPU|Decoder|ALT_INV_Operacao~0_combout\ <= NOT \CPU|Decoder|Operacao~0_combout\;
\memoriaDados|ALT_INV_ram~532_combout\ <= NOT \memoriaDados|ram~532_combout\;
\memoriaDados|ALT_INV_ram~531_combout\ <= NOT \memoriaDados|ram~531_combout\;
\memoriaDados|ALT_INV_ram~63_q\ <= NOT \memoriaDados|ram~63_q\;
\memoriaDados|ALT_INV_ram~530_combout\ <= NOT \memoriaDados|ram~530_combout\;
\memoriaDados|ALT_INV_ram~31_q\ <= NOT \memoriaDados|ram~31_q\;
\memoriaDados|ALT_INV_ram~15_q\ <= NOT \memoriaDados|ram~15_q\;
\memoriaDados|ALT_INV_ram~529_combout\ <= NOT \memoriaDados|ram~529_combout\;
\memoriaDados|ALT_INV_ram~71_q\ <= NOT \memoriaDados|ram~71_q\;
\memoriaDados|ALT_INV_ram~311_q\ <= NOT \memoriaDados|ram~311_q\;
\memoriaDados|ALT_INV_ram~528_combout\ <= NOT \memoriaDados|ram~528_combout\;
\memoriaDados|ALT_INV_ram~39_q\ <= NOT \memoriaDados|ram~39_q\;
\CPU|Decoder|ALT_INV_Equal5~1_combout\ <= NOT \CPU|Decoder|Equal5~1_combout\;
\memoriaDados|ALT_INV_ram~527_combout\ <= NOT \memoriaDados|ram~527_combout\;
\ALT_INV_ANDLEDR8~0_combout\ <= NOT \ANDLEDR8~0_combout\;
\ALT_INV_AND_HEX3~0_combout\ <= NOT \AND_HEX3~0_combout\;
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
\ROM1|ALT_INV_memROM~16_combout\ <= NOT \ROM1|memROM~16_combout\;
\ROM1|ALT_INV_memROM~15_combout\ <= NOT \ROM1|memROM~15_combout\;
\ROM1|ALT_INV_memROM~14_combout\ <= NOT \ROM1|memROM~14_combout\;
\ROM1|ALT_INV_memROM~13_combout\ <= NOT \ROM1|memROM~13_combout\;
\ROM1|ALT_INV_memROM~12_combout\ <= NOT \ROM1|memROM~12_combout\;
\ROM1|ALT_INV_memROM~11_combout\ <= NOT \ROM1|memROM~11_combout\;
\ROM1|ALT_INV_memROM~9_combout\ <= NOT \ROM1|memROM~9_combout\;
\ROM1|ALT_INV_memROM~8_combout\ <= NOT \ROM1|memROM~8_combout\;
\ROM1|ALT_INV_memROM~20_combout\ <= NOT \ROM1|memROM~20_combout\;
\ROM1|ALT_INV_memROM~19_combout\ <= NOT \ROM1|memROM~19_combout\;
\ROM1|ALT_INV_memROM~18_combout\ <= NOT \ROM1|memROM~18_combout\;
\memoriaDados|ALT_INV_process_0~0_combout\ <= NOT \memoriaDados|process_0~0_combout\;
\ROM1|ALT_INV_memROM~17_combout\ <= NOT \ROM1|memROM~17_combout\;
\memoriaDados|ALT_INV_ram~562_combout\ <= NOT \memoriaDados|ram~562_combout\;
\memoriaDados|ALT_INV_ram~561_combout\ <= NOT \memoriaDados|ram~561_combout\;
\memoriaDados|ALT_INV_ram~318_q\ <= NOT \memoriaDados|ram~318_q\;
\memoriaDados|ALT_INV_ram~560_combout\ <= NOT \memoriaDados|ram~560_combout\;
\memoriaDados|ALT_INV_ram~70_q\ <= NOT \memoriaDados|ram~70_q\;
\memoriaDados|ALT_INV_ram~78_q\ <= NOT \memoriaDados|ram~78_q\;
\memoriaDados|ALT_INV_ram~559_combout\ <= NOT \memoriaDados|ram~559_combout\;
\memoriaDados|ALT_INV_ram~38_q\ <= NOT \memoriaDados|ram~38_q\;
\memoriaDados|ALT_INV_ram~46_q\ <= NOT \memoriaDados|ram~46_q\;
\memoriaDados|ALT_INV_ram~22_q\ <= NOT \memoriaDados|ram~22_q\;
\memoriaDados|ALT_INV_ram~558_combout\ <= NOT \memoriaDados|ram~558_combout\;
\memoriaDados|ALT_INV_ram~557_combout\ <= NOT \memoriaDados|ram~557_combout\;
\memoriaDados|ALT_INV_ram~317_q\ <= NOT \memoriaDados|ram~317_q\;
\memoriaDados|ALT_INV_ram~556_combout\ <= NOT \memoriaDados|ram~556_combout\;
\memoriaDados|ALT_INV_ram~69_q\ <= NOT \memoriaDados|ram~69_q\;
\memoriaDados|ALT_INV_ram~37_q\ <= NOT \memoriaDados|ram~37_q\;
\memoriaDados|ALT_INV_ram~21_q\ <= NOT \memoriaDados|ram~21_q\;
\memoriaDados|ALT_INV_ram~555_combout\ <= NOT \memoriaDados|ram~555_combout\;
\memoriaDados|ALT_INV_ram~77_q\ <= NOT \memoriaDados|ram~77_q\;
\memoriaDados|ALT_INV_ram~45_q\ <= NOT \memoriaDados|ram~45_q\;
\memoriaDados|ALT_INV_ram~554_combout\ <= NOT \memoriaDados|ram~554_combout\;
\memoriaDados|ALT_INV_ram~553_combout\ <= NOT \memoriaDados|ram~553_combout\;
\memoriaDados|ALT_INV_ram~68_q\ <= NOT \memoriaDados|ram~68_q\;
\memoriaDados|ALT_INV_ram~76_q\ <= NOT \memoriaDados|ram~76_q\;
\memoriaDados|ALT_INV_ram~36_q\ <= NOT \memoriaDados|ram~36_q\;
\memoriaDados|ALT_INV_ram~44_q\ <= NOT \memoriaDados|ram~44_q\;
\memoriaDados|ALT_INV_ram~552_combout\ <= NOT \memoriaDados|ram~552_combout\;
\memoriaDados|ALT_INV_ram~316_q\ <= NOT \memoriaDados|ram~316_q\;
\memoriaDados|ALT_INV_ram~551_combout\ <= NOT \memoriaDados|ram~551_combout\;
\memoriaDados|ALT_INV_ram~20_q\ <= NOT \memoriaDados|ram~20_q\;
\memoriaDados|ALT_INV_ram~550_combout\ <= NOT \memoriaDados|ram~550_combout\;
\memoriaDados|ALT_INV_ram~549_combout\ <= NOT \memoriaDados|ram~549_combout\;
\memoriaDados|ALT_INV_ram~67_q\ <= NOT \memoriaDados|ram~67_q\;
\memoriaDados|ALT_INV_ram~548_combout\ <= NOT \memoriaDados|ram~548_combout\;
\memoriaDados|ALT_INV_ram~35_q\ <= NOT \memoriaDados|ram~35_q\;
\memoriaDados|ALT_INV_ram~19_q\ <= NOT \memoriaDados|ram~19_q\;
\memoriaDados|ALT_INV_ram~547_combout\ <= NOT \memoriaDados|ram~547_combout\;
\memoriaDados|ALT_INV_ram~75_q\ <= NOT \memoriaDados|ram~75_q\;
\memoriaDados|ALT_INV_ram~315_q\ <= NOT \memoriaDados|ram~315_q\;
\memoriaDados|ALT_INV_ram~546_combout\ <= NOT \memoriaDados|ram~546_combout\;
\memoriaDados|ALT_INV_ram~43_q\ <= NOT \memoriaDados|ram~43_q\;
\memoriaDados|ALT_INV_ram~545_combout\ <= NOT \memoriaDados|ram~545_combout\;
\memoriaDados|ALT_INV_ram~544_combout\ <= NOT \memoriaDados|ram~544_combout\;

\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(0));

\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(1));

\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(2));

\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(3));

\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(4));

\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(5));

\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(6));

\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(7));

\LEDR8~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGLEDR8|DOUT~q\,
	devoe => ww_devoe,
	o => ww_LEDR8);

\LEDR9~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGLEDR9|DOUT~q\,
	devoe => ww_devoe,
	o => ww_LEDR9);

\saida_ROM[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~2_combout\,
	devoe => ww_devoe,
	o => ww_saida_ROM(0));

\saida_ROM[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~4_combout\,
	devoe => ww_devoe,
	o => ww_saida_ROM(1));

\saida_ROM[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~6_combout\,
	devoe => ww_devoe,
	o => ww_saida_ROM(2));

\saida_ROM[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida_ROM(3));

\saida_ROM[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida_ROM(4));

\saida_ROM[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~8_combout\,
	devoe => ww_devoe,
	o => ww_saida_ROM(5));

\saida_ROM[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida_ROM(6));

\saida_ROM[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida_ROM(7));

\saida_ROM[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~10_combout\,
	devoe => ww_devoe,
	o => ww_saida_ROM(8));

\saida_ROM[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~12_combout\,
	devoe => ww_devoe,
	o => ww_saida_ROM(9));

\saida_ROM[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~14_combout\,
	devoe => ww_devoe,
	o => ww_saida_ROM(10));

\saida_ROM[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|ALT_INV_memROM~16_combout\,
	devoe => ww_devoe,
	o => ww_saida_ROM(11));

\saida_ROM[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida_ROM(12));

\saida_RAM[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REG1|DOUT\(0),
	devoe => ww_devoe,
	o => ww_saida_RAM(0));

\saida_RAM[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REG1|DOUT\(1),
	devoe => ww_devoe,
	o => ww_saida_RAM(1));

\saida_RAM[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REG1|DOUT\(2),
	devoe => ww_devoe,
	o => ww_saida_RAM(2));

\saida_RAM[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REG1|DOUT\(3),
	devoe => ww_devoe,
	o => ww_saida_RAM(3));

\saida_RAM[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REG1|DOUT\(4),
	devoe => ww_devoe,
	o => ww_saida_RAM(4));

\saida_RAM[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REG1|DOUT\(5),
	devoe => ww_devoe,
	o => ww_saida_RAM(5));

\saida_RAM[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REG1|DOUT\(6),
	devoe => ww_devoe,
	o => ww_saida_RAM(6));

\saida_RAM[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REG1|DOUT\(7),
	devoe => ww_devoe,
	o => ww_saida_RAM(7));

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

\Teste_Endereco[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(1),
	devoe => ww_devoe,
	o => ww_Teste_Endereco(1));

\Teste_Endereco[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(2),
	devoe => ww_devoe,
	o => ww_Teste_Endereco(2));

\Teste_Endereco[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(3),
	devoe => ww_devoe,
	o => ww_Teste_Endereco(3));

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

\Teste_Endereco[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(8),
	devoe => ww_devoe,
	o => ww_Teste_Endereco(8));

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

\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(0));

\HEX5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(1));

\HEX5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(2));

\HEX5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(3));

\HEX5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(4));

\HEX5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(5));

\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(6));

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

\CPU|somaUm|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|somaUm|Add0~1_sumout\ = SUM(( \CPU|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \CPU|somaUm|Add0~2\ = CARRY(( \CPU|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \CPU|somaUm|Add0~1_sumout\,
	cout => \CPU|somaUm|Add0~2\);

\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(0) $ (((\CPU|PC|DOUT\(3)) # (\CPU|PC|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010001000100100001000100010010000100010001001000010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~0_combout\);

\CPU|somaUm|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|somaUm|Add0~17_sumout\ = SUM(( \CPU|PC|DOUT\(4) ) + ( GND ) + ( \CPU|somaUm|Add0~14\ ))
-- \CPU|somaUm|Add0~18\ = CARRY(( \CPU|PC|DOUT\(4) ) + ( GND ) + ( \CPU|somaUm|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	cin => \CPU|somaUm|Add0~14\,
	sumout => \CPU|somaUm|Add0~17_sumout\,
	cout => \CPU|somaUm|Add0~18\);

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

\ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~7_combout\ = (\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(1) & ((\CPU|PC|DOUT\(3)) # (\CPU|PC|DOUT\(2)))) # (\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(2)) # (!\CPU|PC|DOUT\(3))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101010100000101010101010000010101010101000001010101010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~7_combout\);

\ROM1|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~8_combout\ = (\ROM1|memROM~1_combout\ & (!\CPU|PC|DOUT\(8) & \ROM1|memROM~7_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \ROM1|memROM~8_combout\);

\ROM1|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~11_combout\ = (\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(1)) # ((!\CPU|PC|DOUT\(2)) # (!\CPU|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010100010101010101010001010101010101000101010101010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~11_combout\);

\ROM1|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~12_combout\ = (\ROM1|memROM~1_combout\ & (!\CPU|PC|DOUT\(8) & \ROM1|memROM~11_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \ROM1|memROM~12_combout\);

\ROM1|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~13_combout\ = (!\CPU|PC|DOUT\(0) & (((\CPU|PC|DOUT\(3)) # (\CPU|PC|DOUT\(2))) # (\CPU|PC|DOUT\(1))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101010101010001010101010101000101010101010100010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~13_combout\);

\ROM1|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~14_combout\ = (\ROM1|memROM~1_combout\ & (!\CPU|PC|DOUT\(8) & \ROM1|memROM~13_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \ROM1|memROM~14_combout\);

\ROM1|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~15_combout\ = (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(0) & ((\CPU|PC|DOUT\(3)) # (\CPU|PC|DOUT\(2))))) # (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(0) $ (((\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101010101001001010101010100100101010101010010010101010101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~15_combout\);

\ROM1|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~16_combout\ = (!\ROM1|memROM~1_combout\) # ((\ROM1|memROM~15_combout\) # (\CPU|PC|DOUT\(8)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111110111111101111111011111110111111101111111011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \ROM1|memROM~16_combout\);

\CPU|Decoder|Equal5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Decoder|Equal5~0_combout\ = (!\ROM1|memROM~12_combout\ & (\ROM1|memROM~14_combout\ & !\ROM1|memROM~16_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~12_combout\,
	datab => \ROM1|ALT_INV_memROM~14_combout\,
	datac => \ROM1|ALT_INV_memROM~16_combout\,
	combout => \CPU|Decoder|Equal5~0_combout\);

\CPU|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|somaUm|Add0~21_sumout\,
	asdata => \ROM1|memROM~8_combout\,
	sload => \CPU|Decoder|Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(5));

\CPU|somaUm|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|somaUm|Add0~25_sumout\ = SUM(( \CPU|PC|DOUT\(6) ) + ( GND ) + ( \CPU|somaUm|Add0~22\ ))
-- \CPU|somaUm|Add0~26\ = CARRY(( \CPU|PC|DOUT\(6) ) + ( GND ) + ( \CPU|somaUm|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(6),
	cin => \CPU|somaUm|Add0~22\,
	sumout => \CPU|somaUm|Add0~25_sumout\,
	cout => \CPU|somaUm|Add0~26\);

\~GND\ : cyclonev_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

\CPU|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|somaUm|Add0~25_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|Decoder|Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(6));

\CPU|somaUm|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|somaUm|Add0~29_sumout\ = SUM(( \CPU|PC|DOUT\(7) ) + ( GND ) + ( \CPU|somaUm|Add0~26\ ))
-- \CPU|somaUm|Add0~30\ = CARRY(( \CPU|PC|DOUT\(7) ) + ( GND ) + ( \CPU|somaUm|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	cin => \CPU|somaUm|Add0~26\,
	sumout => \CPU|somaUm|Add0~29_sumout\,
	cout => \CPU|somaUm|Add0~30\);

\CPU|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|somaUm|Add0~29_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|Decoder|Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(7));

\CPU|somaUm|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|somaUm|Add0~33_sumout\ = SUM(( \CPU|PC|DOUT\(8) ) + ( GND ) + ( \CPU|somaUm|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(8),
	cin => \CPU|somaUm|Add0~30\,
	sumout => \CPU|somaUm|Add0~33_sumout\);

\ROM1|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~9_combout\ = (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3)))) # (\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(2) & ((\CPU|PC|DOUT\(3)) # (\CPU|PC|DOUT\(1)))) # (\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT\(3))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101011000000101010101100000010101010110000001010101011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~9_combout\);

\ROM1|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~10_combout\ = (\ROM1|memROM~1_combout\ & (!\CPU|PC|DOUT\(8) & \ROM1|memROM~9_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \ROM1|memROM~10_combout\);

\CPU|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|somaUm|Add0~33_sumout\,
	asdata => \ROM1|memROM~10_combout\,
	sload => \CPU|Decoder|Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(8));

\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = (\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & !\CPU|PC|DOUT\(8)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \CPU|PC|ALT_INV_DOUT\(8),
	combout => \ROM1|memROM~2_combout\);

\CPU|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|somaUm|Add0~1_sumout\,
	asdata => \ROM1|memROM~2_combout\,
	sload => \CPU|Decoder|Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(0));

\CPU|somaUm|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|somaUm|Add0~5_sumout\ = SUM(( \CPU|PC|DOUT\(1) ) + ( GND ) + ( \CPU|somaUm|Add0~2\ ))
-- \CPU|somaUm|Add0~6\ = CARRY(( \CPU|PC|DOUT\(1) ) + ( GND ) + ( \CPU|somaUm|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	cin => \CPU|somaUm|Add0~2\,
	sumout => \CPU|somaUm|Add0~5_sumout\,
	cout => \CPU|somaUm|Add0~6\);

\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = (!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3)))) # (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(0) $ (!\CPU|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000010000000010100001000000001010000100000000101000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~3_combout\);

\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = (\ROM1|memROM~1_combout\ & (!\CPU|PC|DOUT\(8) & \ROM1|memROM~3_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \ROM1|memROM~4_combout\);

\CPU|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|somaUm|Add0~5_sumout\,
	asdata => \ROM1|memROM~4_combout\,
	sload => \CPU|Decoder|Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(1));

\CPU|somaUm|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|somaUm|Add0~9_sumout\ = SUM(( \CPU|PC|DOUT\(2) ) + ( GND ) + ( \CPU|somaUm|Add0~6\ ))
-- \CPU|somaUm|Add0~10\ = CARRY(( \CPU|PC|DOUT\(2) ) + ( GND ) + ( \CPU|somaUm|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(2),
	cin => \CPU|somaUm|Add0~6\,
	sumout => \CPU|somaUm|Add0~9_sumout\,
	cout => \CPU|somaUm|Add0~10\);

\CPU|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|somaUm|Add0~9_sumout\,
	asdata => \ROM1|memROM~6_combout\,
	sload => \CPU|Decoder|Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(2));

\CPU|somaUm|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|somaUm|Add0~13_sumout\ = SUM(( \CPU|PC|DOUT\(3) ) + ( GND ) + ( \CPU|somaUm|Add0~10\ ))
-- \CPU|somaUm|Add0~14\ = CARRY(( \CPU|PC|DOUT\(3) ) + ( GND ) + ( \CPU|somaUm|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	cin => \CPU|somaUm|Add0~10\,
	sumout => \CPU|somaUm|Add0~13_sumout\,
	cout => \CPU|somaUm|Add0~14\);

\CPU|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|somaUm|Add0~13_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|Decoder|Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(3));

\CPU|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|somaUm|Add0~17_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|Decoder|Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(4));

\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	combout => \ROM1|memROM~1_combout\);

\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(1) $ (!\CPU|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010100000000000001010000000000000101000000000000010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~5_combout\);

\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = (\ROM1|memROM~1_combout\ & (!\CPU|PC|DOUT\(8) & \ROM1|memROM~5_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \ROM1|memROM~6_combout\);

\CPU|Decoder|Equal5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Decoder|Equal5~1_combout\ = ( !\ROM1|memROM~15_combout\ & ( (\ROM1|memROM~1_combout\ & (!\CPU|PC|DOUT\(8) & (!\ROM1|memROM~11_combout\ & !\ROM1|memROM~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \CPU|Decoder|Equal5~1_combout\);

\ROM1|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~17_combout\ = (!\ROM1|memROM~0_combout\) # (!\ROM1|memROM~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111011101110111011101110111011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~17_combout\);

\memoriaDados|ram~527\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~527_combout\ = (\ROM1|memROM~1_combout\ & (!\CPU|PC|DOUT\(8) & (\ROM1|memROM~3_combout\ & !\ROM1|memROM~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \memoriaDados|ram~527_combout\);

\memoriaDados|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|process_0~0_combout\ = ( !\ROM1|memROM~13_combout\ & ( !\ROM1|memROM~15_combout\ & ( (\ROM1|memROM~1_combout\ & (!\CPU|PC|DOUT\(8) & (!\ROM1|memROM~9_combout\ & \ROM1|memROM~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \memoriaDados|process_0~0_combout\);

\memoriaDados|ram~563\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~563_combout\ = (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~6_combout\ & (\memoriaDados|ram~527_combout\ & \memoriaDados|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \memoriaDados|ALT_INV_ram~527_combout\,
	datad => \memoriaDados|ALT_INV_process_0~0_combout\,
	combout => \memoriaDados|ram~563_combout\);

\memoriaDados|ram~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(0),
	ena => \memoriaDados|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~39_q\);

\memoriaDados|ram~528\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~528_combout\ = ( !\ROM1|memROM~8_combout\ & ( \ROM1|memROM~4_combout\ & ( \memoriaDados|ram~39_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \memoriaDados|ALT_INV_ram~39_q\,
	datae => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \memoriaDados|ram~528_combout\);

\memoriaDados|ram~564\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~564_combout\ = ( \memoriaDados|process_0~0_combout\ & ( (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~4_combout\ & (\ROM1|memROM~6_combout\ & \ROM1|memROM~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	datae => \memoriaDados|ALT_INV_process_0~0_combout\,
	combout => \memoriaDados|ram~564_combout\);

\memoriaDados|ram~311\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(0),
	ena => \memoriaDados|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~311_q\);

\memoriaDados|ram~565\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~565_combout\ = (\ROM1|memROM~2_combout\ & (\ROM1|memROM~6_combout\ & (\memoriaDados|ram~527_combout\ & \memoriaDados|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \memoriaDados|ALT_INV_ram~527_combout\,
	datad => \memoriaDados|ALT_INV_process_0~0_combout\,
	combout => \memoriaDados|ram~565_combout\);

\memoriaDados|ram~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(0),
	ena => \memoriaDados|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~71_q\);

\memoriaDados|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~529_combout\ = ( !\ROM1|memROM~8_combout\ & ( \ROM1|memROM~4_combout\ & ( \memoriaDados|ram~71_q\ ) ) ) # ( \ROM1|memROM~8_combout\ & ( !\ROM1|memROM~4_combout\ & ( \memoriaDados|ram~311_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \memoriaDados|ALT_INV_ram~311_q\,
	datac => \memoriaDados|ALT_INV_ram~71_q\,
	datae => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \memoriaDados|ram~529_combout\);

\memoriaDados|ram~566\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~566_combout\ = ( \memoriaDados|process_0~0_combout\ & ( (!\ROM1|memROM~2_combout\ & (!\ROM1|memROM~4_combout\ & (!\ROM1|memROM~6_combout\ & !\ROM1|memROM~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	datae => \memoriaDados|ALT_INV_process_0~0_combout\,
	combout => \memoriaDados|ram~566_combout\);

\memoriaDados|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(0),
	ena => \memoriaDados|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~15_q\);

\memoriaDados|ram~567\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~567_combout\ = (!\ROM1|memROM~2_combout\ & (!\ROM1|memROM~6_combout\ & (\memoriaDados|ram~527_combout\ & \memoriaDados|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \memoriaDados|ALT_INV_ram~527_combout\,
	datad => \memoriaDados|ALT_INV_process_0~0_combout\,
	combout => \memoriaDados|ram~567_combout\);

\memoriaDados|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(0),
	ena => \memoriaDados|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~31_q\);

\memoriaDados|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~530_combout\ = ( !\ROM1|memROM~8_combout\ & ( \ROM1|memROM~4_combout\ & ( \memoriaDados|ram~31_q\ ) ) ) # ( !\ROM1|memROM~8_combout\ & ( !\ROM1|memROM~4_combout\ & ( \memoriaDados|ram~15_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~15_q\,
	datac => \memoriaDados|ALT_INV_ram~31_q\,
	datae => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \memoriaDados|ram~530_combout\);

\memoriaDados|ram~568\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~568_combout\ = (!\ROM1|memROM~2_combout\ & (\ROM1|memROM~6_combout\ & (\memoriaDados|ram~527_combout\ & \memoriaDados|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \memoriaDados|ALT_INV_ram~527_combout\,
	datad => \memoriaDados|ALT_INV_process_0~0_combout\,
	combout => \memoriaDados|ram~568_combout\);

\memoriaDados|ram~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(0),
	ena => \memoriaDados|ram~568_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~63_q\);

\memoriaDados|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~531_combout\ = ( !\ROM1|memROM~8_combout\ & ( \ROM1|memROM~4_combout\ & ( \memoriaDados|ram~63_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \memoriaDados|ALT_INV_ram~63_q\,
	datae => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \memoriaDados|ram~531_combout\);

\memoriaDados|ram~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~532_combout\ = ( \ROM1|memROM~6_combout\ & ( \ROM1|memROM~2_combout\ & ( \memoriaDados|ram~529_combout\ ) ) ) # ( !\ROM1|memROM~6_combout\ & ( \ROM1|memROM~2_combout\ & ( \memoriaDados|ram~528_combout\ ) ) ) # ( \ROM1|memROM~6_combout\ & 
-- ( !\ROM1|memROM~2_combout\ & ( \memoriaDados|ram~531_combout\ ) ) ) # ( !\ROM1|memROM~6_combout\ & ( !\ROM1|memROM~2_combout\ & ( \memoriaDados|ram~530_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~528_combout\,
	datab => \memoriaDados|ALT_INV_ram~529_combout\,
	datac => \memoriaDados|ALT_INV_ram~530_combout\,
	datad => \memoriaDados|ALT_INV_ram~531_combout\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \memoriaDados|ram~532_combout\);

\CPU|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~1_sumout\ = SUM(( (!\CPU|Decoder|Equal5~1_combout\ & (((\memoriaDados|ram~532_combout\)))) # (\CPU|Decoder|Equal5~1_combout\ & (!\CPU|PC|DOUT\(8) & (!\ROM1|memROM~17_combout\))) ) + ( \CPU|REG1|DOUT\(0) ) + ( !VCC ))
-- \CPU|ULA1|Add0~2\ = CARRY(( (!\CPU|Decoder|Equal5~1_combout\ & (((\memoriaDados|ram~532_combout\)))) # (\CPU|Decoder|Equal5~1_combout\ & (!\CPU|PC|DOUT\(8) & (!\ROM1|memROM~17_combout\))) ) + ( \CPU|REG1|DOUT\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000100000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_Equal5~1_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~17_combout\,
	datad => \memoriaDados|ALT_INV_ram~532_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \CPU|ULA1|Add0~1_sumout\,
	cout => \CPU|ULA1|Add0~2\);

\CPU|Decoder|Operacao~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Decoder|Operacao~0_combout\ = (!\ROM1|memROM~14_combout\ & (!\ROM1|memROM~12_combout\ $ (\ROM1|memROM~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010010000100100001001000010010000100100001001000010010000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~12_combout\,
	datab => \ROM1|ALT_INV_memROM~14_combout\,
	datac => \ROM1|ALT_INV_memROM~16_combout\,
	combout => \CPU|Decoder|Operacao~0_combout\);

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

\CPU|ULA1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~1_sumout\ = SUM(( (!\CPU|Decoder|Equal5~1_combout\ & (((!\memoriaDados|ram~532_combout\)))) # (\CPU|Decoder|Equal5~1_combout\ & (((\CPU|PC|DOUT\(8))) # (\ROM1|memROM~17_combout\))) ) + ( \CPU|REG1|DOUT\(0) ) + ( \CPU|ULA1|Add1~34_cout\ ))
-- \CPU|ULA1|Add1~2\ = CARRY(( (!\CPU|Decoder|Equal5~1_combout\ & (((!\memoriaDados|ram~532_combout\)))) # (\CPU|Decoder|Equal5~1_combout\ & (((\CPU|PC|DOUT\(8))) # (\ROM1|memROM~17_combout\))) ) + ( \CPU|REG1|DOUT\(0) ) + ( \CPU|ULA1|Add1~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001011111100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_Equal5~1_combout\,
	datab => \ROM1|ALT_INV_memROM~17_combout\,
	datac => \CPU|PC|ALT_INV_DOUT\(8),
	datad => \memoriaDados|ALT_INV_ram~532_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(0),
	cin => \CPU|ULA1|Add1~34_cout\,
	sumout => \CPU|ULA1|Add1~1_sumout\,
	cout => \CPU|ULA1|Add1~2\);

\CPU|ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[0]~0_combout\ = ( \CPU|ULA1|Add1~1_sumout\ & ( (!\CPU|Decoder|Operacao~0_combout\) # ((!\CPU|Decoder|Equal5~1_combout\ & ((\memoriaDados|ram~532_combout\))) # (\CPU|Decoder|Equal5~1_combout\ & (\ROM1|memROM~2_combout\))) ) ) # ( 
-- !\CPU|ULA1|Add1~1_sumout\ & ( (\CPU|Decoder|Operacao~0_combout\ & ((!\CPU|Decoder|Equal5~1_combout\ & ((\memoriaDados|ram~532_combout\))) # (\CPU|Decoder|Equal5~1_combout\ & (\ROM1|memROM~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011101111111110001110100000000000111011111111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \CPU|Decoder|ALT_INV_Equal5~1_combout\,
	datac => \memoriaDados|ALT_INV_ram~532_combout\,
	datad => \CPU|Decoder|ALT_INV_Operacao~0_combout\,
	datae => \CPU|ULA1|ALT_INV_Add1~1_sumout\,
	combout => \CPU|ULA1|saida[0]~0_combout\);

\CPU|ULA1|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Equal1~0_combout\ = ((!\ROM1|memROM~14_combout\) # (!\ROM1|memROM~16_combout\)) # (\ROM1|memROM~12_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110111111101111111011111110111111101111111011111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~12_combout\,
	datab => \ROM1|ALT_INV_memROM~14_combout\,
	datac => \ROM1|ALT_INV_memROM~16_combout\,
	combout => \CPU|ULA1|Equal1~0_combout\);

\CPU|Decoder|OUTPUT[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Decoder|OUTPUT[5]~0_combout\ = ( \ROM1|memROM~15_combout\ & ( (\ROM1|memROM~1_combout\ & (!\CPU|PC|DOUT\(8) & ((\ROM1|memROM~13_combout\) # (\ROM1|memROM~11_combout\)))) ) ) # ( !\ROM1|memROM~15_combout\ & ( (\ROM1|memROM~1_combout\ & 
-- (!\CPU|PC|DOUT\(8) & (!\ROM1|memROM~11_combout\ & !\ROM1|memROM~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000001000100010001000000000000000000010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \CPU|Decoder|OUTPUT[5]~0_combout\);

\CPU|REG1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~1_sumout\,
	asdata => \CPU|ULA1|saida[0]~0_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|Decoder|OUTPUT[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(0));

\AND_HEX3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_HEX3~0_combout\ = ( !\ROM1|memROM~13_combout\ & ( !\ROM1|memROM~15_combout\ & ( (\ROM1|memROM~1_combout\ & (!\CPU|PC|DOUT\(8) & (\ROM1|memROM~9_combout\ & \ROM1|memROM~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \AND_HEX3~0_combout\);

\ANDLEDR8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ANDLEDR8~0_combout\ = ( !\ROM1|memROM~7_combout\ & ( (\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & (!\CPU|PC|DOUT\(8) & !\ROM1|memROM~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000000000000000000010000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \CPU|PC|ALT_INV_DOUT\(8),
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \ANDLEDR8~0_combout\);

\REGLEDR8|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGLEDR8|DOUT~0_combout\ = ( \ANDLEDR8~0_combout\ & ( (!\ROM1|memROM~6_combout\ & ((!\AND_HEX3~0_combout\ & (\REGLEDR8|DOUT~q\)) # (\AND_HEX3~0_combout\ & ((\CPU|REG1|DOUT\(0)))))) # (\ROM1|memROM~6_combout\ & (\REGLEDR8|DOUT~q\)) ) ) # ( 
-- !\ANDLEDR8~0_combout\ & ( \REGLEDR8|DOUT~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010001110101010101010101010101010100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGLEDR8|ALT_INV_DOUT~q\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \CPU|REG1|ALT_INV_DOUT\(0),
	datad => \ALT_INV_AND_HEX3~0_combout\,
	datae => \ALT_INV_ANDLEDR8~0_combout\,
	combout => \REGLEDR8|DOUT~0_combout\);

\REGLEDR8|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGLEDR8|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLEDR8|DOUT~q\);

\REGLEDR9|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGLEDR9|DOUT~0_combout\ = ( \AND_HEX3~0_combout\ & ( \memoriaDados|ram~527_combout\ & ( (!\ROM1|memROM~2_combout\ & ((!\ROM1|memROM~6_combout\ & ((\CPU|REG1|DOUT\(0)))) # (\ROM1|memROM~6_combout\ & (\REGLEDR9|DOUT~q\)))) # (\ROM1|memROM~2_combout\ & 
-- (\REGLEDR9|DOUT~q\)) ) ) ) # ( !\AND_HEX3~0_combout\ & ( \memoriaDados|ram~527_combout\ & ( \REGLEDR9|DOUT~q\ ) ) ) # ( \AND_HEX3~0_combout\ & ( !\memoriaDados|ram~527_combout\ & ( \REGLEDR9|DOUT~q\ ) ) ) # ( !\AND_HEX3~0_combout\ & ( 
-- !\memoriaDados|ram~527_combout\ & ( \REGLEDR9|DOUT~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010001010111010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGLEDR9|ALT_INV_DOUT~q\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \CPU|REG1|ALT_INV_DOUT\(0),
	datae => \ALT_INV_AND_HEX3~0_combout\,
	dataf => \memoriaDados|ALT_INV_ram~527_combout\,
	combout => \REGLEDR9|DOUT~0_combout\);

\REGLEDR9|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGLEDR9|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLEDR9|DOUT~q\);

\ROM1|memROM~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~18_combout\ = (\ROM1|memROM~1_combout\ & \ROM1|memROM~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \ROM1|memROM~18_combout\);

\memoriaDados|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(1),
	ena => \memoriaDados|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~16_q\);

\memoriaDados|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~533_combout\ = ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~6_combout\ & ( \memoriaDados|ram~16_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \memoriaDados|ALT_INV_ram~16_q\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \memoriaDados|ram~533_combout\);

\memoriaDados|ram~312\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(1),
	ena => \memoriaDados|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~312_q\);

\memoriaDados|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~534_combout\ = ( \ROM1|memROM~2_combout\ & ( \ROM1|memROM~6_combout\ & ( \memoriaDados|ram~312_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \memoriaDados|ALT_INV_ram~312_q\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \memoriaDados|ram~534_combout\);

\memoriaDados|ram~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(1),
	ena => \memoriaDados|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~40_q\);

\memoriaDados|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(1),
	ena => \memoriaDados|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~32_q\);

\memoriaDados|ram~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(1),
	ena => \memoriaDados|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~72_q\);

\memoriaDados|ram~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(1),
	ena => \memoriaDados|ram~568_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~64_q\);

\memoriaDados|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~535_combout\ = ( \ROM1|memROM~2_combout\ & ( \ROM1|memROM~6_combout\ & ( \memoriaDados|ram~72_q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( \ROM1|memROM~6_combout\ & ( \memoriaDados|ram~64_q\ ) ) ) # ( \ROM1|memROM~2_combout\ & ( 
-- !\ROM1|memROM~6_combout\ & ( \memoriaDados|ram~40_q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~6_combout\ & ( \memoriaDados|ram~32_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~40_q\,
	datab => \memoriaDados|ALT_INV_ram~32_q\,
	datac => \memoriaDados|ALT_INV_ram~72_q\,
	datad => \memoriaDados|ALT_INV_ram~64_q\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \memoriaDados|ram~535_combout\);

\memoriaDados|ram~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~536_combout\ = ( !\ROM1|memROM~8_combout\ & ( \ROM1|memROM~4_combout\ & ( \memoriaDados|ram~535_combout\ ) ) ) # ( \ROM1|memROM~8_combout\ & ( !\ROM1|memROM~4_combout\ & ( \memoriaDados|ram~534_combout\ ) ) ) # ( !\ROM1|memROM~8_combout\ 
-- & ( !\ROM1|memROM~4_combout\ & ( \memoriaDados|ram~533_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~533_combout\,
	datab => \memoriaDados|ALT_INV_ram~534_combout\,
	datac => \memoriaDados|ALT_INV_ram~535_combout\,
	datae => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \memoriaDados|ram~536_combout\);

\CPU|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~5_sumout\ = SUM(( (!\CPU|Decoder|Equal5~1_combout\ & (((\memoriaDados|ram~536_combout\)))) # (\CPU|Decoder|Equal5~1_combout\ & (!\CPU|PC|DOUT\(8) & (\ROM1|memROM~18_combout\))) ) + ( \CPU|REG1|DOUT\(1) ) + ( \CPU|ULA1|Add0~2\ ))
-- \CPU|ULA1|Add0~6\ = CARRY(( (!\CPU|Decoder|Equal5~1_combout\ & (((\memoriaDados|ram~536_combout\)))) # (\CPU|Decoder|Equal5~1_combout\ & (!\CPU|PC|DOUT\(8) & (\ROM1|memROM~18_combout\))) ) + ( \CPU|REG1|DOUT\(1) ) + ( \CPU|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_Equal5~1_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~18_combout\,
	datad => \memoriaDados|ALT_INV_ram~536_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(1),
	cin => \CPU|ULA1|Add0~2\,
	sumout => \CPU|ULA1|Add0~5_sumout\,
	cout => \CPU|ULA1|Add0~6\);

\CPU|ULA1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~5_sumout\ = SUM(( (!\CPU|Decoder|Equal5~1_combout\ & (((!\memoriaDados|ram~536_combout\)))) # (\CPU|Decoder|Equal5~1_combout\ & (((!\ROM1|memROM~18_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( \CPU|REG1|DOUT\(1) ) + ( \CPU|ULA1|Add1~2\ ))
-- \CPU|ULA1|Add1~6\ = CARRY(( (!\CPU|Decoder|Equal5~1_combout\ & (((!\memoriaDados|ram~536_combout\)))) # (\CPU|Decoder|Equal5~1_combout\ & (((!\ROM1|memROM~18_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( \CPU|REG1|DOUT\(1) ) + ( \CPU|ULA1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_Equal5~1_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~18_combout\,
	datad => \memoriaDados|ALT_INV_ram~536_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(1),
	cin => \CPU|ULA1|Add1~2\,
	sumout => \CPU|ULA1|Add1~5_sumout\,
	cout => \CPU|ULA1|Add1~6\);

\CPU|ULA1|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[1]~1_combout\ = ( \CPU|ULA1|Add1~5_sumout\ & ( (!\CPU|Decoder|Operacao~0_combout\) # ((!\CPU|Decoder|Equal5~1_combout\ & ((\memoriaDados|ram~536_combout\))) # (\CPU|Decoder|Equal5~1_combout\ & (\ROM1|memROM~4_combout\))) ) ) # ( 
-- !\CPU|ULA1|Add1~5_sumout\ & ( (\CPU|Decoder|Operacao~0_combout\ & ((!\CPU|Decoder|Equal5~1_combout\ & ((\memoriaDados|ram~536_combout\))) # (\CPU|Decoder|Equal5~1_combout\ & (\ROM1|memROM~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101111100011111110100000001000011011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \CPU|Decoder|ALT_INV_Equal5~1_combout\,
	datac => \CPU|Decoder|ALT_INV_Operacao~0_combout\,
	datad => \memoriaDados|ALT_INV_ram~536_combout\,
	datae => \CPU|ULA1|ALT_INV_Add1~5_sumout\,
	combout => \CPU|ULA1|saida[1]~1_combout\);

\CPU|REG1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~5_sumout\,
	asdata => \CPU|ULA1|saida[1]~1_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|Decoder|OUTPUT[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(1));

\ROM1|memROM~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~19_combout\ = (\ROM1|memROM~1_combout\ & \ROM1|memROM~5_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \ROM1|memROM~19_combout\);

\memoriaDados|ram~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(2),
	ena => \memoriaDados|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~41_q\);

\memoriaDados|ram~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~537_combout\ = ( !\ROM1|memROM~8_combout\ & ( \ROM1|memROM~4_combout\ & ( \memoriaDados|ram~41_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \memoriaDados|ALT_INV_ram~41_q\,
	datae => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \memoriaDados|ram~537_combout\);

\memoriaDados|ram~313\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(2),
	ena => \memoriaDados|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~313_q\);

\memoriaDados|ram~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(2),
	ena => \memoriaDados|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~73_q\);

\memoriaDados|ram~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~538_combout\ = ( !\ROM1|memROM~8_combout\ & ( \ROM1|memROM~4_combout\ & ( \memoriaDados|ram~73_q\ ) ) ) # ( \ROM1|memROM~8_combout\ & ( !\ROM1|memROM~4_combout\ & ( \memoriaDados|ram~313_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \memoriaDados|ALT_INV_ram~313_q\,
	datac => \memoriaDados|ALT_INV_ram~73_q\,
	datae => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \memoriaDados|ram~538_combout\);

\memoriaDados|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(2),
	ena => \memoriaDados|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~17_q\);

\memoriaDados|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(2),
	ena => \memoriaDados|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~33_q\);

\memoriaDados|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~539_combout\ = ( !\ROM1|memROM~8_combout\ & ( \ROM1|memROM~4_combout\ & ( \memoriaDados|ram~33_q\ ) ) ) # ( !\ROM1|memROM~8_combout\ & ( !\ROM1|memROM~4_combout\ & ( \memoriaDados|ram~17_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~17_q\,
	datac => \memoriaDados|ALT_INV_ram~33_q\,
	datae => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \memoriaDados|ram~539_combout\);

\memoriaDados|ram~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(2),
	ena => \memoriaDados|ram~568_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~65_q\);

\memoriaDados|ram~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~540_combout\ = ( !\ROM1|memROM~8_combout\ & ( \ROM1|memROM~4_combout\ & ( \memoriaDados|ram~65_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \memoriaDados|ALT_INV_ram~65_q\,
	datae => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \memoriaDados|ram~540_combout\);

\memoriaDados|ram~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~541_combout\ = ( \ROM1|memROM~6_combout\ & ( \ROM1|memROM~2_combout\ & ( \memoriaDados|ram~538_combout\ ) ) ) # ( !\ROM1|memROM~6_combout\ & ( \ROM1|memROM~2_combout\ & ( \memoriaDados|ram~537_combout\ ) ) ) # ( \ROM1|memROM~6_combout\ & 
-- ( !\ROM1|memROM~2_combout\ & ( \memoriaDados|ram~540_combout\ ) ) ) # ( !\ROM1|memROM~6_combout\ & ( !\ROM1|memROM~2_combout\ & ( \memoriaDados|ram~539_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~537_combout\,
	datab => \memoriaDados|ALT_INV_ram~538_combout\,
	datac => \memoriaDados|ALT_INV_ram~539_combout\,
	datad => \memoriaDados|ALT_INV_ram~540_combout\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \memoriaDados|ram~541_combout\);

\CPU|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~9_sumout\ = SUM(( (!\CPU|Decoder|Equal5~1_combout\ & (((\memoriaDados|ram~541_combout\)))) # (\CPU|Decoder|Equal5~1_combout\ & (\ROM1|memROM~19_combout\ & (!\CPU|PC|DOUT\(8)))) ) + ( \CPU|REG1|DOUT\(2) ) + ( \CPU|ULA1|Add0~6\ ))
-- \CPU|ULA1|Add0~10\ = CARRY(( (!\CPU|Decoder|Equal5~1_combout\ & (((\memoriaDados|ram~541_combout\)))) # (\CPU|Decoder|Equal5~1_combout\ & (\ROM1|memROM~19_combout\ & (!\CPU|PC|DOUT\(8)))) ) + ( \CPU|REG1|DOUT\(2) ) + ( \CPU|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000001000010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_Equal5~1_combout\,
	datab => \ROM1|ALT_INV_memROM~19_combout\,
	datac => \CPU|PC|ALT_INV_DOUT\(8),
	datad => \memoriaDados|ALT_INV_ram~541_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(2),
	cin => \CPU|ULA1|Add0~6\,
	sumout => \CPU|ULA1|Add0~9_sumout\,
	cout => \CPU|ULA1|Add0~10\);

\CPU|ULA1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~9_sumout\ = SUM(( (!\CPU|Decoder|Equal5~1_combout\ & (((!\memoriaDados|ram~541_combout\)))) # (\CPU|Decoder|Equal5~1_combout\ & (((!\ROM1|memROM~19_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( \CPU|REG1|DOUT\(2) ) + ( \CPU|ULA1|Add1~6\ ))
-- \CPU|ULA1|Add1~10\ = CARRY(( (!\CPU|Decoder|Equal5~1_combout\ & (((!\memoriaDados|ram~541_combout\)))) # (\CPU|Decoder|Equal5~1_combout\ & (((!\ROM1|memROM~19_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( \CPU|REG1|DOUT\(2) ) + ( \CPU|ULA1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_Equal5~1_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~19_combout\,
	datad => \memoriaDados|ALT_INV_ram~541_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(2),
	cin => \CPU|ULA1|Add1~6\,
	sumout => \CPU|ULA1|Add1~9_sumout\,
	cout => \CPU|ULA1|Add1~10\);

\CPU|ULA1|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[2]~2_combout\ = ( \CPU|ULA1|Add1~9_sumout\ & ( (!\CPU|Decoder|Operacao~0_combout\) # ((!\CPU|Decoder|Equal5~1_combout\ & ((\memoriaDados|ram~541_combout\))) # (\CPU|Decoder|Equal5~1_combout\ & (\ROM1|memROM~6_combout\))) ) ) # ( 
-- !\CPU|ULA1|Add1~9_sumout\ & ( (\CPU|Decoder|Operacao~0_combout\ & ((!\CPU|Decoder|Equal5~1_combout\ & ((\memoriaDados|ram~541_combout\))) # (\CPU|Decoder|Equal5~1_combout\ & (\ROM1|memROM~6_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101111100011111110100000001000011011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datab => \CPU|Decoder|ALT_INV_Equal5~1_combout\,
	datac => \CPU|Decoder|ALT_INV_Operacao~0_combout\,
	datad => \memoriaDados|ALT_INV_ram~541_combout\,
	datae => \CPU|ULA1|ALT_INV_Add1~9_sumout\,
	combout => \CPU|ULA1|saida[2]~2_combout\);

\CPU|REG1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~9_sumout\,
	asdata => \CPU|ULA1|saida[2]~2_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|Decoder|OUTPUT[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(2));

\memoriaDados|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(3),
	ena => \memoriaDados|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~18_q\);

\memoriaDados|ram~542\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~542_combout\ = ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~6_combout\ & ( \memoriaDados|ram~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \memoriaDados|ALT_INV_ram~18_q\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \memoriaDados|ram~542_combout\);

\memoriaDados|ram~314\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(3),
	ena => \memoriaDados|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~314_q\);

\memoriaDados|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~543_combout\ = ( \ROM1|memROM~2_combout\ & ( \ROM1|memROM~6_combout\ & ( \memoriaDados|ram~314_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \memoriaDados|ALT_INV_ram~314_q\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \memoriaDados|ram~543_combout\);

\memoriaDados|ram~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(3),
	ena => \memoriaDados|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~42_q\);

\memoriaDados|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(3),
	ena => \memoriaDados|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~34_q\);

\memoriaDados|ram~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(3),
	ena => \memoriaDados|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~74_q\);

\memoriaDados|ram~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(3),
	ena => \memoriaDados|ram~568_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~66_q\);

\memoriaDados|ram~544\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~544_combout\ = ( \ROM1|memROM~2_combout\ & ( \ROM1|memROM~6_combout\ & ( \memoriaDados|ram~74_q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( \ROM1|memROM~6_combout\ & ( \memoriaDados|ram~66_q\ ) ) ) # ( \ROM1|memROM~2_combout\ & ( 
-- !\ROM1|memROM~6_combout\ & ( \memoriaDados|ram~42_q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~6_combout\ & ( \memoriaDados|ram~34_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~42_q\,
	datab => \memoriaDados|ALT_INV_ram~34_q\,
	datac => \memoriaDados|ALT_INV_ram~74_q\,
	datad => \memoriaDados|ALT_INV_ram~66_q\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \memoriaDados|ram~544_combout\);

\memoriaDados|ram~545\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~545_combout\ = ( !\ROM1|memROM~8_combout\ & ( \ROM1|memROM~4_combout\ & ( \memoriaDados|ram~544_combout\ ) ) ) # ( \ROM1|memROM~8_combout\ & ( !\ROM1|memROM~4_combout\ & ( \memoriaDados|ram~543_combout\ ) ) ) # ( !\ROM1|memROM~8_combout\ 
-- & ( !\ROM1|memROM~4_combout\ & ( \memoriaDados|ram~542_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~542_combout\,
	datab => \memoriaDados|ALT_INV_ram~543_combout\,
	datac => \memoriaDados|ALT_INV_ram~544_combout\,
	datae => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \memoriaDados|ram~545_combout\);

\CPU|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~13_sumout\ = SUM(( (!\CPU|Decoder|Equal5~1_combout\ & \memoriaDados|ram~545_combout\) ) + ( \CPU|REG1|DOUT\(3) ) + ( \CPU|ULA1|Add0~10\ ))
-- \CPU|ULA1|Add0~14\ = CARRY(( (!\CPU|Decoder|Equal5~1_combout\ & \memoriaDados|ram~545_combout\) ) + ( \CPU|REG1|DOUT\(3) ) + ( \CPU|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_Equal5~1_combout\,
	datad => \memoriaDados|ALT_INV_ram~545_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(3),
	cin => \CPU|ULA1|Add0~10\,
	sumout => \CPU|ULA1|Add0~13_sumout\,
	cout => \CPU|ULA1|Add0~14\);

\CPU|ULA1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~13_sumout\ = SUM(( (!\memoriaDados|ram~545_combout\) # (\CPU|Decoder|Equal5~1_combout\) ) + ( \CPU|REG1|DOUT\(3) ) + ( \CPU|ULA1|Add1~10\ ))
-- \CPU|ULA1|Add1~14\ = CARRY(( (!\memoriaDados|ram~545_combout\) # (\CPU|Decoder|Equal5~1_combout\) ) + ( \CPU|REG1|DOUT\(3) ) + ( \CPU|ULA1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_Equal5~1_combout\,
	datad => \memoriaDados|ALT_INV_ram~545_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(3),
	cin => \CPU|ULA1|Add1~10\,
	sumout => \CPU|ULA1|Add1~13_sumout\,
	cout => \CPU|ULA1|Add1~14\);

\CPU|ULA1|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[3]~3_combout\ = (!\CPU|Decoder|Operacao~0_combout\ & (((\CPU|ULA1|Add1~13_sumout\)))) # (\CPU|Decoder|Operacao~0_combout\ & (!\CPU|Decoder|Equal5~1_combout\ & (\memoriaDados|ram~545_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011001110000000101100111000000010110011100000001011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_Equal5~1_combout\,
	datab => \CPU|Decoder|ALT_INV_Operacao~0_combout\,
	datac => \memoriaDados|ALT_INV_ram~545_combout\,
	datad => \CPU|ULA1|ALT_INV_Add1~13_sumout\,
	combout => \CPU|ULA1|saida[3]~3_combout\);

\CPU|REG1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~13_sumout\,
	asdata => \CPU|ULA1|saida[3]~3_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|Decoder|OUTPUT[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(3));

\memoriaDados|ram~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(4),
	ena => \memoriaDados|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~43_q\);

\memoriaDados|ram~546\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~546_combout\ = ( !\ROM1|memROM~8_combout\ & ( \ROM1|memROM~4_combout\ & ( \memoriaDados|ram~43_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \memoriaDados|ALT_INV_ram~43_q\,
	datae => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \memoriaDados|ram~546_combout\);

\memoriaDados|ram~315\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(4),
	ena => \memoriaDados|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~315_q\);

\memoriaDados|ram~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(4),
	ena => \memoriaDados|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~75_q\);

\memoriaDados|ram~547\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~547_combout\ = ( !\ROM1|memROM~8_combout\ & ( \ROM1|memROM~4_combout\ & ( \memoriaDados|ram~75_q\ ) ) ) # ( \ROM1|memROM~8_combout\ & ( !\ROM1|memROM~4_combout\ & ( \memoriaDados|ram~315_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \memoriaDados|ALT_INV_ram~315_q\,
	datac => \memoriaDados|ALT_INV_ram~75_q\,
	datae => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \memoriaDados|ram~547_combout\);

\memoriaDados|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(4),
	ena => \memoriaDados|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~19_q\);

\memoriaDados|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(4),
	ena => \memoriaDados|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~35_q\);

\memoriaDados|ram~548\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~548_combout\ = ( !\ROM1|memROM~8_combout\ & ( \ROM1|memROM~4_combout\ & ( \memoriaDados|ram~35_q\ ) ) ) # ( !\ROM1|memROM~8_combout\ & ( !\ROM1|memROM~4_combout\ & ( \memoriaDados|ram~19_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~19_q\,
	datac => \memoriaDados|ALT_INV_ram~35_q\,
	datae => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \memoriaDados|ram~548_combout\);

\memoriaDados|ram~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(4),
	ena => \memoriaDados|ram~568_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~67_q\);

\memoriaDados|ram~549\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~549_combout\ = ( !\ROM1|memROM~8_combout\ & ( \ROM1|memROM~4_combout\ & ( \memoriaDados|ram~67_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \memoriaDados|ALT_INV_ram~67_q\,
	datae => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \memoriaDados|ram~549_combout\);

\memoriaDados|ram~550\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~550_combout\ = ( \ROM1|memROM~6_combout\ & ( \ROM1|memROM~2_combout\ & ( \memoriaDados|ram~547_combout\ ) ) ) # ( !\ROM1|memROM~6_combout\ & ( \ROM1|memROM~2_combout\ & ( \memoriaDados|ram~546_combout\ ) ) ) # ( \ROM1|memROM~6_combout\ & 
-- ( !\ROM1|memROM~2_combout\ & ( \memoriaDados|ram~549_combout\ ) ) ) # ( !\ROM1|memROM~6_combout\ & ( !\ROM1|memROM~2_combout\ & ( \memoriaDados|ram~548_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~546_combout\,
	datab => \memoriaDados|ALT_INV_ram~547_combout\,
	datac => \memoriaDados|ALT_INV_ram~548_combout\,
	datad => \memoriaDados|ALT_INV_ram~549_combout\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \memoriaDados|ram~550_combout\);

\CPU|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~17_sumout\ = SUM(( (!\CPU|Decoder|Equal5~1_combout\ & \memoriaDados|ram~550_combout\) ) + ( \CPU|REG1|DOUT\(4) ) + ( \CPU|ULA1|Add0~14\ ))
-- \CPU|ULA1|Add0~18\ = CARRY(( (!\CPU|Decoder|Equal5~1_combout\ & \memoriaDados|ram~550_combout\) ) + ( \CPU|REG1|DOUT\(4) ) + ( \CPU|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_Equal5~1_combout\,
	datad => \memoriaDados|ALT_INV_ram~550_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(4),
	cin => \CPU|ULA1|Add0~14\,
	sumout => \CPU|ULA1|Add0~17_sumout\,
	cout => \CPU|ULA1|Add0~18\);

\CPU|ULA1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~17_sumout\ = SUM(( (!\memoriaDados|ram~550_combout\) # (\CPU|Decoder|Equal5~1_combout\) ) + ( \CPU|REG1|DOUT\(4) ) + ( \CPU|ULA1|Add1~14\ ))
-- \CPU|ULA1|Add1~18\ = CARRY(( (!\memoriaDados|ram~550_combout\) # (\CPU|Decoder|Equal5~1_combout\) ) + ( \CPU|REG1|DOUT\(4) ) + ( \CPU|ULA1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_Equal5~1_combout\,
	datad => \memoriaDados|ALT_INV_ram~550_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(4),
	cin => \CPU|ULA1|Add1~14\,
	sumout => \CPU|ULA1|Add1~17_sumout\,
	cout => \CPU|ULA1|Add1~18\);

\CPU|ULA1|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[4]~4_combout\ = (!\CPU|Decoder|Operacao~0_combout\ & (((\CPU|ULA1|Add1~17_sumout\)))) # (\CPU|Decoder|Operacao~0_combout\ & (!\CPU|Decoder|Equal5~1_combout\ & (\memoriaDados|ram~550_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011001110000000101100111000000010110011100000001011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_Equal5~1_combout\,
	datab => \CPU|Decoder|ALT_INV_Operacao~0_combout\,
	datac => \memoriaDados|ALT_INV_ram~550_combout\,
	datad => \CPU|ULA1|ALT_INV_Add1~17_sumout\,
	combout => \CPU|ULA1|saida[4]~4_combout\);

\CPU|REG1|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~17_sumout\,
	asdata => \CPU|ULA1|saida[4]~4_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|Decoder|OUTPUT[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(4));

\ROM1|memROM~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~20_combout\ = (\ROM1|memROM~1_combout\ & \ROM1|memROM~7_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \ROM1|memROM~20_combout\);

\memoriaDados|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(5),
	ena => \memoriaDados|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~20_q\);

\memoriaDados|ram~551\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~551_combout\ = ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~6_combout\ & ( \memoriaDados|ram~20_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \memoriaDados|ALT_INV_ram~20_q\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \memoriaDados|ram~551_combout\);

\memoriaDados|ram~316\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(5),
	ena => \memoriaDados|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~316_q\);

\memoriaDados|ram~552\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~552_combout\ = ( \ROM1|memROM~2_combout\ & ( \ROM1|memROM~6_combout\ & ( \memoriaDados|ram~316_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \memoriaDados|ALT_INV_ram~316_q\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \memoriaDados|ram~552_combout\);

\memoriaDados|ram~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(5),
	ena => \memoriaDados|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~44_q\);

\memoriaDados|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(5),
	ena => \memoriaDados|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~36_q\);

\memoriaDados|ram~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(5),
	ena => \memoriaDados|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~76_q\);

\memoriaDados|ram~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(5),
	ena => \memoriaDados|ram~568_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~68_q\);

\memoriaDados|ram~553\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~553_combout\ = ( \ROM1|memROM~2_combout\ & ( \ROM1|memROM~6_combout\ & ( \memoriaDados|ram~76_q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( \ROM1|memROM~6_combout\ & ( \memoriaDados|ram~68_q\ ) ) ) # ( \ROM1|memROM~2_combout\ & ( 
-- !\ROM1|memROM~6_combout\ & ( \memoriaDados|ram~44_q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~6_combout\ & ( \memoriaDados|ram~36_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~44_q\,
	datab => \memoriaDados|ALT_INV_ram~36_q\,
	datac => \memoriaDados|ALT_INV_ram~76_q\,
	datad => \memoriaDados|ALT_INV_ram~68_q\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \memoriaDados|ram~553_combout\);

\memoriaDados|ram~554\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~554_combout\ = ( !\ROM1|memROM~8_combout\ & ( \ROM1|memROM~4_combout\ & ( \memoriaDados|ram~553_combout\ ) ) ) # ( \ROM1|memROM~8_combout\ & ( !\ROM1|memROM~4_combout\ & ( \memoriaDados|ram~552_combout\ ) ) ) # ( !\ROM1|memROM~8_combout\ 
-- & ( !\ROM1|memROM~4_combout\ & ( \memoriaDados|ram~551_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~551_combout\,
	datab => \memoriaDados|ALT_INV_ram~552_combout\,
	datac => \memoriaDados|ALT_INV_ram~553_combout\,
	datae => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \memoriaDados|ram~554_combout\);

\CPU|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~21_sumout\ = SUM(( (!\CPU|Decoder|Equal5~1_combout\ & (((\memoriaDados|ram~554_combout\)))) # (\CPU|Decoder|Equal5~1_combout\ & (\ROM1|memROM~20_combout\ & (!\CPU|PC|DOUT\(8)))) ) + ( \CPU|REG1|DOUT\(5) ) + ( \CPU|ULA1|Add0~18\ ))
-- \CPU|ULA1|Add0~22\ = CARRY(( (!\CPU|Decoder|Equal5~1_combout\ & (((\memoriaDados|ram~554_combout\)))) # (\CPU|Decoder|Equal5~1_combout\ & (\ROM1|memROM~20_combout\ & (!\CPU|PC|DOUT\(8)))) ) + ( \CPU|REG1|DOUT\(5) ) + ( \CPU|ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000001000010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_Equal5~1_combout\,
	datab => \ROM1|ALT_INV_memROM~20_combout\,
	datac => \CPU|PC|ALT_INV_DOUT\(8),
	datad => \memoriaDados|ALT_INV_ram~554_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(5),
	cin => \CPU|ULA1|Add0~18\,
	sumout => \CPU|ULA1|Add0~21_sumout\,
	cout => \CPU|ULA1|Add0~22\);

\CPU|ULA1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~21_sumout\ = SUM(( (!\CPU|Decoder|Equal5~1_combout\ & (((!\memoriaDados|ram~554_combout\)))) # (\CPU|Decoder|Equal5~1_combout\ & ((!\ROM1|memROM~20_combout\) # ((\CPU|PC|DOUT\(8))))) ) + ( \CPU|REG1|DOUT\(5) ) + ( \CPU|ULA1|Add1~18\ ))
-- \CPU|ULA1|Add1~22\ = CARRY(( (!\CPU|Decoder|Equal5~1_combout\ & (((!\memoriaDados|ram~554_combout\)))) # (\CPU|Decoder|Equal5~1_combout\ & ((!\ROM1|memROM~20_combout\) # ((\CPU|PC|DOUT\(8))))) ) + ( \CPU|REG1|DOUT\(5) ) + ( \CPU|ULA1|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110111101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_Equal5~1_combout\,
	datab => \ROM1|ALT_INV_memROM~20_combout\,
	datac => \CPU|PC|ALT_INV_DOUT\(8),
	datad => \memoriaDados|ALT_INV_ram~554_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(5),
	cin => \CPU|ULA1|Add1~18\,
	sumout => \CPU|ULA1|Add1~21_sumout\,
	cout => \CPU|ULA1|Add1~22\);

\CPU|ULA1|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[5]~5_combout\ = ( \CPU|ULA1|Add1~21_sumout\ & ( (!\CPU|Decoder|Operacao~0_combout\) # ((!\CPU|Decoder|Equal5~1_combout\ & ((\memoriaDados|ram~554_combout\))) # (\CPU|Decoder|Equal5~1_combout\ & (\ROM1|memROM~8_combout\))) ) ) # ( 
-- !\CPU|ULA1|Add1~21_sumout\ & ( (\CPU|Decoder|Operacao~0_combout\ & ((!\CPU|Decoder|Equal5~1_combout\ & ((\memoriaDados|ram~554_combout\))) # (\CPU|Decoder|Equal5~1_combout\ & (\ROM1|memROM~8_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101111100011111110100000001000011011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datab => \CPU|Decoder|ALT_INV_Equal5~1_combout\,
	datac => \CPU|Decoder|ALT_INV_Operacao~0_combout\,
	datad => \memoriaDados|ALT_INV_ram~554_combout\,
	datae => \CPU|ULA1|ALT_INV_Add1~21_sumout\,
	combout => \CPU|ULA1|saida[5]~5_combout\);

\CPU|REG1|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~21_sumout\,
	asdata => \CPU|ULA1|saida[5]~5_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|Decoder|OUTPUT[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(5));

\memoriaDados|ram~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(6),
	ena => \memoriaDados|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~45_q\);

\memoriaDados|ram~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(6),
	ena => \memoriaDados|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~77_q\);

\memoriaDados|ram~555\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~555_combout\ = ( \ROM1|memROM~6_combout\ & ( \ROM1|memROM~4_combout\ & ( \memoriaDados|ram~77_q\ ) ) ) # ( !\ROM1|memROM~6_combout\ & ( \ROM1|memROM~4_combout\ & ( \memoriaDados|ram~45_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \memoriaDados|ALT_INV_ram~45_q\,
	datad => \memoriaDados|ALT_INV_ram~77_q\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \memoriaDados|ram~555_combout\);

\memoriaDados|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(6),
	ena => \memoriaDados|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~21_q\);

\memoriaDados|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(6),
	ena => \memoriaDados|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~37_q\);

\memoriaDados|ram~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(6),
	ena => \memoriaDados|ram~568_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~69_q\);

\memoriaDados|ram~556\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~556_combout\ = ( \ROM1|memROM~6_combout\ & ( \ROM1|memROM~4_combout\ & ( \memoriaDados|ram~69_q\ ) ) ) # ( !\ROM1|memROM~6_combout\ & ( \ROM1|memROM~4_combout\ & ( \memoriaDados|ram~37_q\ ) ) ) # ( !\ROM1|memROM~6_combout\ & ( 
-- !\ROM1|memROM~4_combout\ & ( \memoriaDados|ram~21_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~21_q\,
	datac => \memoriaDados|ALT_INV_ram~37_q\,
	datad => \memoriaDados|ALT_INV_ram~69_q\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \memoriaDados|ram~556_combout\);

\memoriaDados|ram~317\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(6),
	ena => \memoriaDados|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~317_q\);

\memoriaDados|ram~557\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~557_combout\ = ( \ROM1|memROM~6_combout\ & ( !\ROM1|memROM~4_combout\ & ( \memoriaDados|ram~317_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \memoriaDados|ALT_INV_ram~317_q\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \memoriaDados|ram~557_combout\);

\memoriaDados|ram~558\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~558_combout\ = ( \ROM1|memROM~2_combout\ & ( \ROM1|memROM~8_combout\ & ( \memoriaDados|ram~557_combout\ ) ) ) # ( \ROM1|memROM~2_combout\ & ( !\ROM1|memROM~8_combout\ & ( \memoriaDados|ram~555_combout\ ) ) ) # ( !\ROM1|memROM~2_combout\ 
-- & ( !\ROM1|memROM~8_combout\ & ( \memoriaDados|ram~556_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~555_combout\,
	datab => \memoriaDados|ALT_INV_ram~556_combout\,
	datac => \memoriaDados|ALT_INV_ram~557_combout\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \memoriaDados|ram~558_combout\);

\CPU|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~25_sumout\ = SUM(( (!\CPU|Decoder|Equal5~1_combout\ & \memoriaDados|ram~558_combout\) ) + ( \CPU|REG1|DOUT\(6) ) + ( \CPU|ULA1|Add0~22\ ))
-- \CPU|ULA1|Add0~26\ = CARRY(( (!\CPU|Decoder|Equal5~1_combout\ & \memoriaDados|ram~558_combout\) ) + ( \CPU|REG1|DOUT\(6) ) + ( \CPU|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_Equal5~1_combout\,
	datad => \memoriaDados|ALT_INV_ram~558_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(6),
	cin => \CPU|ULA1|Add0~22\,
	sumout => \CPU|ULA1|Add0~25_sumout\,
	cout => \CPU|ULA1|Add0~26\);

\CPU|ULA1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~25_sumout\ = SUM(( (!\memoriaDados|ram~558_combout\) # (\CPU|Decoder|Equal5~1_combout\) ) + ( \CPU|REG1|DOUT\(6) ) + ( \CPU|ULA1|Add1~22\ ))
-- \CPU|ULA1|Add1~26\ = CARRY(( (!\memoriaDados|ram~558_combout\) # (\CPU|Decoder|Equal5~1_combout\) ) + ( \CPU|REG1|DOUT\(6) ) + ( \CPU|ULA1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_Equal5~1_combout\,
	datad => \memoriaDados|ALT_INV_ram~558_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(6),
	cin => \CPU|ULA1|Add1~22\,
	sumout => \CPU|ULA1|Add1~25_sumout\,
	cout => \CPU|ULA1|Add1~26\);

\CPU|ULA1|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[6]~6_combout\ = (!\CPU|Decoder|Operacao~0_combout\ & (((\CPU|ULA1|Add1~25_sumout\)))) # (\CPU|Decoder|Operacao~0_combout\ & (!\CPU|Decoder|Equal5~1_combout\ & (\memoriaDados|ram~558_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011001110000000101100111000000010110011100000001011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_Equal5~1_combout\,
	datab => \CPU|Decoder|ALT_INV_Operacao~0_combout\,
	datac => \memoriaDados|ALT_INV_ram~558_combout\,
	datad => \CPU|ULA1|ALT_INV_Add1~25_sumout\,
	combout => \CPU|ULA1|saida[6]~6_combout\);

\CPU|REG1|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~25_sumout\,
	asdata => \CPU|ULA1|saida[6]~6_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|Decoder|OUTPUT[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(6));

\memoriaDados|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(7),
	ena => \memoriaDados|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~22_q\);

\memoriaDados|ram~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(7),
	ena => \memoriaDados|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~46_q\);

\memoriaDados|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(7),
	ena => \memoriaDados|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~38_q\);

\memoriaDados|ram~559\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~559_combout\ = ( \ROM1|memROM~2_combout\ & ( \ROM1|memROM~4_combout\ & ( \memoriaDados|ram~46_q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( \ROM1|memROM~4_combout\ & ( \memoriaDados|ram~38_q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( 
-- !\ROM1|memROM~4_combout\ & ( \memoriaDados|ram~22_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \memoriaDados|ALT_INV_ram~22_q\,
	datac => \memoriaDados|ALT_INV_ram~46_q\,
	datad => \memoriaDados|ALT_INV_ram~38_q\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \memoriaDados|ram~559_combout\);

\memoriaDados|ram~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(7),
	ena => \memoriaDados|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~78_q\);

\memoriaDados|ram~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(7),
	ena => \memoriaDados|ram~568_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~70_q\);

\memoriaDados|ram~560\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~560_combout\ = ( \ROM1|memROM~2_combout\ & ( \ROM1|memROM~4_combout\ & ( \memoriaDados|ram~78_q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( \ROM1|memROM~4_combout\ & ( \memoriaDados|ram~70_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \memoriaDados|ALT_INV_ram~78_q\,
	datad => \memoriaDados|ALT_INV_ram~70_q\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \memoriaDados|ram~560_combout\);

\memoriaDados|ram~318\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(7),
	ena => \memoriaDados|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~318_q\);

\memoriaDados|ram~561\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~561_combout\ = ( \ROM1|memROM~2_combout\ & ( !\ROM1|memROM~4_combout\ & ( \memoriaDados|ram~318_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~318_q\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \memoriaDados|ram~561_combout\);

\memoriaDados|ram~562\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~562_combout\ = ( \ROM1|memROM~6_combout\ & ( \ROM1|memROM~8_combout\ & ( \memoriaDados|ram~561_combout\ ) ) ) # ( \ROM1|memROM~6_combout\ & ( !\ROM1|memROM~8_combout\ & ( \memoriaDados|ram~560_combout\ ) ) ) # ( !\ROM1|memROM~6_combout\ 
-- & ( !\ROM1|memROM~8_combout\ & ( \memoriaDados|ram~559_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~559_combout\,
	datab => \memoriaDados|ALT_INV_ram~560_combout\,
	datad => \memoriaDados|ALT_INV_ram~561_combout\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \memoriaDados|ram~562_combout\);

\CPU|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~29_sumout\ = SUM(( (!\CPU|Decoder|Equal5~1_combout\ & \memoriaDados|ram~562_combout\) ) + ( \CPU|REG1|DOUT\(7) ) + ( \CPU|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_Equal5~1_combout\,
	datad => \memoriaDados|ALT_INV_ram~562_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(7),
	cin => \CPU|ULA1|Add0~26\,
	sumout => \CPU|ULA1|Add0~29_sumout\);

\CPU|ULA1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~29_sumout\ = SUM(( (!\memoriaDados|ram~562_combout\) # (\CPU|Decoder|Equal5~1_combout\) ) + ( \CPU|REG1|DOUT\(7) ) + ( \CPU|ULA1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_Equal5~1_combout\,
	datad => \memoriaDados|ALT_INV_ram~562_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(7),
	cin => \CPU|ULA1|Add1~26\,
	sumout => \CPU|ULA1|Add1~29_sumout\);

\CPU|ULA1|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[7]~7_combout\ = (!\CPU|Decoder|Operacao~0_combout\ & (((\CPU|ULA1|Add1~29_sumout\)))) # (\CPU|Decoder|Operacao~0_combout\ & (!\CPU|Decoder|Equal5~1_combout\ & (\memoriaDados|ram~562_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011001110000000101100111000000010110011100000001011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_Equal5~1_combout\,
	datab => \CPU|Decoder|ALT_INV_Operacao~0_combout\,
	datac => \memoriaDados|ALT_INV_ram~562_combout\,
	datad => \CPU|ULA1|ALT_INV_Add1~29_sumout\,
	combout => \CPU|ULA1|saida[7]~7_combout\);

\CPU|REG1|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~29_sumout\,
	asdata => \CPU|ULA1|saida[7]~7_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|Decoder|OUTPUT[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(7));

\AND_HEX0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_HEX0~0_combout\ = ( \AND_HEX3~0_combout\ & ( (!\ROM1|memROM~2_combout\ & (!\ROM1|memROM~4_combout\ & (!\ROM1|memROM~6_combout\ & \ROM1|memROM~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	datae => \ALT_INV_AND_HEX3~0_combout\,
	combout => \AND_HEX0~0_combout\);

\REG_HEX0|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(0),
	ena => \AND_HEX0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX0|DOUT\(0));

\REG_HEX0|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(3),
	ena => \AND_HEX0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX0|DOUT\(3));

\REG_HEX0|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(1),
	ena => \AND_HEX0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX0|DOUT\(1));

\REG_HEX0|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(2),
	ena => \AND_HEX0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX0|DOUT\(2));

\LED_HEX0|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX0|rascSaida7seg[0]~0_combout\ = (!\REG_HEX0|DOUT\(3) & (!\REG_HEX0|DOUT\(1) & (!\REG_HEX0|DOUT\(0) $ (!\REG_HEX0|DOUT\(2))))) # (\REG_HEX0|DOUT\(3) & (\REG_HEX0|DOUT\(0) & (!\REG_HEX0|DOUT\(1) $ (!\REG_HEX0|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX0|ALT_INV_DOUT\(0),
	datab => \REG_HEX0|ALT_INV_DOUT\(3),
	datac => \REG_HEX0|ALT_INV_DOUT\(1),
	datad => \REG_HEX0|ALT_INV_DOUT\(2),
	combout => \LED_HEX0|rascSaida7seg[0]~0_combout\);

\LED_HEX0|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX0|rascSaida7seg[1]~1_combout\ = (!\REG_HEX0|DOUT\(3) & (\REG_HEX0|DOUT\(2) & (!\REG_HEX0|DOUT\(0) $ (!\REG_HEX0|DOUT\(1))))) # (\REG_HEX0|DOUT\(3) & ((!\REG_HEX0|DOUT\(0) & ((\REG_HEX0|DOUT\(2)))) # (\REG_HEX0|DOUT\(0) & (\REG_HEX0|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX0|ALT_INV_DOUT\(0),
	datab => \REG_HEX0|ALT_INV_DOUT\(3),
	datac => \REG_HEX0|ALT_INV_DOUT\(1),
	datad => \REG_HEX0|ALT_INV_DOUT\(2),
	combout => \LED_HEX0|rascSaida7seg[1]~1_combout\);

\LED_HEX0|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX0|rascSaida7seg[2]~2_combout\ = (!\REG_HEX0|DOUT\(3) & (!\REG_HEX0|DOUT\(0) & (\REG_HEX0|DOUT\(1) & !\REG_HEX0|DOUT\(2)))) # (\REG_HEX0|DOUT\(3) & (\REG_HEX0|DOUT\(2) & ((!\REG_HEX0|DOUT\(0)) # (\REG_HEX0|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX0|ALT_INV_DOUT\(0),
	datab => \REG_HEX0|ALT_INV_DOUT\(3),
	datac => \REG_HEX0|ALT_INV_DOUT\(1),
	datad => \REG_HEX0|ALT_INV_DOUT\(2),
	combout => \LED_HEX0|rascSaida7seg[2]~2_combout\);

\LED_HEX0|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX0|rascSaida7seg[3]~3_combout\ = (!\REG_HEX0|DOUT\(1) & (!\REG_HEX0|DOUT\(3) & (!\REG_HEX0|DOUT\(0) $ (!\REG_HEX0|DOUT\(2))))) # (\REG_HEX0|DOUT\(1) & ((!\REG_HEX0|DOUT\(0) & (!\REG_HEX0|DOUT\(2) & \REG_HEX0|DOUT\(3))) # (\REG_HEX0|DOUT\(0) & 
-- (\REG_HEX0|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX0|ALT_INV_DOUT\(0),
	datab => \REG_HEX0|ALT_INV_DOUT\(1),
	datac => \REG_HEX0|ALT_INV_DOUT\(2),
	datad => \REG_HEX0|ALT_INV_DOUT\(3),
	combout => \LED_HEX0|rascSaida7seg[3]~3_combout\);

\LED_HEX0|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX0|rascSaida7seg[4]~4_combout\ = (!\REG_HEX0|DOUT\(1) & ((!\REG_HEX0|DOUT\(2) & ((\REG_HEX0|DOUT\(0)))) # (\REG_HEX0|DOUT\(2) & (!\REG_HEX0|DOUT\(3))))) # (\REG_HEX0|DOUT\(1) & (!\REG_HEX0|DOUT\(3) & ((\REG_HEX0|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX0|ALT_INV_DOUT\(3),
	datab => \REG_HEX0|ALT_INV_DOUT\(1),
	datac => \REG_HEX0|ALT_INV_DOUT\(2),
	datad => \REG_HEX0|ALT_INV_DOUT\(0),
	combout => \LED_HEX0|rascSaida7seg[4]~4_combout\);

\LED_HEX0|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX0|rascSaida7seg[5]~5_combout\ = (!\REG_HEX0|DOUT\(0) & (\REG_HEX0|DOUT\(1) & (!\REG_HEX0|DOUT\(2) & !\REG_HEX0|DOUT\(3)))) # (\REG_HEX0|DOUT\(0) & (!\REG_HEX0|DOUT\(3) $ (((!\REG_HEX0|DOUT\(1) & \REG_HEX0|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX0|ALT_INV_DOUT\(0),
	datab => \REG_HEX0|ALT_INV_DOUT\(1),
	datac => \REG_HEX0|ALT_INV_DOUT\(2),
	datad => \REG_HEX0|ALT_INV_DOUT\(3),
	combout => \LED_HEX0|rascSaida7seg[5]~5_combout\);

\LED_HEX0|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX0|rascSaida7seg[6]~6_combout\ = (!\REG_HEX0|DOUT\(0) & (!\REG_HEX0|DOUT\(1) & (!\REG_HEX0|DOUT\(3) $ (\REG_HEX0|DOUT\(2))))) # (\REG_HEX0|DOUT\(0) & (!\REG_HEX0|DOUT\(3) & (!\REG_HEX0|DOUT\(1) $ (\REG_HEX0|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX0|ALT_INV_DOUT\(0),
	datab => \REG_HEX0|ALT_INV_DOUT\(3),
	datac => \REG_HEX0|ALT_INV_DOUT\(1),
	datad => \REG_HEX0|ALT_INV_DOUT\(2),
	combout => \LED_HEX0|rascSaida7seg[6]~6_combout\);

\AND_HEX1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_HEX1~0_combout\ = ( \AND_HEX3~0_combout\ & ( (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~4_combout\ & (!\ROM1|memROM~6_combout\ & \ROM1|memROM~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	datae => \ALT_INV_AND_HEX3~0_combout\,
	combout => \AND_HEX1~0_combout\);

\REG_HEX1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(0),
	ena => \AND_HEX1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX1|DOUT\(0));

\REG_HEX1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(3),
	ena => \AND_HEX1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX1|DOUT\(3));

\REG_HEX1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(1),
	ena => \AND_HEX1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX1|DOUT\(1));

\REG_HEX1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(2),
	ena => \AND_HEX1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX1|DOUT\(2));

\LED_HEX1|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX1|rascSaida7seg[0]~0_combout\ = (!\REG_HEX1|DOUT\(3) & (!\REG_HEX1|DOUT\(1) & (!\REG_HEX1|DOUT\(0) $ (!\REG_HEX1|DOUT\(2))))) # (\REG_HEX1|DOUT\(3) & (\REG_HEX1|DOUT\(0) & (!\REG_HEX1|DOUT\(1) $ (!\REG_HEX1|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX1|ALT_INV_DOUT\(0),
	datab => \REG_HEX1|ALT_INV_DOUT\(3),
	datac => \REG_HEX1|ALT_INV_DOUT\(1),
	datad => \REG_HEX1|ALT_INV_DOUT\(2),
	combout => \LED_HEX1|rascSaida7seg[0]~0_combout\);

\LED_HEX1|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX1|rascSaida7seg[1]~1_combout\ = (!\REG_HEX1|DOUT\(3) & (\REG_HEX1|DOUT\(2) & (!\REG_HEX1|DOUT\(0) $ (!\REG_HEX1|DOUT\(1))))) # (\REG_HEX1|DOUT\(3) & ((!\REG_HEX1|DOUT\(0) & ((\REG_HEX1|DOUT\(2)))) # (\REG_HEX1|DOUT\(0) & (\REG_HEX1|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX1|ALT_INV_DOUT\(0),
	datab => \REG_HEX1|ALT_INV_DOUT\(3),
	datac => \REG_HEX1|ALT_INV_DOUT\(1),
	datad => \REG_HEX1|ALT_INV_DOUT\(2),
	combout => \LED_HEX1|rascSaida7seg[1]~1_combout\);

\LED_HEX1|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX1|rascSaida7seg[2]~2_combout\ = (!\REG_HEX1|DOUT\(3) & (!\REG_HEX1|DOUT\(0) & (\REG_HEX1|DOUT\(1) & !\REG_HEX1|DOUT\(2)))) # (\REG_HEX1|DOUT\(3) & (\REG_HEX1|DOUT\(2) & ((!\REG_HEX1|DOUT\(0)) # (\REG_HEX1|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX1|ALT_INV_DOUT\(0),
	datab => \REG_HEX1|ALT_INV_DOUT\(3),
	datac => \REG_HEX1|ALT_INV_DOUT\(1),
	datad => \REG_HEX1|ALT_INV_DOUT\(2),
	combout => \LED_HEX1|rascSaida7seg[2]~2_combout\);

\LED_HEX1|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX1|rascSaida7seg[3]~3_combout\ = (!\REG_HEX1|DOUT\(1) & (!\REG_HEX1|DOUT\(3) & (!\REG_HEX1|DOUT\(0) $ (!\REG_HEX1|DOUT\(2))))) # (\REG_HEX1|DOUT\(1) & ((!\REG_HEX1|DOUT\(0) & (!\REG_HEX1|DOUT\(2) & \REG_HEX1|DOUT\(3))) # (\REG_HEX1|DOUT\(0) & 
-- (\REG_HEX1|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX1|ALT_INV_DOUT\(0),
	datab => \REG_HEX1|ALT_INV_DOUT\(1),
	datac => \REG_HEX1|ALT_INV_DOUT\(2),
	datad => \REG_HEX1|ALT_INV_DOUT\(3),
	combout => \LED_HEX1|rascSaida7seg[3]~3_combout\);

\LED_HEX1|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX1|rascSaida7seg[4]~4_combout\ = (!\REG_HEX1|DOUT\(1) & ((!\REG_HEX1|DOUT\(2) & ((\REG_HEX1|DOUT\(0)))) # (\REG_HEX1|DOUT\(2) & (!\REG_HEX1|DOUT\(3))))) # (\REG_HEX1|DOUT\(1) & (!\REG_HEX1|DOUT\(3) & ((\REG_HEX1|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX1|ALT_INV_DOUT\(3),
	datab => \REG_HEX1|ALT_INV_DOUT\(1),
	datac => \REG_HEX1|ALT_INV_DOUT\(2),
	datad => \REG_HEX1|ALT_INV_DOUT\(0),
	combout => \LED_HEX1|rascSaida7seg[4]~4_combout\);

\LED_HEX1|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX1|rascSaida7seg[5]~5_combout\ = (!\REG_HEX1|DOUT\(0) & (\REG_HEX1|DOUT\(1) & (!\REG_HEX1|DOUT\(2) & !\REG_HEX1|DOUT\(3)))) # (\REG_HEX1|DOUT\(0) & (!\REG_HEX1|DOUT\(3) $ (((!\REG_HEX1|DOUT\(1) & \REG_HEX1|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX1|ALT_INV_DOUT\(0),
	datab => \REG_HEX1|ALT_INV_DOUT\(1),
	datac => \REG_HEX1|ALT_INV_DOUT\(2),
	datad => \REG_HEX1|ALT_INV_DOUT\(3),
	combout => \LED_HEX1|rascSaida7seg[5]~5_combout\);

\LED_HEX1|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX1|rascSaida7seg[6]~6_combout\ = (!\REG_HEX1|DOUT\(0) & (!\REG_HEX1|DOUT\(1) & (!\REG_HEX1|DOUT\(3) $ (\REG_HEX1|DOUT\(2))))) # (\REG_HEX1|DOUT\(0) & (!\REG_HEX1|DOUT\(3) & (!\REG_HEX1|DOUT\(1) $ (\REG_HEX1|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX1|ALT_INV_DOUT\(0),
	datab => \REG_HEX1|ALT_INV_DOUT\(3),
	datac => \REG_HEX1|ALT_INV_DOUT\(1),
	datad => \REG_HEX1|ALT_INV_DOUT\(2),
	combout => \LED_HEX1|rascSaida7seg[6]~6_combout\);

\AND_HEX2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_HEX2~0_combout\ = ( \AND_HEX3~0_combout\ & ( (!\ROM1|memROM~2_combout\ & (\ROM1|memROM~4_combout\ & (!\ROM1|memROM~6_combout\ & \ROM1|memROM~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	datae => \ALT_INV_AND_HEX3~0_combout\,
	combout => \AND_HEX2~0_combout\);

\REG_HEX2|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(0),
	ena => \AND_HEX2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX2|DOUT\(0));

\REG_HEX2|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(3),
	ena => \AND_HEX2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX2|DOUT\(3));

\REG_HEX2|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(1),
	ena => \AND_HEX2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX2|DOUT\(1));

\REG_HEX2|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(2),
	ena => \AND_HEX2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX2|DOUT\(2));

\LED_HEX2|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX2|rascSaida7seg[0]~0_combout\ = (!\REG_HEX2|DOUT\(3) & (!\REG_HEX2|DOUT\(1) & (!\REG_HEX2|DOUT\(0) $ (!\REG_HEX2|DOUT\(2))))) # (\REG_HEX2|DOUT\(3) & (\REG_HEX2|DOUT\(0) & (!\REG_HEX2|DOUT\(1) $ (!\REG_HEX2|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX2|ALT_INV_DOUT\(0),
	datab => \REG_HEX2|ALT_INV_DOUT\(3),
	datac => \REG_HEX2|ALT_INV_DOUT\(1),
	datad => \REG_HEX2|ALT_INV_DOUT\(2),
	combout => \LED_HEX2|rascSaida7seg[0]~0_combout\);

\LED_HEX2|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX2|rascSaida7seg[1]~1_combout\ = (!\REG_HEX2|DOUT\(3) & (\REG_HEX2|DOUT\(2) & (!\REG_HEX2|DOUT\(0) $ (!\REG_HEX2|DOUT\(1))))) # (\REG_HEX2|DOUT\(3) & ((!\REG_HEX2|DOUT\(0) & ((\REG_HEX2|DOUT\(2)))) # (\REG_HEX2|DOUT\(0) & (\REG_HEX2|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX2|ALT_INV_DOUT\(0),
	datab => \REG_HEX2|ALT_INV_DOUT\(3),
	datac => \REG_HEX2|ALT_INV_DOUT\(1),
	datad => \REG_HEX2|ALT_INV_DOUT\(2),
	combout => \LED_HEX2|rascSaida7seg[1]~1_combout\);

\LED_HEX2|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX2|rascSaida7seg[2]~2_combout\ = (!\REG_HEX2|DOUT\(3) & (!\REG_HEX2|DOUT\(0) & (\REG_HEX2|DOUT\(1) & !\REG_HEX2|DOUT\(2)))) # (\REG_HEX2|DOUT\(3) & (\REG_HEX2|DOUT\(2) & ((!\REG_HEX2|DOUT\(0)) # (\REG_HEX2|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX2|ALT_INV_DOUT\(0),
	datab => \REG_HEX2|ALT_INV_DOUT\(3),
	datac => \REG_HEX2|ALT_INV_DOUT\(1),
	datad => \REG_HEX2|ALT_INV_DOUT\(2),
	combout => \LED_HEX2|rascSaida7seg[2]~2_combout\);

\LED_HEX2|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX2|rascSaida7seg[3]~3_combout\ = (!\REG_HEX2|DOUT\(1) & (!\REG_HEX2|DOUT\(3) & (!\REG_HEX2|DOUT\(0) $ (!\REG_HEX2|DOUT\(2))))) # (\REG_HEX2|DOUT\(1) & ((!\REG_HEX2|DOUT\(0) & (!\REG_HEX2|DOUT\(2) & \REG_HEX2|DOUT\(3))) # (\REG_HEX2|DOUT\(0) & 
-- (\REG_HEX2|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX2|ALT_INV_DOUT\(0),
	datab => \REG_HEX2|ALT_INV_DOUT\(1),
	datac => \REG_HEX2|ALT_INV_DOUT\(2),
	datad => \REG_HEX2|ALT_INV_DOUT\(3),
	combout => \LED_HEX2|rascSaida7seg[3]~3_combout\);

\LED_HEX2|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX2|rascSaida7seg[4]~4_combout\ = (!\REG_HEX2|DOUT\(1) & ((!\REG_HEX2|DOUT\(2) & ((\REG_HEX2|DOUT\(0)))) # (\REG_HEX2|DOUT\(2) & (!\REG_HEX2|DOUT\(3))))) # (\REG_HEX2|DOUT\(1) & (!\REG_HEX2|DOUT\(3) & ((\REG_HEX2|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX2|ALT_INV_DOUT\(3),
	datab => \REG_HEX2|ALT_INV_DOUT\(1),
	datac => \REG_HEX2|ALT_INV_DOUT\(2),
	datad => \REG_HEX2|ALT_INV_DOUT\(0),
	combout => \LED_HEX2|rascSaida7seg[4]~4_combout\);

\LED_HEX2|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX2|rascSaida7seg[5]~5_combout\ = (!\REG_HEX2|DOUT\(0) & (\REG_HEX2|DOUT\(1) & (!\REG_HEX2|DOUT\(2) & !\REG_HEX2|DOUT\(3)))) # (\REG_HEX2|DOUT\(0) & (!\REG_HEX2|DOUT\(3) $ (((!\REG_HEX2|DOUT\(1) & \REG_HEX2|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX2|ALT_INV_DOUT\(0),
	datab => \REG_HEX2|ALT_INV_DOUT\(1),
	datac => \REG_HEX2|ALT_INV_DOUT\(2),
	datad => \REG_HEX2|ALT_INV_DOUT\(3),
	combout => \LED_HEX2|rascSaida7seg[5]~5_combout\);

\LED_HEX2|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX2|rascSaida7seg[6]~6_combout\ = (!\REG_HEX2|DOUT\(0) & (!\REG_HEX2|DOUT\(1) & (!\REG_HEX2|DOUT\(3) $ (\REG_HEX2|DOUT\(2))))) # (\REG_HEX2|DOUT\(0) & (!\REG_HEX2|DOUT\(3) & (!\REG_HEX2|DOUT\(1) $ (\REG_HEX2|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX2|ALT_INV_DOUT\(0),
	datab => \REG_HEX2|ALT_INV_DOUT\(3),
	datac => \REG_HEX2|ALT_INV_DOUT\(1),
	datad => \REG_HEX2|ALT_INV_DOUT\(2),
	combout => \LED_HEX2|rascSaida7seg[6]~6_combout\);

AND_HEX3 : cyclonev_lcell_comb
-- Equation(s):
-- \AND_HEX3~combout\ = ( \AND_HEX3~0_combout\ & ( (\ROM1|memROM~2_combout\ & (\ROM1|memROM~4_combout\ & (!\ROM1|memROM~6_combout\ & \ROM1|memROM~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	datae => \ALT_INV_AND_HEX3~0_combout\,
	combout => \AND_HEX3~combout\);

\REG_HEX3|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(0),
	ena => \AND_HEX3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX3|DOUT\(0));

\REG_HEX3|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(3),
	ena => \AND_HEX3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX3|DOUT\(3));

\REG_HEX3|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(1),
	ena => \AND_HEX3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX3|DOUT\(1));

\REG_HEX3|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(2),
	ena => \AND_HEX3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX3|DOUT\(2));

\LED_HEX3|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX3|rascSaida7seg[0]~0_combout\ = (!\REG_HEX3|DOUT\(3) & (!\REG_HEX3|DOUT\(1) & (!\REG_HEX3|DOUT\(0) $ (!\REG_HEX3|DOUT\(2))))) # (\REG_HEX3|DOUT\(3) & (\REG_HEX3|DOUT\(0) & (!\REG_HEX3|DOUT\(1) $ (!\REG_HEX3|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX3|ALT_INV_DOUT\(0),
	datab => \REG_HEX3|ALT_INV_DOUT\(3),
	datac => \REG_HEX3|ALT_INV_DOUT\(1),
	datad => \REG_HEX3|ALT_INV_DOUT\(2),
	combout => \LED_HEX3|rascSaida7seg[0]~0_combout\);

\LED_HEX3|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX3|rascSaida7seg[1]~1_combout\ = (!\REG_HEX3|DOUT\(3) & (\REG_HEX3|DOUT\(2) & (!\REG_HEX3|DOUT\(0) $ (!\REG_HEX3|DOUT\(1))))) # (\REG_HEX3|DOUT\(3) & ((!\REG_HEX3|DOUT\(0) & ((\REG_HEX3|DOUT\(2)))) # (\REG_HEX3|DOUT\(0) & (\REG_HEX3|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX3|ALT_INV_DOUT\(0),
	datab => \REG_HEX3|ALT_INV_DOUT\(3),
	datac => \REG_HEX3|ALT_INV_DOUT\(1),
	datad => \REG_HEX3|ALT_INV_DOUT\(2),
	combout => \LED_HEX3|rascSaida7seg[1]~1_combout\);

\LED_HEX3|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX3|rascSaida7seg[2]~2_combout\ = (!\REG_HEX3|DOUT\(3) & (!\REG_HEX3|DOUT\(0) & (\REG_HEX3|DOUT\(1) & !\REG_HEX3|DOUT\(2)))) # (\REG_HEX3|DOUT\(3) & (\REG_HEX3|DOUT\(2) & ((!\REG_HEX3|DOUT\(0)) # (\REG_HEX3|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX3|ALT_INV_DOUT\(0),
	datab => \REG_HEX3|ALT_INV_DOUT\(3),
	datac => \REG_HEX3|ALT_INV_DOUT\(1),
	datad => \REG_HEX3|ALT_INV_DOUT\(2),
	combout => \LED_HEX3|rascSaida7seg[2]~2_combout\);

\LED_HEX3|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX3|rascSaida7seg[3]~3_combout\ = (!\REG_HEX3|DOUT\(1) & (!\REG_HEX3|DOUT\(3) & (!\REG_HEX3|DOUT\(0) $ (!\REG_HEX3|DOUT\(2))))) # (\REG_HEX3|DOUT\(1) & ((!\REG_HEX3|DOUT\(0) & (!\REG_HEX3|DOUT\(2) & \REG_HEX3|DOUT\(3))) # (\REG_HEX3|DOUT\(0) & 
-- (\REG_HEX3|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX3|ALT_INV_DOUT\(0),
	datab => \REG_HEX3|ALT_INV_DOUT\(1),
	datac => \REG_HEX3|ALT_INV_DOUT\(2),
	datad => \REG_HEX3|ALT_INV_DOUT\(3),
	combout => \LED_HEX3|rascSaida7seg[3]~3_combout\);

\LED_HEX3|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX3|rascSaida7seg[4]~4_combout\ = (!\REG_HEX3|DOUT\(1) & ((!\REG_HEX3|DOUT\(2) & ((\REG_HEX3|DOUT\(0)))) # (\REG_HEX3|DOUT\(2) & (!\REG_HEX3|DOUT\(3))))) # (\REG_HEX3|DOUT\(1) & (!\REG_HEX3|DOUT\(3) & ((\REG_HEX3|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX3|ALT_INV_DOUT\(3),
	datab => \REG_HEX3|ALT_INV_DOUT\(1),
	datac => \REG_HEX3|ALT_INV_DOUT\(2),
	datad => \REG_HEX3|ALT_INV_DOUT\(0),
	combout => \LED_HEX3|rascSaida7seg[4]~4_combout\);

\LED_HEX3|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX3|rascSaida7seg[5]~5_combout\ = (!\REG_HEX3|DOUT\(0) & (\REG_HEX3|DOUT\(1) & (!\REG_HEX3|DOUT\(2) & !\REG_HEX3|DOUT\(3)))) # (\REG_HEX3|DOUT\(0) & (!\REG_HEX3|DOUT\(3) $ (((!\REG_HEX3|DOUT\(1) & \REG_HEX3|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX3|ALT_INV_DOUT\(0),
	datab => \REG_HEX3|ALT_INV_DOUT\(1),
	datac => \REG_HEX3|ALT_INV_DOUT\(2),
	datad => \REG_HEX3|ALT_INV_DOUT\(3),
	combout => \LED_HEX3|rascSaida7seg[5]~5_combout\);

\LED_HEX3|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX3|rascSaida7seg[6]~6_combout\ = (!\REG_HEX3|DOUT\(0) & (!\REG_HEX3|DOUT\(1) & (!\REG_HEX3|DOUT\(3) $ (\REG_HEX3|DOUT\(2))))) # (\REG_HEX3|DOUT\(0) & (!\REG_HEX3|DOUT\(3) & (!\REG_HEX3|DOUT\(1) $ (\REG_HEX3|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX3|ALT_INV_DOUT\(0),
	datab => \REG_HEX3|ALT_INV_DOUT\(3),
	datac => \REG_HEX3|ALT_INV_DOUT\(1),
	datad => \REG_HEX3|ALT_INV_DOUT\(2),
	combout => \LED_HEX3|rascSaida7seg[6]~6_combout\);

AND_HEX4 : cyclonev_lcell_comb
-- Equation(s):
-- \AND_HEX4~combout\ = ( \AND_HEX3~0_combout\ & ( (!\ROM1|memROM~2_combout\ & (!\ROM1|memROM~4_combout\ & (\ROM1|memROM~6_combout\ & \ROM1|memROM~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	datae => \ALT_INV_AND_HEX3~0_combout\,
	combout => \AND_HEX4~combout\);

\REG_HEX4|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(0),
	ena => \AND_HEX4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX4|DOUT\(0));

\REG_HEX4|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(3),
	ena => \AND_HEX4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX4|DOUT\(3));

\REG_HEX4|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(1),
	ena => \AND_HEX4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX4|DOUT\(1));

\REG_HEX4|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(2),
	ena => \AND_HEX4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX4|DOUT\(2));

\LED_HEX4|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX4|rascSaida7seg[0]~0_combout\ = (!\REG_HEX4|DOUT\(3) & (!\REG_HEX4|DOUT\(1) & (!\REG_HEX4|DOUT\(0) $ (!\REG_HEX4|DOUT\(2))))) # (\REG_HEX4|DOUT\(3) & (\REG_HEX4|DOUT\(0) & (!\REG_HEX4|DOUT\(1) $ (!\REG_HEX4|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX4|ALT_INV_DOUT\(0),
	datab => \REG_HEX4|ALT_INV_DOUT\(3),
	datac => \REG_HEX4|ALT_INV_DOUT\(1),
	datad => \REG_HEX4|ALT_INV_DOUT\(2),
	combout => \LED_HEX4|rascSaida7seg[0]~0_combout\);

\LED_HEX4|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX4|rascSaida7seg[1]~1_combout\ = (!\REG_HEX4|DOUT\(3) & (\REG_HEX4|DOUT\(2) & (!\REG_HEX4|DOUT\(0) $ (!\REG_HEX4|DOUT\(1))))) # (\REG_HEX4|DOUT\(3) & ((!\REG_HEX4|DOUT\(0) & ((\REG_HEX4|DOUT\(2)))) # (\REG_HEX4|DOUT\(0) & (\REG_HEX4|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX4|ALT_INV_DOUT\(0),
	datab => \REG_HEX4|ALT_INV_DOUT\(3),
	datac => \REG_HEX4|ALT_INV_DOUT\(1),
	datad => \REG_HEX4|ALT_INV_DOUT\(2),
	combout => \LED_HEX4|rascSaida7seg[1]~1_combout\);

\LED_HEX4|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX4|rascSaida7seg[2]~2_combout\ = (!\REG_HEX4|DOUT\(3) & (!\REG_HEX4|DOUT\(0) & (\REG_HEX4|DOUT\(1) & !\REG_HEX4|DOUT\(2)))) # (\REG_HEX4|DOUT\(3) & (\REG_HEX4|DOUT\(2) & ((!\REG_HEX4|DOUT\(0)) # (\REG_HEX4|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX4|ALT_INV_DOUT\(0),
	datab => \REG_HEX4|ALT_INV_DOUT\(3),
	datac => \REG_HEX4|ALT_INV_DOUT\(1),
	datad => \REG_HEX4|ALT_INV_DOUT\(2),
	combout => \LED_HEX4|rascSaida7seg[2]~2_combout\);

\LED_HEX4|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX4|rascSaida7seg[3]~3_combout\ = (!\REG_HEX4|DOUT\(1) & (!\REG_HEX4|DOUT\(3) & (!\REG_HEX4|DOUT\(0) $ (!\REG_HEX4|DOUT\(2))))) # (\REG_HEX4|DOUT\(1) & ((!\REG_HEX4|DOUT\(0) & (!\REG_HEX4|DOUT\(2) & \REG_HEX4|DOUT\(3))) # (\REG_HEX4|DOUT\(0) & 
-- (\REG_HEX4|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX4|ALT_INV_DOUT\(0),
	datab => \REG_HEX4|ALT_INV_DOUT\(1),
	datac => \REG_HEX4|ALT_INV_DOUT\(2),
	datad => \REG_HEX4|ALT_INV_DOUT\(3),
	combout => \LED_HEX4|rascSaida7seg[3]~3_combout\);

\LED_HEX4|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX4|rascSaida7seg[4]~4_combout\ = (!\REG_HEX4|DOUT\(1) & ((!\REG_HEX4|DOUT\(2) & ((\REG_HEX4|DOUT\(0)))) # (\REG_HEX4|DOUT\(2) & (!\REG_HEX4|DOUT\(3))))) # (\REG_HEX4|DOUT\(1) & (!\REG_HEX4|DOUT\(3) & ((\REG_HEX4|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX4|ALT_INV_DOUT\(3),
	datab => \REG_HEX4|ALT_INV_DOUT\(1),
	datac => \REG_HEX4|ALT_INV_DOUT\(2),
	datad => \REG_HEX4|ALT_INV_DOUT\(0),
	combout => \LED_HEX4|rascSaida7seg[4]~4_combout\);

\LED_HEX4|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX4|rascSaida7seg[5]~5_combout\ = (!\REG_HEX4|DOUT\(0) & (\REG_HEX4|DOUT\(1) & (!\REG_HEX4|DOUT\(2) & !\REG_HEX4|DOUT\(3)))) # (\REG_HEX4|DOUT\(0) & (!\REG_HEX4|DOUT\(3) $ (((!\REG_HEX4|DOUT\(1) & \REG_HEX4|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX4|ALT_INV_DOUT\(0),
	datab => \REG_HEX4|ALT_INV_DOUT\(1),
	datac => \REG_HEX4|ALT_INV_DOUT\(2),
	datad => \REG_HEX4|ALT_INV_DOUT\(3),
	combout => \LED_HEX4|rascSaida7seg[5]~5_combout\);

\LED_HEX4|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX4|rascSaida7seg[6]~6_combout\ = (!\REG_HEX4|DOUT\(0) & (!\REG_HEX4|DOUT\(1) & (!\REG_HEX4|DOUT\(3) $ (\REG_HEX4|DOUT\(2))))) # (\REG_HEX4|DOUT\(0) & (!\REG_HEX4|DOUT\(3) & (!\REG_HEX4|DOUT\(1) $ (\REG_HEX4|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX4|ALT_INV_DOUT\(0),
	datab => \REG_HEX4|ALT_INV_DOUT\(3),
	datac => \REG_HEX4|ALT_INV_DOUT\(1),
	datad => \REG_HEX4|ALT_INV_DOUT\(2),
	combout => \LED_HEX4|rascSaida7seg[6]~6_combout\);

\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);
END structure;


