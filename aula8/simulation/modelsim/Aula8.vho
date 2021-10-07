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

-- DATE "10/07/2021 15:35:18"

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
	LEDR : BUFFER std_logic_vector(7 DOWNTO 0);
	LEDR8 : BUFFER std_logic;
	LEDR9 : BUFFER std_logic;
	saida_ROM : BUFFER std_logic_vector(12 DOWNTO 0);
	saida_RAM : BUFFER std_logic_vector(7 DOWNTO 0);
	Teste_Endereco : BUFFER std_logic_vector(8 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX5 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END Aula8;

-- Design Ports Information
-- KEY[1]	=>  Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_M7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_AA2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[1]	=>  Location: PIN_AA1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[2]	=>  Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[3]	=>  Location: PIN_Y3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[4]	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[5]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[6]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[7]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR8	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR9	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ROM[0]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ROM[1]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ROM[2]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ROM[3]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ROM[4]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ROM[5]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ROM[6]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ROM[7]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ROM[8]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ROM[9]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ROM[10]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ROM[11]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ROM[12]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_RAM[0]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_RAM[1]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_RAM[2]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_RAM[3]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_RAM[4]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_RAM[5]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_RAM[6]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_RAM[7]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Teste_Endereco[0]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Teste_Endereco[1]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Teste_Endereco[2]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Teste_Endereco[3]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Teste_Endereco[4]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Teste_Endereco[5]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Teste_Endereco[6]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Teste_Endereco[7]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Teste_Endereco[8]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[1]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[2]	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[3]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[4]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[5]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[6]	=>  Location: PIN_AA22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[0]	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[1]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[2]	=>  Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[3]	=>  Location: PIN_AA18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[4]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[5]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[6]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[0]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[1]	=>  Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[2]	=>  Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[3]	=>  Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[4]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[5]	=>  Location: PIN_AB22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[6]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[0]	=>  Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[1]	=>  Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[2]	=>  Location: PIN_Y17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[3]	=>  Location: PIN_V16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[4]	=>  Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[5]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[6]	=>  Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[0]	=>  Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[1]	=>  Location: PIN_Y20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[2]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[3]	=>  Location: PIN_U16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[4]	=>  Location: PIN_U15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[5]	=>  Location: PIN_Y15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[6]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[0]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[1]	=>  Location: PIN_M8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[2]	=>  Location: PIN_T14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[3]	=>  Location: PIN_P14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[4]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[5]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[6]	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- KEY[0]	=>  Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_M9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \gravar:detectorSub0|saidaQ~0_combout\ : std_logic;
SIGNAL \gravar:detectorSub0|saidaQ~q\ : std_logic;
SIGNAL \gravar:detectorSub0|saida~combout\ : std_logic;
SIGNAL \KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \CPU|somaUm|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|PC|DOUT[0]~feeder_combout\ : std_logic;
SIGNAL \CPU|somaUm|Add0~14\ : std_logic;
SIGNAL \CPU|somaUm|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|PC|DOUT[4]~feeder_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~9_combout\ : std_logic;
SIGNAL \ROM1|memROM~10_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~14_combout\ : std_logic;
SIGNAL \ROM1|memROM~15_combout\ : std_logic;
SIGNAL \ROM1|memROM~16_combout\ : std_logic;
SIGNAL \ROM1|memROM~11_combout\ : std_logic;
SIGNAL \ROM1|memROM~12_combout\ : std_logic;
SIGNAL \CPU|Decoder|Equal5~0_combout\ : std_logic;
SIGNAL \CPU|somaUm|Add0~18\ : std_logic;
SIGNAL \CPU|somaUm|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|PC|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \ROM1|memROM~8_combout\ : std_logic;
SIGNAL \CPU|somaUm|Add0~22\ : std_logic;
SIGNAL \CPU|somaUm|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|PC|DOUT[6]~feeder_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|somaUm|Add0~26\ : std_logic;
SIGNAL \CPU|somaUm|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|somaUm|Add0~30\ : std_logic;
SIGNAL \CPU|somaUm|Add0~33_sumout\ : std_logic;
SIGNAL \CPU|PC|DOUT[8]~feeder_combout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|somaUm|Add0~2\ : std_logic;
SIGNAL \CPU|somaUm|Add0~5_sumout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \CPU|somaUm|Add0~6\ : std_logic;
SIGNAL \CPU|somaUm|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|PC|DOUT[2]~feeder_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|somaUm|Add0~10\ : std_logic;
SIGNAL \CPU|somaUm|Add0~13_sumout\ : std_logic;
SIGNAL \ROM1|memROM~13_combout\ : std_logic;
SIGNAL \CPU|Decoder|Equal5~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~17_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~34_cout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~1_sumout\ : std_logic;
SIGNAL \CPU|Decoder|Operacao~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|Equal1~0_combout\ : std_logic;
SIGNAL \CPU|Decoder|OUTPUT[5]~0_combout\ : std_logic;
SIGNAL \memoriaDados|process_0~0_combout\ : std_logic;
SIGNAL \memoriaDados|ram~527_combout\ : std_logic;
SIGNAL \memoriaDados|ram~567_combout\ : std_logic;
SIGNAL \memoriaDados|ram~31_q\ : std_logic;
SIGNAL \memoriaDados|ram~566_combout\ : std_logic;
SIGNAL \memoriaDados|ram~15_q\ : std_logic;
SIGNAL \memoriaDados|ram~530_combout\ : std_logic;
SIGNAL \memoriaDados|ram~568_combout\ : std_logic;
SIGNAL \memoriaDados|ram~63_q\ : std_logic;
SIGNAL \memoriaDados|ram~531_combout\ : std_logic;
SIGNAL \memoriaDados|ram~563_combout\ : std_logic;
SIGNAL \memoriaDados|ram~39_q\ : std_logic;
SIGNAL \memoriaDados|ram~528_combout\ : std_logic;
SIGNAL \memoriaDados|ram~564_combout\ : std_logic;
SIGNAL \memoriaDados|ram~311_q\ : std_logic;
SIGNAL \memoriaDados|ram~565_combout\ : std_logic;
SIGNAL \memoriaDados|ram~71_q\ : std_logic;
SIGNAL \memoriaDados|ram~529_combout\ : std_logic;
SIGNAL \memoriaDados|ram~532_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|REG1|DOUT[0]~feeder_combout\ : std_logic;
SIGNAL \CPU|REG1|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \REGLEDR8|DOUT~q\ : std_logic;
SIGNAL \AND_HEX3~0_combout\ : std_logic;
SIGNAL \ANDLEDR8~0_combout\ : std_logic;
SIGNAL \REGLEDR8|DOUT~0_combout\ : std_logic;
SIGNAL \REGLEDR8|DOUT~DUPLICATE_q\ : std_logic;
SIGNAL \REGLEDR9|DOUT~DUPLICATE_q\ : std_logic;
SIGNAL \REGLEDR9|DOUT~0_combout\ : std_logic;
SIGNAL \REGLEDR9|DOUT~feeder_combout\ : std_logic;
SIGNAL \REGLEDR9|DOUT~q\ : std_logic;
SIGNAL \ROM1|memROM~18_combout\ : std_logic;
SIGNAL \memoriaDados|ram~40_q\ : std_logic;
SIGNAL \memoriaDados|ram~72_q\ : std_logic;
SIGNAL \memoriaDados|ram~32_q\ : std_logic;
SIGNAL \memoriaDados|ram~64_q\ : std_logic;
SIGNAL \memoriaDados|ram~535_combout\ : std_logic;
SIGNAL \memoriaDados|ram~16_q\ : std_logic;
SIGNAL \memoriaDados|ram~533_combout\ : std_logic;
SIGNAL \memoriaDados|ram~312_q\ : std_logic;
SIGNAL \memoriaDados|ram~534_combout\ : std_logic;
SIGNAL \memoriaDados|ram~536_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~2\ : std_logic;
SIGNAL \CPU|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|REG1|DOUT[1]~feeder_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~2\ : std_logic;
SIGNAL \CPU|ULA1|Add1~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[1]~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~19_combout\ : std_logic;
SIGNAL \memoriaDados|ram~65_q\ : std_logic;
SIGNAL \memoriaDados|ram~540_combout\ : std_logic;
SIGNAL \memoriaDados|ram~17_q\ : std_logic;
SIGNAL \memoriaDados|ram~33_q\ : std_logic;
SIGNAL \memoriaDados|ram~539_combout\ : std_logic;
SIGNAL \memoriaDados|ram~41_q\ : std_logic;
SIGNAL \memoriaDados|ram~537_combout\ : std_logic;
SIGNAL \memoriaDados|ram~73_q\ : std_logic;
SIGNAL \memoriaDados|ram~313feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~313_q\ : std_logic;
SIGNAL \memoriaDados|ram~538_combout\ : std_logic;
SIGNAL \memoriaDados|ram~541_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~6\ : std_logic;
SIGNAL \CPU|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|REG1|DOUT[2]~feeder_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~6\ : std_logic;
SIGNAL \CPU|ULA1|Add1~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[2]~2_combout\ : std_logic;
SIGNAL \CPU|REG1|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|ULA1|Add1~10\ : std_logic;
SIGNAL \CPU|ULA1|Add1~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[3]~3_combout\ : std_logic;
SIGNAL \memoriaDados|ram~314_q\ : std_logic;
SIGNAL \memoriaDados|ram~543_combout\ : std_logic;
SIGNAL \memoriaDados|ram~74_q\ : std_logic;
SIGNAL \memoriaDados|ram~34feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~34_q\ : std_logic;
SIGNAL \memoriaDados|ram~42_q\ : std_logic;
SIGNAL \memoriaDados|ram~66_q\ : std_logic;
SIGNAL \memoriaDados|ram~544_combout\ : std_logic;
SIGNAL \memoriaDados|ram~18_q\ : std_logic;
SIGNAL \memoriaDados|ram~542_combout\ : std_logic;
SIGNAL \memoriaDados|ram~545_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~10\ : std_logic;
SIGNAL \CPU|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|REG1|DOUT[3]~feeder_combout\ : std_logic;
SIGNAL \CPU|REG1|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \memoriaDados|ram~19_q\ : std_logic;
SIGNAL \memoriaDados|ram~35_q\ : std_logic;
SIGNAL \memoriaDados|ram~548_combout\ : std_logic;
SIGNAL \memoriaDados|ram~75_q\ : std_logic;
SIGNAL \memoriaDados|ram~315_q\ : std_logic;
SIGNAL \memoriaDados|ram~547_combout\ : std_logic;
SIGNAL \memoriaDados|ram~67_q\ : std_logic;
SIGNAL \memoriaDados|ram~549_combout\ : std_logic;
SIGNAL \memoriaDados|ram~43_q\ : std_logic;
SIGNAL \memoriaDados|ram~546_combout\ : std_logic;
SIGNAL \memoriaDados|ram~550_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~14\ : std_logic;
SIGNAL \CPU|ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|REG1|DOUT[4]~feeder_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~14\ : std_logic;
SIGNAL \CPU|ULA1|Add1~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[4]~4_combout\ : std_logic;
SIGNAL \ROM1|memROM~20_combout\ : std_logic;
SIGNAL \memoriaDados|ram~20_q\ : std_logic;
SIGNAL \memoriaDados|ram~551_combout\ : std_logic;
SIGNAL \memoriaDados|ram~36_q\ : std_logic;
SIGNAL \CPU|ULA1|Add1~18\ : std_logic;
SIGNAL \CPU|ULA1|Add1~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[5]~5_combout\ : std_logic;
SIGNAL \memoriaDados|ram~68_q\ : std_logic;
SIGNAL \memoriaDados|ram~44_q\ : std_logic;
SIGNAL \memoriaDados|ram~76feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~76_q\ : std_logic;
SIGNAL \memoriaDados|ram~553_combout\ : std_logic;
SIGNAL \memoriaDados|ram~316feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~316_q\ : std_logic;
SIGNAL \memoriaDados|ram~552_combout\ : std_logic;
SIGNAL \memoriaDados|ram~554_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~18\ : std_logic;
SIGNAL \CPU|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|REG1|DOUT[5]~feeder_combout\ : std_logic;
SIGNAL \CPU|REG1|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \memoriaDados|ram~77_q\ : std_logic;
SIGNAL \memoriaDados|ram~45_q\ : std_logic;
SIGNAL \memoriaDados|ram~555_combout\ : std_logic;
SIGNAL \memoriaDados|ram~317_q\ : std_logic;
SIGNAL \memoriaDados|ram~557_combout\ : std_logic;
SIGNAL \memoriaDados|ram~37_q\ : std_logic;
SIGNAL \memoriaDados|ram~21_q\ : std_logic;
SIGNAL \memoriaDados|ram~69_q\ : std_logic;
SIGNAL \memoriaDados|ram~556_combout\ : std_logic;
SIGNAL \memoriaDados|ram~558_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~22\ : std_logic;
SIGNAL \CPU|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|REG1|DOUT[6]~feeder_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~22\ : std_logic;
SIGNAL \CPU|ULA1|Add1~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[6]~6_combout\ : std_logic;
SIGNAL \CPU|REG1|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \memoriaDados|ram~318_q\ : std_logic;
SIGNAL \memoriaDados|ram~561_combout\ : std_logic;
SIGNAL \memoriaDados|ram~38_q\ : std_logic;
SIGNAL \memoriaDados|ram~22_q\ : std_logic;
SIGNAL \memoriaDados|ram~46_q\ : std_logic;
SIGNAL \memoriaDados|ram~559_combout\ : std_logic;
SIGNAL \memoriaDados|ram~78_q\ : std_logic;
SIGNAL \memoriaDados|ram~70_q\ : std_logic;
SIGNAL \memoriaDados|ram~560_combout\ : std_logic;
SIGNAL \memoriaDados|ram~562_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~26\ : std_logic;
SIGNAL \CPU|ULA1|Add1~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[7]~7_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~26\ : std_logic;
SIGNAL \CPU|ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|REG1|DOUT[7]~feeder_combout\ : std_logic;
SIGNAL \CPU|REG1|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \REG_HEX0|DOUT[0]~feeder_combout\ : std_logic;
SIGNAL \AND_HEX0~0_combout\ : std_logic;
SIGNAL \REG_HEX0|DOUT[3]~feeder_combout\ : std_logic;
SIGNAL \REG_HEX0|DOUT[1]~feeder_combout\ : std_logic;
SIGNAL \REG_HEX0|DOUT[2]~feeder_combout\ : std_logic;
SIGNAL \LED_HEX0|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \LED_HEX0|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \LED_HEX0|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \LED_HEX0|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \LED_HEX0|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \LED_HEX0|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \LED_HEX0|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \REG_HEX1|DOUT[1]~feeder_combout\ : std_logic;
SIGNAL \AND_HEX1~0_combout\ : std_logic;
SIGNAL \REG_HEX1|DOUT[3]~feeder_combout\ : std_logic;
SIGNAL \LED_HEX1|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \LED_HEX1|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \LED_HEX1|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \LED_HEX1|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \LED_HEX1|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \LED_HEX1|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \LED_HEX1|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \AND_HEX2~0_combout\ : std_logic;
SIGNAL \REG_HEX2|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \LED_HEX2|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \REG_HEX2|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \LED_HEX2|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \LED_HEX2|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \LED_HEX2|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \LED_HEX2|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \LED_HEX2|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \LED_HEX2|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \REG_HEX3|DOUT[2]~feeder_combout\ : std_logic;
SIGNAL \AND_HEX3~combout\ : std_logic;
SIGNAL \REG_HEX3|DOUT[3]~feeder_combout\ : std_logic;
SIGNAL \LED_HEX3|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \LED_HEX3|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \LED_HEX3|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \LED_HEX3|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \LED_HEX3|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \LED_HEX3|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \LED_HEX3|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \AND_HEX4~combout\ : std_logic;
SIGNAL \REG_HEX4|DOUT[3]~feeder_combout\ : std_logic;
SIGNAL \LED_HEX4|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \LED_HEX4|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \LED_HEX4|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \REG_HEX4|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \LED_HEX4|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \LED_HEX4|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \LED_HEX4|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \LED_HEX4|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \REG_HEX4|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_HEX3|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_HEX2|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|REG1|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \REG_HEX0|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_HEX1|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \memoriaDados|ALT_INV_ram~39_q\ : std_logic;
SIGNAL \CPU|Decoder|ALT_INV_Equal5~1_combout\ : std_logic;
SIGNAL \REGLEDR9|ALT_INV_DOUT~0_combout\ : std_logic;
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
SIGNAL \ROM1|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \REGLEDR8|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \CPU|somaUm|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \CPU|somaUm|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \CPU|somaUm|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \CPU|somaUm|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CPU|somaUm|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \CPU|REG1|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
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
SIGNAL \REG_HEX4|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \REG_HEX2|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \REG_HEX2|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \REGLEDR9|ALT_INV_DOUT~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|REG1|ALT_INV_DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|REG1|ALT_INV_DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|REG1|ALT_INV_DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|REG1|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|REG1|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|REG1|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~20_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~19_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~18_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~17_combout\ : std_logic;
SIGNAL \gravar:detectorSub0|ALT_INV_saidaQ~q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~562_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~561_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~318_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~560_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~70_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~78_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~559_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~46_q\ : std_logic;

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
\memoriaDados|ALT_INV_ram~39_q\ <= NOT \memoriaDados|ram~39_q\;
\CPU|Decoder|ALT_INV_Equal5~1_combout\ <= NOT \CPU|Decoder|Equal5~1_combout\;
\REGLEDR9|ALT_INV_DOUT~0_combout\ <= NOT \REGLEDR9|DOUT~0_combout\;
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
\ROM1|ALT_INV_memROM~7_combout\ <= NOT \ROM1|memROM~7_combout\;
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\ROM1|ALT_INV_memROM~3_combout\ <= NOT \ROM1|memROM~3_combout\;
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\REGLEDR8|ALT_INV_DOUT~q\ <= NOT \REGLEDR8|DOUT~q\;
\CPU|ULA1|ALT_INV_Add1~29_sumout\ <= NOT \CPU|ULA1|Add1~29_sumout\;
\CPU|ULA1|ALT_INV_Add0~29_sumout\ <= NOT \CPU|ULA1|Add0~29_sumout\;
\CPU|ULA1|ALT_INV_Add1~25_sumout\ <= NOT \CPU|ULA1|Add1~25_sumout\;
\CPU|ULA1|ALT_INV_Add0~25_sumout\ <= NOT \CPU|ULA1|Add0~25_sumout\;
\CPU|ULA1|ALT_INV_Add1~21_sumout\ <= NOT \CPU|ULA1|Add1~21_sumout\;
\CPU|ULA1|ALT_INV_Add0~21_sumout\ <= NOT \CPU|ULA1|Add0~21_sumout\;
\CPU|ULA1|ALT_INV_Add1~17_sumout\ <= NOT \CPU|ULA1|Add1~17_sumout\;
\CPU|ULA1|ALT_INV_Add0~17_sumout\ <= NOT \CPU|ULA1|Add0~17_sumout\;
\CPU|ULA1|ALT_INV_Add1~13_sumout\ <= NOT \CPU|ULA1|Add1~13_sumout\;
\CPU|ULA1|ALT_INV_Add0~13_sumout\ <= NOT \CPU|ULA1|Add0~13_sumout\;
\CPU|ULA1|ALT_INV_Add1~9_sumout\ <= NOT \CPU|ULA1|Add1~9_sumout\;
\CPU|ULA1|ALT_INV_Add0~9_sumout\ <= NOT \CPU|ULA1|Add0~9_sumout\;
\CPU|ULA1|ALT_INV_Add1~5_sumout\ <= NOT \CPU|ULA1|Add1~5_sumout\;
\CPU|ULA1|ALT_INV_Add0~5_sumout\ <= NOT \CPU|ULA1|Add0~5_sumout\;
\CPU|ULA1|ALT_INV_Add1~1_sumout\ <= NOT \CPU|ULA1|Add1~1_sumout\;
\CPU|ULA1|ALT_INV_Add0~1_sumout\ <= NOT \CPU|ULA1|Add0~1_sumout\;
\CPU|somaUm|ALT_INV_Add0~33_sumout\ <= NOT \CPU|somaUm|Add0~33_sumout\;
\CPU|somaUm|ALT_INV_Add0~25_sumout\ <= NOT \CPU|somaUm|Add0~25_sumout\;
\CPU|somaUm|ALT_INV_Add0~17_sumout\ <= NOT \CPU|somaUm|Add0~17_sumout\;
\CPU|somaUm|ALT_INV_Add0~9_sumout\ <= NOT \CPU|somaUm|Add0~9_sumout\;
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
\REG_HEX4|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \REG_HEX4|DOUT[2]~DUPLICATE_q\;
\REG_HEX2|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \REG_HEX2|DOUT[2]~DUPLICATE_q\;
\REG_HEX2|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \REG_HEX2|DOUT[0]~DUPLICATE_q\;
\REGLEDR9|ALT_INV_DOUT~DUPLICATE_q\ <= NOT \REGLEDR9|DOUT~DUPLICATE_q\;
\CPU|REG1|ALT_INV_DOUT[7]~DUPLICATE_q\ <= NOT \CPU|REG1|DOUT[7]~DUPLICATE_q\;
\CPU|REG1|ALT_INV_DOUT[6]~DUPLICATE_q\ <= NOT \CPU|REG1|DOUT[6]~DUPLICATE_q\;
\CPU|REG1|ALT_INV_DOUT[5]~DUPLICATE_q\ <= NOT \CPU|REG1|DOUT[5]~DUPLICATE_q\;
\CPU|REG1|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \CPU|REG1|DOUT[3]~DUPLICATE_q\;
\CPU|REG1|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \CPU|REG1|DOUT[2]~DUPLICATE_q\;
\CPU|REG1|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \CPU|REG1|DOUT[0]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[8]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[6]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[3]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[2]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[0]~DUPLICATE_q\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ROM1|ALT_INV_memROM~20_combout\ <= NOT \ROM1|memROM~20_combout\;
\ROM1|ALT_INV_memROM~19_combout\ <= NOT \ROM1|memROM~19_combout\;
\ROM1|ALT_INV_memROM~18_combout\ <= NOT \ROM1|memROM~18_combout\;
\memoriaDados|ALT_INV_process_0~0_combout\ <= NOT \memoriaDados|process_0~0_combout\;
\ROM1|ALT_INV_memROM~17_combout\ <= NOT \ROM1|memROM~17_combout\;
\gravar:detectorSub0|ALT_INV_saidaQ~q\ <= NOT \gravar:detectorSub0|saidaQ~q\;
\memoriaDados|ALT_INV_ram~562_combout\ <= NOT \memoriaDados|ram~562_combout\;
\memoriaDados|ALT_INV_ram~561_combout\ <= NOT \memoriaDados|ram~561_combout\;
\memoriaDados|ALT_INV_ram~318_q\ <= NOT \memoriaDados|ram~318_q\;
\memoriaDados|ALT_INV_ram~560_combout\ <= NOT \memoriaDados|ram~560_combout\;
\memoriaDados|ALT_INV_ram~70_q\ <= NOT \memoriaDados|ram~70_q\;
\memoriaDados|ALT_INV_ram~78_q\ <= NOT \memoriaDados|ram~78_q\;
\memoriaDados|ALT_INV_ram~559_combout\ <= NOT \memoriaDados|ram~559_combout\;
\memoriaDados|ALT_INV_ram~38_q\ <= NOT \memoriaDados|ram~38_q\;
\memoriaDados|ALT_INV_ram~46_q\ <= NOT \memoriaDados|ram~46_q\;

-- Location: IOOBUF_X0_Y18_N79
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

-- Location: IOOBUF_X0_Y18_N96
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

-- Location: IOOBUF_X0_Y18_N62
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

-- Location: IOOBUF_X0_Y18_N45
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

-- Location: IOOBUF_X0_Y19_N39
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

-- Location: IOOBUF_X0_Y19_N56
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

-- Location: IOOBUF_X0_Y19_N5
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

-- Location: IOOBUF_X0_Y19_N22
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

-- Location: IOOBUF_X54_Y16_N22
\LEDR8~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGLEDR8|DOUT~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_LEDR8);

-- Location: IOOBUF_X40_Y45_N93
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

-- Location: IOOBUF_X43_Y45_N2
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

-- Location: IOOBUF_X43_Y45_N53
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

-- Location: IOOBUF_X54_Y14_N96
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

-- Location: IOOBUF_X11_Y0_N2
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

-- Location: IOOBUF_X10_Y45_N19
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

-- Location: IOOBUF_X54_Y14_N62
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

-- Location: IOOBUF_X18_Y45_N53
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

-- Location: IOOBUF_X34_Y45_N53
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

-- Location: IOOBUF_X54_Y18_N96
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

-- Location: IOOBUF_X38_Y45_N53
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

-- Location: IOOBUF_X54_Y17_N56
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

-- Location: IOOBUF_X54_Y18_N79
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

-- Location: IOOBUF_X46_Y45_N59
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

-- Location: IOOBUF_X54_Y14_N79
\saida_RAM[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REG1|DOUT[0]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_saida_RAM(0));

-- Location: IOOBUF_X40_Y45_N76
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

-- Location: IOOBUF_X40_Y45_N42
\saida_RAM[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REG1|DOUT[2]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_saida_RAM(2));

-- Location: IOOBUF_X54_Y16_N39
\saida_RAM[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REG1|DOUT[3]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_saida_RAM(3));

-- Location: IOOBUF_X54_Y16_N56
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

-- Location: IOOBUF_X42_Y45_N36
\saida_RAM[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REG1|DOUT[5]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_saida_RAM(5));

-- Location: IOOBUF_X54_Y15_N39
\saida_RAM[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REG1|DOUT[6]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_saida_RAM(6));

-- Location: IOOBUF_X54_Y17_N22
\saida_RAM[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REG1|DOUT[7]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_saida_RAM(7));

-- Location: IOOBUF_X54_Y20_N56
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

-- Location: IOOBUF_X54_Y16_N5
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

-- Location: IOOBUF_X54_Y15_N5
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

-- Location: IOOBUF_X14_Y0_N53
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

-- Location: IOOBUF_X54_Y15_N22
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

-- Location: IOOBUF_X54_Y15_N56
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

-- Location: IOOBUF_X46_Y45_N42
\Teste_Endereco[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT[6]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_Teste_Endereco(6));

-- Location: IOOBUF_X54_Y19_N39
\Teste_Endereco[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT[7]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_Teste_Endereco(7));

-- Location: IOOBUF_X54_Y14_N45
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(6));

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

-- Location: LABCELL_X10_Y1_N0
\gravar:detectorSub0|saidaQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \gravar:detectorSub0|saidaQ~0_combout\ = ( !\KEY[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \gravar:detectorSub0|saidaQ~0_combout\);

-- Location: FF_X10_Y1_N1
\gravar:detectorSub0|saidaQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \gravar:detectorSub0|saidaQ~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gravar:detectorSub0|saidaQ~q\);

-- Location: LABCELL_X40_Y5_N12
\gravar:detectorSub0|saida\ : cyclonev_lcell_comb
-- Equation(s):
-- \gravar:detectorSub0|saida~combout\ = LCELL(( !\KEY[0]~input_o\ & ( !\gravar:detectorSub0|saidaQ~q\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_KEY[0]~input_o\,
	dataf => \gravar:detectorSub0|ALT_INV_saidaQ~q\,
	combout => \gravar:detectorSub0|saida~combout\);

-- Location: CLKCTRL_G5
\KEY[0]~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \KEY[0]~input_o\,
	outclk => \KEY[0]~inputCLKENA0_outclk\);

-- Location: LABCELL_X43_Y7_N30
\CPU|somaUm|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|somaUm|Add0~1_sumout\ = SUM(( \CPU|PC|DOUT[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \CPU|somaUm|Add0~2\ = CARRY(( \CPU|PC|DOUT[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \CPU|somaUm|Add0~1_sumout\,
	cout => \CPU|somaUm|Add0~2\);

-- Location: LABCELL_X43_Y7_N15
\CPU|PC|DOUT[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC|DOUT[0]~feeder_combout\ = ( \CPU|somaUm|Add0~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|somaUm|ALT_INV_Add0~1_sumout\,
	combout => \CPU|PC|DOUT[0]~feeder_combout\);

-- Location: LABCELL_X43_Y7_N39
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

-- Location: LABCELL_X43_Y7_N42
\CPU|somaUm|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|somaUm|Add0~17_sumout\ = SUM(( \CPU|PC|DOUT\(4) ) + ( GND ) + ( \CPU|somaUm|Add0~14\ ))
-- \CPU|somaUm|Add0~18\ = CARRY(( \CPU|PC|DOUT\(4) ) + ( GND ) + ( \CPU|somaUm|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	cin => \CPU|somaUm|Add0~14\,
	sumout => \CPU|somaUm|Add0~17_sumout\,
	cout => \CPU|somaUm|Add0~18\);

-- Location: LABCELL_X43_Y7_N12
\CPU|PC|DOUT[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC|DOUT[4]~feeder_combout\ = \CPU|somaUm|Add0~17_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|somaUm|ALT_INV_Add0~17_sumout\,
	combout => \CPU|PC|DOUT[4]~feeder_combout\);

-- Location: LABCELL_X39_Y6_N18
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

-- Location: FF_X43_Y7_N20
\CPU|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|PC|DOUT[6]~feeder_combout\,
	asdata => \~GND~combout\,
	sload => \CPU|Decoder|Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(6));

-- Location: LABCELL_X43_Y7_N6
\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = ( !\CPU|PC|DOUT\(7) & ( (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	dataf => \CPU|PC|ALT_INV_DOUT\(7),
	combout => \ROM1|memROM~1_combout\);

-- Location: MLABCELL_X42_Y7_N27
\ROM1|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~9_combout\ = ( \CPU|PC|DOUT[2]~DUPLICATE_q\ & ( \CPU|PC|DOUT\(1) & ( (\CPU|PC|DOUT[0]~DUPLICATE_q\ & !\CPU|PC|DOUT\(3)) ) ) ) # ( !\CPU|PC|DOUT[2]~DUPLICATE_q\ & ( \CPU|PC|DOUT\(1) & ( \CPU|PC|DOUT[0]~DUPLICATE_q\ ) ) ) # ( 
-- \CPU|PC|DOUT[2]~DUPLICATE_q\ & ( !\CPU|PC|DOUT\(1) & ( !\CPU|PC|DOUT[0]~DUPLICATE_q\ $ (!\CPU|PC|DOUT\(3)) ) ) ) # ( !\CPU|PC|DOUT[2]~DUPLICATE_q\ & ( !\CPU|PC|DOUT\(1) & ( (\CPU|PC|DOUT[0]~DUPLICATE_q\ & \CPU|PC|DOUT\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101010101011010101001010101010101010101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(1),
	combout => \ROM1|memROM~9_combout\);

-- Location: LABCELL_X43_Y7_N3
\ROM1|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~10_combout\ = ( !\CPU|PC|DOUT\(8) & ( (\ROM1|memROM~1_combout\ & \ROM1|memROM~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \CPU|PC|ALT_INV_DOUT\(8),
	combout => \ROM1|memROM~10_combout\);

-- Location: FF_X43_Y7_N25
\CPU|PC|DOUT[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|PC|DOUT[8]~feeder_combout\,
	asdata => \ROM1|memROM~10_combout\,
	sload => \CPU|Decoder|Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[8]~DUPLICATE_q\);

-- Location: LABCELL_X39_Y6_N45
\ROM1|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~14_combout\ = ( \ROM1|memROM~1_combout\ & ( \ROM1|memROM~13_combout\ & ( !\CPU|PC|DOUT[8]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \ROM1|memROM~14_combout\);

-- Location: FF_X43_Y7_N16
\CPU|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|PC|DOUT[0]~feeder_combout\,
	asdata => \ROM1|memROM~2_combout\,
	sload => \CPU|Decoder|Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(0));

-- Location: MLABCELL_X42_Y7_N15
\ROM1|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~15_combout\ = ( \CPU|PC|DOUT\(1) & ( !\CPU|PC|DOUT\(0) $ (((\CPU|PC|DOUT\(3) & \CPU|PC|DOUT[2]~DUPLICATE_q\))) ) ) # ( !\CPU|PC|DOUT\(1) & ( (!\CPU|PC|DOUT\(0) & ((\CPU|PC|DOUT[2]~DUPLICATE_q\) # (\CPU|PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011110000010100001111000011110000101001011111000010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(1),
	combout => \ROM1|memROM~15_combout\);

-- Location: MLABCELL_X42_Y6_N24
\ROM1|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~16_combout\ = ( \ROM1|memROM~15_combout\ ) # ( !\ROM1|memROM~15_combout\ & ( (!\ROM1|memROM~1_combout\) # (\CPU|PC|DOUT[8]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111110011111100111111001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \ROM1|memROM~16_combout\);

-- Location: MLABCELL_X42_Y7_N12
\ROM1|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~11_combout\ = ( \CPU|PC|DOUT\(1) & ( (\CPU|PC|DOUT[0]~DUPLICATE_q\ & ((!\CPU|PC|DOUT\(3)) # (!\CPU|PC|DOUT[2]~DUPLICATE_q\))) ) ) # ( !\CPU|PC|DOUT\(1) & ( \CPU|PC|DOUT[0]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000010100000111100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(1),
	combout => \ROM1|memROM~11_combout\);

-- Location: LABCELL_X39_Y6_N39
\ROM1|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~12_combout\ = ( \ROM1|memROM~1_combout\ & ( \ROM1|memROM~11_combout\ & ( !\CPU|PC|DOUT[8]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \ROM1|memROM~12_combout\);

-- Location: LABCELL_X39_Y6_N27
\CPU|Decoder|Equal5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Decoder|Equal5~0_combout\ = ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~12_combout\ & ( \ROM1|memROM~14_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \CPU|Decoder|Equal5~0_combout\);

-- Location: FF_X43_Y7_N14
\CPU|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|PC|DOUT[4]~feeder_combout\,
	asdata => \~GND~combout\,
	sload => \CPU|Decoder|Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(4));

-- Location: LABCELL_X43_Y7_N45
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

-- Location: FF_X43_Y7_N40
\CPU|PC|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|somaUm|Add0~13_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|Decoder|Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[3]~DUPLICATE_q\);

-- Location: LABCELL_X43_Y7_N0
\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = ( \CPU|PC|DOUT\(1) & ( (\CPU|PC|DOUT[0]~DUPLICATE_q\ & (!\CPU|PC|DOUT[2]~DUPLICATE_q\ & \CPU|PC|DOUT[3]~DUPLICATE_q\)) ) ) # ( !\CPU|PC|DOUT\(1) & ( (\CPU|PC|DOUT[0]~DUPLICATE_q\ & (\CPU|PC|DOUT[2]~DUPLICATE_q\ & 
-- \CPU|PC|DOUT[3]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(1),
	combout => \ROM1|memROM~5_combout\);

-- Location: LABCELL_X43_Y7_N9
\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = ( \ROM1|memROM~1_combout\ & ( (!\CPU|PC|DOUT\(8) & \ROM1|memROM~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~6_combout\);

-- Location: FF_X43_Y7_N28
\CPU|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|PC|DOUT[2]~feeder_combout\,
	asdata => \ROM1|memROM~6_combout\,
	sload => \CPU|Decoder|Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(2));

-- Location: MLABCELL_X42_Y7_N39
\ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~7_combout\ = ( \CPU|PC|DOUT\(1) & ( (\CPU|PC|DOUT[0]~DUPLICATE_q\ & ((!\CPU|PC|DOUT\(3)) # (!\CPU|PC|DOUT\(2)))) ) ) # ( !\CPU|PC|DOUT\(1) & ( (\CPU|PC|DOUT[0]~DUPLICATE_q\ & ((\CPU|PC|DOUT\(2)) # (\CPU|PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011111000000000101111100000000111110100000000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(1),
	combout => \ROM1|memROM~7_combout\);

-- Location: LABCELL_X41_Y7_N45
\ROM1|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~8_combout\ = ( \ROM1|memROM~1_combout\ & ( (!\CPU|PC|DOUT[8]~DUPLICATE_q\ & \ROM1|memROM~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~8_combout\);

-- Location: FF_X43_Y7_N47
\CPU|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|somaUm|Add0~21_sumout\,
	asdata => \ROM1|memROM~8_combout\,
	sload => \CPU|Decoder|Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(5));

-- Location: LABCELL_X43_Y7_N48
\CPU|somaUm|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|somaUm|Add0~25_sumout\ = SUM(( \CPU|PC|DOUT[6]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|somaUm|Add0~22\ ))
-- \CPU|somaUm|Add0~26\ = CARRY(( \CPU|PC|DOUT[6]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|somaUm|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	cin => \CPU|somaUm|Add0~22\,
	sumout => \CPU|somaUm|Add0~25_sumout\,
	cout => \CPU|somaUm|Add0~26\);

-- Location: LABCELL_X43_Y7_N18
\CPU|PC|DOUT[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC|DOUT[6]~feeder_combout\ = ( \CPU|somaUm|Add0~25_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|somaUm|ALT_INV_Add0~25_sumout\,
	combout => \CPU|PC|DOUT[6]~feeder_combout\);

-- Location: FF_X43_Y7_N19
\CPU|PC|DOUT[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|PC|DOUT[6]~feeder_combout\,
	asdata => \~GND~combout\,
	sload => \CPU|Decoder|Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[6]~DUPLICATE_q\);

-- Location: LABCELL_X43_Y7_N51
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

-- Location: FF_X43_Y7_N53
\CPU|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|somaUm|Add0~29_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|Decoder|Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(7));

-- Location: LABCELL_X43_Y7_N54
\CPU|somaUm|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|somaUm|Add0~33_sumout\ = SUM(( \CPU|PC|DOUT\(8) ) + ( GND ) + ( \CPU|somaUm|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(8),
	cin => \CPU|somaUm|Add0~30\,
	sumout => \CPU|somaUm|Add0~33_sumout\);

-- Location: LABCELL_X43_Y7_N24
\CPU|PC|DOUT[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC|DOUT[8]~feeder_combout\ = \CPU|somaUm|Add0~33_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|somaUm|ALT_INV_Add0~33_sumout\,
	combout => \CPU|PC|DOUT[8]~feeder_combout\);

-- Location: FF_X43_Y7_N26
\CPU|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|PC|DOUT[8]~feeder_combout\,
	asdata => \ROM1|memROM~10_combout\,
	sload => \CPU|Decoder|Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(8));

-- Location: LABCELL_X43_Y7_N21
\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = ( !\CPU|PC|DOUT\(1) & ( !\CPU|PC|DOUT[0]~DUPLICATE_q\ $ (((\CPU|PC|DOUT[2]~DUPLICATE_q\) # (\CPU|PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100110011110000110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(1),
	combout => \ROM1|memROM~0_combout\);

-- Location: MLABCELL_X42_Y7_N21
\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = ( \ROM1|memROM~1_combout\ & ( (!\CPU|PC|DOUT\(8) & \ROM1|memROM~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(8),
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~2_combout\);

-- Location: FF_X43_Y7_N17
\CPU|PC|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|PC|DOUT[0]~feeder_combout\,
	asdata => \ROM1|memROM~2_combout\,
	sload => \CPU|Decoder|Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[0]~DUPLICATE_q\);

-- Location: LABCELL_X43_Y7_N33
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

-- Location: MLABCELL_X42_Y7_N33
\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = ( \CPU|PC|DOUT\(1) & ( (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(3) $ (!\CPU|PC|DOUT[0]~DUPLICATE_q\))) ) ) # ( !\CPU|PC|DOUT\(1) & ( (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT[0]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000000101000010100000010100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(1),
	combout => \ROM1|memROM~3_combout\);

-- Location: LABCELL_X41_Y7_N0
\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = ( \ROM1|memROM~1_combout\ & ( (\ROM1|memROM~3_combout\ & !\CPU|PC|DOUT[8]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~4_combout\);

-- Location: FF_X43_Y7_N35
\CPU|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|somaUm|Add0~5_sumout\,
	asdata => \ROM1|memROM~4_combout\,
	sload => \CPU|Decoder|Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(1));

-- Location: LABCELL_X43_Y7_N36
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

-- Location: LABCELL_X43_Y7_N27
\CPU|PC|DOUT[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC|DOUT[2]~feeder_combout\ = \CPU|somaUm|Add0~9_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|somaUm|ALT_INV_Add0~9_sumout\,
	combout => \CPU|PC|DOUT[2]~feeder_combout\);

-- Location: FF_X43_Y7_N29
\CPU|PC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|PC|DOUT[2]~feeder_combout\,
	asdata => \ROM1|memROM~6_combout\,
	sload => \CPU|Decoder|Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[2]~DUPLICATE_q\);

-- Location: FF_X43_Y7_N41
\CPU|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|somaUm|Add0~13_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|Decoder|Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(3));

-- Location: MLABCELL_X42_Y7_N0
\ROM1|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~13_combout\ = ( \CPU|PC|DOUT\(1) & ( !\CPU|PC|DOUT[0]~DUPLICATE_q\ ) ) # ( !\CPU|PC|DOUT\(1) & ( (!\CPU|PC|DOUT[0]~DUPLICATE_q\ & ((\CPU|PC|DOUT[2]~DUPLICATE_q\) # (\CPU|PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011110000010100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(1),
	combout => \ROM1|memROM~13_combout\);

-- Location: LABCELL_X39_Y6_N54
\CPU|Decoder|Equal5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Decoder|Equal5~1_combout\ = ( !\ROM1|memROM~15_combout\ & ( !\ROM1|memROM~11_combout\ & ( (!\ROM1|memROM~13_combout\ & (\ROM1|memROM~1_combout\ & !\CPU|PC|DOUT[8]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \CPU|Decoder|Equal5~1_combout\);

-- Location: MLABCELL_X42_Y7_N30
\ROM1|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~17_combout\ = (!\ROM1|memROM~1_combout\) # (!\ROM1|memROM~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111111111111000011111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \ROM1|memROM~17_combout\);

-- Location: LABCELL_X40_Y6_N24
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

-- Location: LABCELL_X40_Y6_N27
\CPU|ULA1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~1_sumout\ = SUM(( (!\CPU|Decoder|Equal5~1_combout\ & (((!\memoriaDados|ram~532_combout\)))) # (\CPU|Decoder|Equal5~1_combout\ & (((\CPU|PC|DOUT\(8))) # (\ROM1|memROM~17_combout\))) ) + ( \CPU|REG1|DOUT\(0) ) + ( \CPU|ULA1|Add1~34_cout\ ))
-- \CPU|ULA1|Add1~2\ = CARRY(( (!\CPU|Decoder|Equal5~1_combout\ & (((!\memoriaDados|ram~532_combout\)))) # (\CPU|Decoder|Equal5~1_combout\ & (((\CPU|PC|DOUT\(8))) # (\ROM1|memROM~17_combout\))) ) + ( \CPU|REG1|DOUT\(0) ) + ( \CPU|ULA1|Add1~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001101111100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~17_combout\,
	datab => \CPU|Decoder|ALT_INV_Equal5~1_combout\,
	datac => \CPU|PC|ALT_INV_DOUT\(8),
	datad => \memoriaDados|ALT_INV_ram~532_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(0),
	cin => \CPU|ULA1|Add1~34_cout\,
	sumout => \CPU|ULA1|Add1~1_sumout\,
	cout => \CPU|ULA1|Add1~2\);

-- Location: LABCELL_X39_Y6_N12
\CPU|Decoder|Operacao~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Decoder|Operacao~0_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~12_combout\ & ( !\ROM1|memROM~14_combout\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~14_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100000000000000000000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~14_combout\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \CPU|Decoder|Operacao~0_combout\);

-- Location: LABCELL_X39_Y6_N48
\CPU|ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[0]~0_combout\ = ( \CPU|Decoder|Operacao~0_combout\ & ( (!\CPU|Decoder|Equal5~1_combout\ & (\memoriaDados|ram~532_combout\)) # (\CPU|Decoder|Equal5~1_combout\ & ((\ROM1|memROM~2_combout\))) ) ) # ( !\CPU|Decoder|Operacao~0_combout\ & ( 
-- \CPU|ULA1|Add1~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Add1~1_sumout\,
	datab => \memoriaDados|ALT_INV_ram~532_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \CPU|Decoder|ALT_INV_Equal5~1_combout\,
	dataf => \CPU|Decoder|ALT_INV_Operacao~0_combout\,
	combout => \CPU|ULA1|saida[0]~0_combout\);

-- Location: LABCELL_X39_Y6_N6
\CPU|ULA1|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Equal1~0_combout\ = ( \ROM1|memROM~12_combout\ ) # ( !\ROM1|memROM~12_combout\ & ( (!\ROM1|memROM~14_combout\) # (!\ROM1|memROM~16_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111111111111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \CPU|ULA1|Equal1~0_combout\);

-- Location: LABCELL_X39_Y6_N9
\CPU|Decoder|OUTPUT[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Decoder|OUTPUT[5]~0_combout\ = ( \ROM1|memROM~13_combout\ & ( (\ROM1|memROM~1_combout\ & (!\CPU|PC|DOUT[8]~DUPLICATE_q\ & \ROM1|memROM~15_combout\)) ) ) # ( !\ROM1|memROM~13_combout\ & ( (\ROM1|memROM~1_combout\ & (!\CPU|PC|DOUT[8]~DUPLICATE_q\ & 
-- (!\ROM1|memROM~11_combout\ $ (\ROM1|memROM~15_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000010000001000000001000000000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \CPU|Decoder|OUTPUT[5]~0_combout\);

-- Location: FF_X39_Y6_N53
\CPU|REG1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|REG1|DOUT[0]~feeder_combout\,
	asdata => \CPU|ULA1|saida[0]~0_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|Decoder|OUTPUT[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(0));

-- Location: MLABCELL_X42_Y7_N42
\memoriaDados|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|process_0~0_combout\ = ( !\ROM1|memROM~13_combout\ & ( \ROM1|memROM~1_combout\ & ( (!\CPU|PC|DOUT\(8) & (!\ROM1|memROM~15_combout\ & (!\ROM1|memROM~9_combout\ & \ROM1|memROM~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~15_combout\,
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \memoriaDados|process_0~0_combout\);

-- Location: MLABCELL_X42_Y7_N48
\memoriaDados|ram~527\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~527_combout\ = ( !\ROM1|memROM~7_combout\ & ( \ROM1|memROM~1_combout\ & ( (\ROM1|memROM~3_combout\ & !\CPU|PC|DOUT\(8)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \CPU|PC|ALT_INV_DOUT\(8),
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \memoriaDados|ram~527_combout\);

-- Location: LABCELL_X41_Y7_N3
\memoriaDados|ram~567\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~567_combout\ = ( !\ROM1|memROM~6_combout\ & ( (!\ROM1|memROM~2_combout\ & (\memoriaDados|process_0~0_combout\ & \memoriaDados|ram~527_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \memoriaDados|ALT_INV_process_0~0_combout\,
	datac => \memoriaDados|ALT_INV_ram~527_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \memoriaDados|ram~567_combout\);

-- Location: FF_X41_Y7_N49
\memoriaDados|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \memoriaDados|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~31_q\);

-- Location: MLABCELL_X42_Y7_N54
\memoriaDados|ram~566\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~566_combout\ = ( !\ROM1|memROM~6_combout\ & ( !\ROM1|memROM~8_combout\ & ( (\memoriaDados|process_0~0_combout\ & (!\ROM1|memROM~2_combout\ & !\ROM1|memROM~4_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \memoriaDados|ALT_INV_process_0~0_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \memoriaDados|ram~566_combout\);

-- Location: FF_X41_Y7_N13
\memoriaDados|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \memoriaDados|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~15_q\);

-- Location: LABCELL_X41_Y7_N15
\memoriaDados|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~530_combout\ = ( \memoriaDados|ram~31_q\ & ( \memoriaDados|ram~15_q\ & ( !\ROM1|memROM~8_combout\ ) ) ) # ( !\memoriaDados|ram~31_q\ & ( \memoriaDados|ram~15_q\ & ( (!\ROM1|memROM~8_combout\ & !\ROM1|memROM~4_combout\) ) ) ) # ( 
-- \memoriaDados|ram~31_q\ & ( !\memoriaDados|ram~15_q\ & ( (!\ROM1|memROM~8_combout\ & \ROM1|memROM~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000011110000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \memoriaDados|ALT_INV_ram~31_q\,
	dataf => \memoriaDados|ALT_INV_ram~15_q\,
	combout => \memoriaDados|ram~530_combout\);

-- Location: MLABCELL_X42_Y7_N36
\memoriaDados|ram~568\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~568_combout\ = ( \memoriaDados|ram~527_combout\ & ( (\memoriaDados|process_0~0_combout\ & (\ROM1|memROM~6_combout\ & !\ROM1|memROM~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \memoriaDados|ALT_INV_process_0~0_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \memoriaDados|ALT_INV_ram~527_combout\,
	combout => \memoriaDados|ram~568_combout\);

-- Location: FF_X41_Y6_N53
\memoriaDados|ram~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \memoriaDados|ram~568_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~63_q\);

-- Location: LABCELL_X41_Y6_N42
\memoriaDados|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~531_combout\ = ( \memoriaDados|ram~63_q\ & ( (\ROM1|memROM~4_combout\ & !\ROM1|memROM~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \memoriaDados|ALT_INV_ram~63_q\,
	combout => \memoriaDados|ram~531_combout\);

-- Location: MLABCELL_X42_Y7_N3
\memoriaDados|ram~563\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~563_combout\ = ( \memoriaDados|ram~527_combout\ & ( (\memoriaDados|process_0~0_combout\ & (\ROM1|memROM~2_combout\ & !\ROM1|memROM~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \memoriaDados|ALT_INV_process_0~0_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \memoriaDados|ALT_INV_ram~527_combout\,
	combout => \memoriaDados|ram~563_combout\);

-- Location: FF_X40_Y7_N53
\memoriaDados|ram~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \memoriaDados|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~39_q\);

-- Location: LABCELL_X40_Y7_N57
\memoriaDados|ram~528\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~528_combout\ = ( \memoriaDados|ram~39_q\ & ( (!\ROM1|memROM~8_combout\ & \ROM1|memROM~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \memoriaDados|ALT_INV_ram~39_q\,
	combout => \memoriaDados|ram~528_combout\);

-- Location: LABCELL_X41_Y7_N36
\memoriaDados|ram~564\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~564_combout\ = ( \ROM1|memROM~2_combout\ & ( (!\ROM1|memROM~4_combout\ & (\ROM1|memROM~8_combout\ & (\memoriaDados|process_0~0_combout\ & \ROM1|memROM~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \memoriaDados|ALT_INV_process_0~0_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \memoriaDados|ram~564_combout\);

-- Location: FF_X42_Y7_N47
\memoriaDados|ram~311\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \memoriaDados|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~311_q\);

-- Location: LABCELL_X41_Y7_N48
\memoriaDados|ram~565\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~565_combout\ = ( \ROM1|memROM~6_combout\ & ( \memoriaDados|ram~527_combout\ & ( (\ROM1|memROM~2_combout\ & \memoriaDados|process_0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \memoriaDados|ALT_INV_process_0~0_combout\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \memoriaDados|ALT_INV_ram~527_combout\,
	combout => \memoriaDados|ram~565_combout\);

-- Location: FF_X41_Y7_N20
\memoriaDados|ram~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \memoriaDados|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~71_q\);

-- Location: LABCELL_X41_Y7_N42
\memoriaDados|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~529_combout\ = ( \memoriaDados|ram~71_q\ & ( (!\ROM1|memROM~8_combout\ & ((\ROM1|memROM~4_combout\))) # (\ROM1|memROM~8_combout\ & (\memoriaDados|ram~311_q\ & !\ROM1|memROM~4_combout\)) ) ) # ( !\memoriaDados|ram~71_q\ & ( 
-- (\ROM1|memROM~8_combout\ & (\memoriaDados|ram~311_q\ & !\ROM1|memROM~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000000011110011000000001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \memoriaDados|ALT_INV_ram~311_q\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \memoriaDados|ALT_INV_ram~71_q\,
	combout => \memoriaDados|ram~529_combout\);

-- Location: LABCELL_X41_Y7_N9
\memoriaDados|ram~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~532_combout\ = ( \memoriaDados|ram~528_combout\ & ( \memoriaDados|ram~529_combout\ & ( ((!\ROM1|memROM~6_combout\ & (\memoriaDados|ram~530_combout\)) # (\ROM1|memROM~6_combout\ & ((\memoriaDados|ram~531_combout\)))) # 
-- (\ROM1|memROM~2_combout\) ) ) ) # ( !\memoriaDados|ram~528_combout\ & ( \memoriaDados|ram~529_combout\ & ( (!\ROM1|memROM~2_combout\ & ((!\ROM1|memROM~6_combout\ & (\memoriaDados|ram~530_combout\)) # (\ROM1|memROM~6_combout\ & 
-- ((\memoriaDados|ram~531_combout\))))) # (\ROM1|memROM~2_combout\ & (\ROM1|memROM~6_combout\)) ) ) ) # ( \memoriaDados|ram~528_combout\ & ( !\memoriaDados|ram~529_combout\ & ( (!\ROM1|memROM~2_combout\ & ((!\ROM1|memROM~6_combout\ & 
-- (\memoriaDados|ram~530_combout\)) # (\ROM1|memROM~6_combout\ & ((\memoriaDados|ram~531_combout\))))) # (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~6_combout\)) ) ) ) # ( !\memoriaDados|ram~528_combout\ & ( !\memoriaDados|ram~529_combout\ & ( 
-- (!\ROM1|memROM~2_combout\ & ((!\ROM1|memROM~6_combout\ & (\memoriaDados|ram~530_combout\)) # (\ROM1|memROM~6_combout\ & ((\memoriaDados|ram~531_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010010011000110111000011001001110110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \memoriaDados|ALT_INV_ram~530_combout\,
	datad => \memoriaDados|ALT_INV_ram~531_combout\,
	datae => \memoriaDados|ALT_INV_ram~528_combout\,
	dataf => \memoriaDados|ALT_INV_ram~529_combout\,
	combout => \memoriaDados|ram~532_combout\);

-- Location: LABCELL_X41_Y6_N0
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

-- Location: LABCELL_X39_Y6_N51
\CPU|REG1|DOUT[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REG1|DOUT[0]~feeder_combout\ = ( \CPU|ULA1|Add0~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ULA1|ALT_INV_Add0~1_sumout\,
	combout => \CPU|REG1|DOUT[0]~feeder_combout\);

-- Location: FF_X39_Y6_N52
\CPU|REG1|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|REG1|DOUT[0]~feeder_combout\,
	asdata => \CPU|ULA1|saida[0]~0_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|Decoder|OUTPUT[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT[0]~DUPLICATE_q\);

-- Location: FF_X40_Y5_N29
\REGLEDR8|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGLEDR8|DOUT~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLEDR8|DOUT~q\);

-- Location: MLABCELL_X42_Y7_N9
\AND_HEX3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_HEX3~0_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~1_combout\ & ( (!\ROM1|memROM~13_combout\ & (!\ROM1|memROM~15_combout\ & (\ROM1|memROM~11_combout\ & !\CPU|PC|DOUT\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \ROM1|ALT_INV_memROM~15_combout\,
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	datad => \CPU|PC|ALT_INV_DOUT\(8),
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \AND_HEX3~0_combout\);

-- Location: MLABCELL_X42_Y7_N18
\ANDLEDR8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ANDLEDR8~0_combout\ = ( !\ROM1|memROM~7_combout\ & ( (\ROM1|memROM~1_combout\ & (!\CPU|PC|DOUT\(8) & (!\ROM1|memROM~3_combout\ & \ROM1|memROM~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \ANDLEDR8~0_combout\);

-- Location: LABCELL_X40_Y5_N54
\REGLEDR8|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGLEDR8|DOUT~0_combout\ = ( \AND_HEX3~0_combout\ & ( \ANDLEDR8~0_combout\ & ( (!\ROM1|memROM~6_combout\ & (\CPU|REG1|DOUT[0]~DUPLICATE_q\)) # (\ROM1|memROM~6_combout\ & ((\REGLEDR8|DOUT~q\))) ) ) ) # ( !\AND_HEX3~0_combout\ & ( \ANDLEDR8~0_combout\ & ( 
-- \REGLEDR8|DOUT~q\ ) ) ) # ( \AND_HEX3~0_combout\ & ( !\ANDLEDR8~0_combout\ & ( \REGLEDR8|DOUT~q\ ) ) ) # ( !\AND_HEX3~0_combout\ & ( !\ANDLEDR8~0_combout\ & ( \REGLEDR8|DOUT~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|REG1|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \REGLEDR8|ALT_INV_DOUT~q\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	datae => \ALT_INV_AND_HEX3~0_combout\,
	dataf => \ALT_INV_ANDLEDR8~0_combout\,
	combout => \REGLEDR8|DOUT~0_combout\);

-- Location: FF_X40_Y5_N28
\REGLEDR8|DOUT~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGLEDR8|DOUT~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLEDR8|DOUT~DUPLICATE_q\);

-- Location: FF_X40_Y5_N11
\REGLEDR9|DOUT~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGLEDR9|DOUT~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLEDR9|DOUT~DUPLICATE_q\);

-- Location: LABCELL_X40_Y5_N24
\REGLEDR9|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGLEDR9|DOUT~0_combout\ = ( \memoriaDados|ram~527_combout\ & ( \REGLEDR9|DOUT~DUPLICATE_q\ & ( ((!\AND_HEX3~0_combout\) # ((\ROM1|memROM~6_combout\) # (\ROM1|memROM~2_combout\))) # (\CPU|REG1|DOUT[0]~DUPLICATE_q\) ) ) ) # ( 
-- !\memoriaDados|ram~527_combout\ & ( \REGLEDR9|DOUT~DUPLICATE_q\ ) ) # ( \memoriaDados|ram~527_combout\ & ( !\REGLEDR9|DOUT~DUPLICATE_q\ & ( (\CPU|REG1|DOUT[0]~DUPLICATE_q\ & (\AND_HEX3~0_combout\ & (!\ROM1|memROM~2_combout\ & !\ROM1|memROM~6_combout\))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000011111111111111111101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REG1|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \ALT_INV_AND_HEX3~0_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	datae => \memoriaDados|ALT_INV_ram~527_combout\,
	dataf => \REGLEDR9|ALT_INV_DOUT~DUPLICATE_q\,
	combout => \REGLEDR9|DOUT~0_combout\);

-- Location: LABCELL_X40_Y5_N9
\REGLEDR9|DOUT~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGLEDR9|DOUT~feeder_combout\ = ( \REGLEDR9|DOUT~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \REGLEDR9|ALT_INV_DOUT~0_combout\,
	combout => \REGLEDR9|DOUT~feeder_combout\);

-- Location: FF_X40_Y5_N10
\REGLEDR9|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGLEDR9|DOUT~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLEDR9|DOUT~q\);

-- Location: MLABCELL_X42_Y6_N45
\ROM1|memROM~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~18_combout\ = ( \ROM1|memROM~3_combout\ & ( \ROM1|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~18_combout\);

-- Location: FF_X40_Y7_N29
\memoriaDados|ram~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \memoriaDados|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~40_q\);

-- Location: FF_X40_Y7_N32
\memoriaDados|ram~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \memoriaDados|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~72_q\);

-- Location: FF_X41_Y7_N4
\memoriaDados|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \memoriaDados|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~32_q\);

-- Location: FF_X39_Y7_N25
\memoriaDados|ram~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \memoriaDados|ram~568_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~64_q\);

-- Location: LABCELL_X40_Y7_N0
\memoriaDados|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~535_combout\ = ( \memoriaDados|ram~32_q\ & ( \memoriaDados|ram~64_q\ & ( (!\ROM1|memROM~2_combout\) # ((!\ROM1|memROM~6_combout\ & (\memoriaDados|ram~40_q\)) # (\ROM1|memROM~6_combout\ & ((\memoriaDados|ram~72_q\)))) ) ) ) # ( 
-- !\memoriaDados|ram~32_q\ & ( \memoriaDados|ram~64_q\ & ( (!\ROM1|memROM~2_combout\ & (\ROM1|memROM~6_combout\)) # (\ROM1|memROM~2_combout\ & ((!\ROM1|memROM~6_combout\ & (\memoriaDados|ram~40_q\)) # (\ROM1|memROM~6_combout\ & 
-- ((\memoriaDados|ram~72_q\))))) ) ) ) # ( \memoriaDados|ram~32_q\ & ( !\memoriaDados|ram~64_q\ & ( (!\ROM1|memROM~2_combout\ & (!\ROM1|memROM~6_combout\)) # (\ROM1|memROM~2_combout\ & ((!\ROM1|memROM~6_combout\ & (\memoriaDados|ram~40_q\)) # 
-- (\ROM1|memROM~6_combout\ & ((\memoriaDados|ram~72_q\))))) ) ) ) # ( !\memoriaDados|ram~32_q\ & ( !\memoriaDados|ram~64_q\ & ( (\ROM1|memROM~2_combout\ & ((!\ROM1|memROM~6_combout\ & (\memoriaDados|ram~40_q\)) # (\ROM1|memROM~6_combout\ & 
-- ((\memoriaDados|ram~72_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101100011001001110100100110001101111010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \memoriaDados|ALT_INV_ram~40_q\,
	datad => \memoriaDados|ALT_INV_ram~72_q\,
	datae => \memoriaDados|ALT_INV_ram~32_q\,
	dataf => \memoriaDados|ALT_INV_ram~64_q\,
	combout => \memoriaDados|ram~535_combout\);

-- Location: FF_X39_Y6_N43
\memoriaDados|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \memoriaDados|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~16_q\);

-- Location: LABCELL_X39_Y6_N33
\memoriaDados|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~533_combout\ = ( \memoriaDados|ram~16_q\ & ( (!\ROM1|memROM~6_combout\ & !\ROM1|memROM~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \memoriaDados|ALT_INV_ram~16_q\,
	combout => \memoriaDados|ram~533_combout\);

-- Location: FF_X40_Y6_N20
\memoriaDados|ram~312\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \memoriaDados|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~312_q\);

-- Location: LABCELL_X40_Y6_N18
\memoriaDados|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~534_combout\ = ( \ROM1|memROM~6_combout\ & ( (\ROM1|memROM~2_combout\ & \memoriaDados|ram~312_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \memoriaDados|ALT_INV_ram~312_q\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \memoriaDados|ram~534_combout\);

-- Location: LABCELL_X40_Y6_N21
\memoriaDados|ram~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~536_combout\ = ( \memoriaDados|ram~534_combout\ & ( (!\ROM1|memROM~8_combout\ & ((!\ROM1|memROM~4_combout\ & ((\memoriaDados|ram~533_combout\))) # (\ROM1|memROM~4_combout\ & (\memoriaDados|ram~535_combout\)))) # (\ROM1|memROM~8_combout\ 
-- & (((!\ROM1|memROM~4_combout\)))) ) ) # ( !\memoriaDados|ram~534_combout\ & ( (!\ROM1|memROM~8_combout\ & ((!\ROM1|memROM~4_combout\ & ((\memoriaDados|ram~533_combout\))) # (\ROM1|memROM~4_combout\ & (\memoriaDados|ram~535_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000100010000010100010001001011111001000100101111100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datab => \memoriaDados|ALT_INV_ram~535_combout\,
	datac => \memoriaDados|ALT_INV_ram~533_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \memoriaDados|ALT_INV_ram~534_combout\,
	combout => \memoriaDados|ram~536_combout\);

-- Location: LABCELL_X41_Y6_N3
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

-- Location: LABCELL_X39_Y6_N30
\CPU|REG1|DOUT[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REG1|DOUT[1]~feeder_combout\ = \CPU|ULA1|Add0~5_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|ULA1|ALT_INV_Add0~5_sumout\,
	combout => \CPU|REG1|DOUT[1]~feeder_combout\);

-- Location: LABCELL_X40_Y6_N30
\CPU|ULA1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~5_sumout\ = SUM(( (!\CPU|Decoder|Equal5~1_combout\ & (((!\memoriaDados|ram~536_combout\)))) # (\CPU|Decoder|Equal5~1_combout\ & (((!\ROM1|memROM~18_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( \CPU|REG1|DOUT\(1) ) + ( \CPU|ULA1|Add1~2\ ))
-- \CPU|ULA1|Add1~6\ = CARRY(( (!\CPU|Decoder|Equal5~1_combout\ & (((!\memoriaDados|ram~536_combout\)))) # (\CPU|Decoder|Equal5~1_combout\ & (((!\ROM1|memROM~18_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( \CPU|REG1|DOUT\(1) ) + ( \CPU|ULA1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111110100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \CPU|Decoder|ALT_INV_Equal5~1_combout\,
	datac => \ROM1|ALT_INV_memROM~18_combout\,
	datad => \memoriaDados|ALT_INV_ram~536_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(1),
	cin => \CPU|ULA1|Add1~2\,
	sumout => \CPU|ULA1|Add1~5_sumout\,
	cout => \CPU|ULA1|Add1~6\);

-- Location: LABCELL_X39_Y6_N3
\CPU|ULA1|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[1]~1_combout\ = ( \CPU|Decoder|Equal5~1_combout\ & ( \memoriaDados|ram~536_combout\ & ( (!\CPU|Decoder|Operacao~0_combout\ & (\CPU|ULA1|Add1~5_sumout\)) # (\CPU|Decoder|Operacao~0_combout\ & ((\ROM1|memROM~4_combout\))) ) ) ) # ( 
-- !\CPU|Decoder|Equal5~1_combout\ & ( \memoriaDados|ram~536_combout\ & ( (\CPU|Decoder|Operacao~0_combout\) # (\CPU|ULA1|Add1~5_sumout\) ) ) ) # ( \CPU|Decoder|Equal5~1_combout\ & ( !\memoriaDados|ram~536_combout\ & ( (!\CPU|Decoder|Operacao~0_combout\ & 
-- (\CPU|ULA1|Add1~5_sumout\)) # (\CPU|Decoder|Operacao~0_combout\ & ((\ROM1|memROM~4_combout\))) ) ) ) # ( !\CPU|Decoder|Equal5~1_combout\ & ( !\memoriaDados|ram~536_combout\ & ( (\CPU|ULA1|Add1~5_sumout\ & !\CPU|Decoder|Operacao~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001110100011101110111011101110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Add1~5_sumout\,
	datab => \CPU|Decoder|ALT_INV_Operacao~0_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \CPU|Decoder|ALT_INV_Equal5~1_combout\,
	dataf => \memoriaDados|ALT_INV_ram~536_combout\,
	combout => \CPU|ULA1|saida[1]~1_combout\);

-- Location: FF_X39_Y6_N31
\CPU|REG1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|REG1|DOUT[1]~feeder_combout\,
	asdata => \CPU|ULA1|saida[1]~1_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|Decoder|OUTPUT[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(1));

-- Location: MLABCELL_X42_Y6_N39
\ROM1|memROM~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~19_combout\ = ( \ROM1|memROM~1_combout\ & ( \ROM1|memROM~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~19_combout\);

-- Location: FF_X41_Y6_N47
\memoriaDados|ram~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT[2]~DUPLICATE_q\,
	sload => VCC,
	ena => \memoriaDados|ram~568_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~65_q\);

-- Location: LABCELL_X41_Y6_N39
\memoriaDados|ram~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~540_combout\ = ( !\ROM1|memROM~8_combout\ & ( (\memoriaDados|ram~65_q\ & \ROM1|memROM~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \memoriaDados|ALT_INV_ram~65_q\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \memoriaDados|ram~540_combout\);

-- Location: FF_X41_Y7_N16
\memoriaDados|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT[2]~DUPLICATE_q\,
	sload => VCC,
	ena => \memoriaDados|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~17_q\);

-- Location: FF_X41_Y7_N31
\memoriaDados|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT[2]~DUPLICATE_q\,
	sload => VCC,
	ena => \memoriaDados|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~33_q\);

-- Location: LABCELL_X41_Y7_N39
\memoriaDados|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~539_combout\ = (!\ROM1|memROM~8_combout\ & ((!\ROM1|memROM~4_combout\ & (\memoriaDados|ram~17_q\)) # (\ROM1|memROM~4_combout\ & ((\memoriaDados|ram~33_q\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000001000010011000000100001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \memoriaDados|ALT_INV_ram~17_q\,
	datad => \memoriaDados|ALT_INV_ram~33_q\,
	combout => \memoriaDados|ram~539_combout\);

-- Location: FF_X41_Y5_N16
\memoriaDados|ram~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT[2]~DUPLICATE_q\,
	sload => VCC,
	ena => \memoriaDados|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~41_q\);

-- Location: LABCELL_X41_Y5_N30
\memoriaDados|ram~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~537_combout\ = ( \memoriaDados|ram~41_q\ & ( (\ROM1|memROM~4_combout\ & !\ROM1|memROM~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \memoriaDados|ALT_INV_ram~41_q\,
	combout => \memoriaDados|ram~537_combout\);

-- Location: FF_X41_Y7_N55
\memoriaDados|ram~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT[2]~DUPLICATE_q\,
	sload => VCC,
	ena => \memoriaDados|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~73_q\);

-- Location: MLABCELL_X42_Y6_N30
\memoriaDados|ram~313feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~313feeder_combout\ = \CPU|REG1|DOUT[2]~DUPLICATE_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REG1|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \memoriaDados|ram~313feeder_combout\);

-- Location: FF_X42_Y6_N31
\memoriaDados|ram~313\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \memoriaDados|ram~313feeder_combout\,
	ena => \memoriaDados|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~313_q\);

-- Location: MLABCELL_X42_Y6_N12
\memoriaDados|ram~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~538_combout\ = ( \memoriaDados|ram~73_q\ & ( \memoriaDados|ram~313_q\ & ( !\ROM1|memROM~4_combout\ $ (!\ROM1|memROM~8_combout\) ) ) ) # ( !\memoriaDados|ram~73_q\ & ( \memoriaDados|ram~313_q\ & ( (!\ROM1|memROM~4_combout\ & 
-- \ROM1|memROM~8_combout\) ) ) ) # ( \memoriaDados|ram~73_q\ & ( !\memoriaDados|ram~313_q\ & ( (\ROM1|memROM~4_combout\ & !\ROM1|memROM~8_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000001100000011000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datae => \memoriaDados|ALT_INV_ram~73_q\,
	dataf => \memoriaDados|ALT_INV_ram~313_q\,
	combout => \memoriaDados|ram~538_combout\);

-- Location: LABCELL_X41_Y6_N54
\memoriaDados|ram~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~541_combout\ = ( \memoriaDados|ram~537_combout\ & ( \memoriaDados|ram~538_combout\ & ( ((!\ROM1|memROM~6_combout\ & ((\memoriaDados|ram~539_combout\))) # (\ROM1|memROM~6_combout\ & (\memoriaDados|ram~540_combout\))) # 
-- (\ROM1|memROM~2_combout\) ) ) ) # ( !\memoriaDados|ram~537_combout\ & ( \memoriaDados|ram~538_combout\ & ( (!\ROM1|memROM~6_combout\ & (((\memoriaDados|ram~539_combout\ & !\ROM1|memROM~2_combout\)))) # (\ROM1|memROM~6_combout\ & 
-- (((\ROM1|memROM~2_combout\)) # (\memoriaDados|ram~540_combout\))) ) ) ) # ( \memoriaDados|ram~537_combout\ & ( !\memoriaDados|ram~538_combout\ & ( (!\ROM1|memROM~6_combout\ & (((\ROM1|memROM~2_combout\) # (\memoriaDados|ram~539_combout\)))) # 
-- (\ROM1|memROM~6_combout\ & (\memoriaDados|ram~540_combout\ & ((!\ROM1|memROM~2_combout\)))) ) ) ) # ( !\memoriaDados|ram~537_combout\ & ( !\memoriaDados|ram~538_combout\ & ( (!\ROM1|memROM~2_combout\ & ((!\ROM1|memROM~6_combout\ & 
-- ((\memoriaDados|ram~539_combout\))) # (\ROM1|memROM~6_combout\ & (\memoriaDados|ram~540_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100000000000110111010101000011011010101010001101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datab => \memoriaDados|ALT_INV_ram~540_combout\,
	datac => \memoriaDados|ALT_INV_ram~539_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \memoriaDados|ALT_INV_ram~537_combout\,
	dataf => \memoriaDados|ALT_INV_ram~538_combout\,
	combout => \memoriaDados|ram~541_combout\);

-- Location: LABCELL_X41_Y6_N6
\CPU|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~9_sumout\ = SUM(( (!\CPU|Decoder|Equal5~1_combout\ & (((\memoriaDados|ram~541_combout\)))) # (\CPU|Decoder|Equal5~1_combout\ & (!\CPU|PC|DOUT\(8) & (\ROM1|memROM~19_combout\))) ) + ( \CPU|REG1|DOUT[2]~DUPLICATE_q\ ) + ( \CPU|ULA1|Add0~6\ ))
-- \CPU|ULA1|Add0~10\ = CARRY(( (!\CPU|Decoder|Equal5~1_combout\ & (((\memoriaDados|ram~541_combout\)))) # (\CPU|Decoder|Equal5~1_combout\ & (!\CPU|PC|DOUT\(8) & (\ROM1|memROM~19_combout\))) ) + ( \CPU|REG1|DOUT[2]~DUPLICATE_q\ ) + ( \CPU|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_Equal5~1_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~19_combout\,
	datad => \memoriaDados|ALT_INV_ram~541_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT[2]~DUPLICATE_q\,
	cin => \CPU|ULA1|Add0~6\,
	sumout => \CPU|ULA1|Add0~9_sumout\,
	cout => \CPU|ULA1|Add0~10\);

-- Location: LABCELL_X40_Y6_N12
\CPU|REG1|DOUT[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REG1|DOUT[2]~feeder_combout\ = ( \CPU|ULA1|Add0~9_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ULA1|ALT_INV_Add0~9_sumout\,
	combout => \CPU|REG1|DOUT[2]~feeder_combout\);

-- Location: FF_X40_Y6_N14
\CPU|REG1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|REG1|DOUT[2]~feeder_combout\,
	asdata => \CPU|ULA1|saida[2]~2_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|Decoder|OUTPUT[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(2));

-- Location: LABCELL_X40_Y6_N33
\CPU|ULA1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~9_sumout\ = SUM(( (!\CPU|Decoder|Equal5~1_combout\ & (((!\memoriaDados|ram~541_combout\)))) # (\CPU|Decoder|Equal5~1_combout\ & (((!\ROM1|memROM~19_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( \CPU|REG1|DOUT\(2) ) + ( \CPU|ULA1|Add1~6\ ))
-- \CPU|ULA1|Add1~10\ = CARRY(( (!\CPU|Decoder|Equal5~1_combout\ & (((!\memoriaDados|ram~541_combout\)))) # (\CPU|Decoder|Equal5~1_combout\ & (((!\ROM1|memROM~19_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( \CPU|REG1|DOUT\(2) ) + ( \CPU|ULA1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111110100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \CPU|Decoder|ALT_INV_Equal5~1_combout\,
	datac => \ROM1|ALT_INV_memROM~19_combout\,
	datad => \memoriaDados|ALT_INV_ram~541_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(2),
	cin => \CPU|ULA1|Add1~6\,
	sumout => \CPU|ULA1|Add1~9_sumout\,
	cout => \CPU|ULA1|Add1~10\);

-- Location: LABCELL_X40_Y6_N15
\CPU|ULA1|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[2]~2_combout\ = ( \CPU|ULA1|Add1~9_sumout\ & ( (!\CPU|Decoder|Operacao~0_combout\) # ((!\CPU|Decoder|Equal5~1_combout\ & (\memoriaDados|ram~541_combout\)) # (\CPU|Decoder|Equal5~1_combout\ & ((\ROM1|memROM~6_combout\)))) ) ) # ( 
-- !\CPU|ULA1|Add1~9_sumout\ & ( (\CPU|Decoder|Operacao~0_combout\ & ((!\CPU|Decoder|Equal5~1_combout\ & (\memoriaDados|ram~541_combout\)) # (\CPU|Decoder|Equal5~1_combout\ & ((\ROM1|memROM~6_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010011000000000101001111111111010100111111111101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~541_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \CPU|Decoder|ALT_INV_Equal5~1_combout\,
	datad => \CPU|Decoder|ALT_INV_Operacao~0_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~9_sumout\,
	combout => \CPU|ULA1|saida[2]~2_combout\);

-- Location: FF_X40_Y6_N13
\CPU|REG1|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|REG1|DOUT[2]~feeder_combout\,
	asdata => \CPU|ULA1|saida[2]~2_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|Decoder|OUTPUT[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT[2]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y6_N36
\CPU|ULA1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~13_sumout\ = SUM(( (!\memoriaDados|ram~545_combout\) # (\CPU|Decoder|Equal5~1_combout\) ) + ( \CPU|REG1|DOUT\(3) ) + ( \CPU|ULA1|Add1~10\ ))
-- \CPU|ULA1|Add1~14\ = CARRY(( (!\memoriaDados|ram~545_combout\) # (\CPU|Decoder|Equal5~1_combout\) ) + ( \CPU|REG1|DOUT\(3) ) + ( \CPU|ULA1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|Decoder|ALT_INV_Equal5~1_combout\,
	datac => \memoriaDados|ALT_INV_ram~545_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(3),
	cin => \CPU|ULA1|Add1~10\,
	sumout => \CPU|ULA1|Add1~13_sumout\,
	cout => \CPU|ULA1|Add1~14\);

-- Location: LABCELL_X40_Y6_N9
\CPU|ULA1|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[3]~3_combout\ = (!\CPU|Decoder|Operacao~0_combout\ & (\CPU|ULA1|Add1~13_sumout\)) # (\CPU|Decoder|Operacao~0_combout\ & (((\memoriaDados|ram~545_combout\ & !\CPU|Decoder|Equal5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110000010101010011000001010101001100000101010100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Add1~13_sumout\,
	datab => \memoriaDados|ALT_INV_ram~545_combout\,
	datac => \CPU|Decoder|ALT_INV_Equal5~1_combout\,
	datad => \CPU|Decoder|ALT_INV_Operacao~0_combout\,
	combout => \CPU|ULA1|saida[3]~3_combout\);

-- Location: FF_X40_Y6_N8
\CPU|REG1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|REG1|DOUT[3]~feeder_combout\,
	asdata => \CPU|ULA1|saida[3]~3_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|Decoder|OUTPUT[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(3));

-- Location: FF_X40_Y7_N10
\memoriaDados|ram~314\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \memoriaDados|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~314_q\);

-- Location: LABCELL_X39_Y7_N48
\memoriaDados|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~543_combout\ = ( \memoriaDados|ram~314_q\ & ( (\ROM1|memROM~6_combout\ & \ROM1|memROM~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \memoriaDados|ALT_INV_ram~314_q\,
	combout => \memoriaDados|ram~543_combout\);

-- Location: FF_X40_Y7_N14
\memoriaDados|ram~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \memoriaDados|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~74_q\);

-- Location: LABCELL_X40_Y5_N30
\memoriaDados|ram~34feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~34feeder_combout\ = ( \CPU|REG1|DOUT[3]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \memoriaDados|ram~34feeder_combout\);

-- Location: FF_X40_Y5_N31
\memoriaDados|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \memoriaDados|ram~34feeder_combout\,
	ena => \memoriaDados|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~34_q\);

-- Location: FF_X40_Y7_N4
\memoriaDados|ram~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \memoriaDados|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~42_q\);

-- Location: FF_X39_Y7_N58
\memoriaDados|ram~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \memoriaDados|ram~568_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~66_q\);

-- Location: LABCELL_X39_Y7_N3
\memoriaDados|ram~544\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~544_combout\ = ( \memoriaDados|ram~42_q\ & ( \memoriaDados|ram~66_q\ & ( (!\ROM1|memROM~6_combout\ & (((\memoriaDados|ram~34_q\) # (\ROM1|memROM~2_combout\)))) # (\ROM1|memROM~6_combout\ & (((!\ROM1|memROM~2_combout\)) # 
-- (\memoriaDados|ram~74_q\))) ) ) ) # ( !\memoriaDados|ram~42_q\ & ( \memoriaDados|ram~66_q\ & ( (!\ROM1|memROM~6_combout\ & (((!\ROM1|memROM~2_combout\ & \memoriaDados|ram~34_q\)))) # (\ROM1|memROM~6_combout\ & (((!\ROM1|memROM~2_combout\)) # 
-- (\memoriaDados|ram~74_q\))) ) ) ) # ( \memoriaDados|ram~42_q\ & ( !\memoriaDados|ram~66_q\ & ( (!\ROM1|memROM~6_combout\ & (((\memoriaDados|ram~34_q\) # (\ROM1|memROM~2_combout\)))) # (\ROM1|memROM~6_combout\ & (\memoriaDados|ram~74_q\ & 
-- (\ROM1|memROM~2_combout\))) ) ) ) # ( !\memoriaDados|ram~42_q\ & ( !\memoriaDados|ram~66_q\ & ( (!\ROM1|memROM~6_combout\ & (((!\ROM1|memROM~2_combout\ & \memoriaDados|ram~34_q\)))) # (\ROM1|memROM~6_combout\ & (\memoriaDados|ram~74_q\ & 
-- (\ROM1|memROM~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110100001000010111010101101010001111100010101101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datab => \memoriaDados|ALT_INV_ram~74_q\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \memoriaDados|ALT_INV_ram~34_q\,
	datae => \memoriaDados|ALT_INV_ram~42_q\,
	dataf => \memoriaDados|ALT_INV_ram~66_q\,
	combout => \memoriaDados|ram~544_combout\);

-- Location: FF_X39_Y7_N17
\memoriaDados|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \memoriaDados|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~18_q\);

-- Location: LABCELL_X39_Y7_N21
\memoriaDados|ram~542\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~542_combout\ = ( !\ROM1|memROM~2_combout\ & ( (\memoriaDados|ram~18_q\ & !\ROM1|memROM~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \memoriaDados|ALT_INV_ram~18_q\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \memoriaDados|ram~542_combout\);

-- Location: LABCELL_X39_Y7_N9
\memoriaDados|ram~545\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~545_combout\ = ( \memoriaDados|ram~544_combout\ & ( \memoriaDados|ram~542_combout\ & ( (!\ROM1|memROM~8_combout\) # ((!\ROM1|memROM~4_combout\ & \memoriaDados|ram~543_combout\)) ) ) ) # ( !\memoriaDados|ram~544_combout\ & ( 
-- \memoriaDados|ram~542_combout\ & ( (!\ROM1|memROM~4_combout\ & ((!\ROM1|memROM~8_combout\) # (\memoriaDados|ram~543_combout\))) ) ) ) # ( \memoriaDados|ram~544_combout\ & ( !\memoriaDados|ram~542_combout\ & ( (!\ROM1|memROM~8_combout\ & 
-- (\ROM1|memROM~4_combout\)) # (\ROM1|memROM~8_combout\ & (!\ROM1|memROM~4_combout\ & \memoriaDados|ram~543_combout\)) ) ) ) # ( !\memoriaDados|ram~544_combout\ & ( !\memoriaDados|ram~542_combout\ & ( (\ROM1|memROM~8_combout\ & (!\ROM1|memROM~4_combout\ & 
-- \memoriaDados|ram~543_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000010100101101010100000111100001010101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \memoriaDados|ALT_INV_ram~543_combout\,
	datae => \memoriaDados|ALT_INV_ram~544_combout\,
	dataf => \memoriaDados|ALT_INV_ram~542_combout\,
	combout => \memoriaDados|ram~545_combout\);

-- Location: LABCELL_X41_Y6_N9
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

-- Location: LABCELL_X40_Y6_N6
\CPU|REG1|DOUT[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REG1|DOUT[3]~feeder_combout\ = ( \CPU|ULA1|Add0~13_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ULA1|ALT_INV_Add0~13_sumout\,
	combout => \CPU|REG1|DOUT[3]~feeder_combout\);

-- Location: FF_X40_Y6_N7
\CPU|REG1|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|REG1|DOUT[3]~feeder_combout\,
	asdata => \CPU|ULA1|saida[3]~3_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|Decoder|OUTPUT[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT[3]~DUPLICATE_q\);

-- Location: FF_X41_Y7_N8
\memoriaDados|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \memoriaDados|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~19_q\);

-- Location: FF_X41_Y7_N53
\memoriaDados|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \memoriaDados|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~35_q\);

-- Location: LABCELL_X41_Y7_N21
\memoriaDados|ram~548\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~548_combout\ = ( \memoriaDados|ram~35_q\ & ( (!\ROM1|memROM~8_combout\ & ((\memoriaDados|ram~19_q\) # (\ROM1|memROM~4_combout\))) ) ) # ( !\memoriaDados|ram~35_q\ & ( (!\ROM1|memROM~4_combout\ & (\memoriaDados|ram~19_q\ & 
-- !\ROM1|memROM~8_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000001011111000000000101111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \memoriaDados|ALT_INV_ram~19_q\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \memoriaDados|ALT_INV_ram~35_q\,
	combout => \memoriaDados|ram~548_combout\);

-- Location: FF_X41_Y7_N29
\memoriaDados|ram~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \memoriaDados|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~75_q\);

-- Location: FF_X40_Y7_N7
\memoriaDados|ram~315\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \memoriaDados|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~315_q\);

-- Location: LABCELL_X41_Y7_N24
\memoriaDados|ram~547\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~547_combout\ = ( \ROM1|memROM~4_combout\ & ( \memoriaDados|ram~315_q\ & ( (\memoriaDados|ram~75_q\ & !\ROM1|memROM~8_combout\) ) ) ) # ( !\ROM1|memROM~4_combout\ & ( \memoriaDados|ram~315_q\ & ( \ROM1|memROM~8_combout\ ) ) ) # ( 
-- \ROM1|memROM~4_combout\ & ( !\memoriaDados|ram~315_q\ & ( (\memoriaDados|ram~75_q\ & !\ROM1|memROM~8_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000111111110000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \memoriaDados|ALT_INV_ram~75_q\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \memoriaDados|ALT_INV_ram~315_q\,
	combout => \memoriaDados|ram~547_combout\);

-- Location: FF_X41_Y6_N58
\memoriaDados|ram~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \memoriaDados|ram~568_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~67_q\);

-- Location: LABCELL_X41_Y6_N45
\memoriaDados|ram~549\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~549_combout\ = ( \memoriaDados|ram~67_q\ & ( (!\ROM1|memROM~8_combout\ & \ROM1|memROM~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \memoriaDados|ALT_INV_ram~67_q\,
	combout => \memoriaDados|ram~549_combout\);

-- Location: FF_X40_Y7_N25
\memoriaDados|ram~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \memoriaDados|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~43_q\);

-- Location: LABCELL_X40_Y7_N18
\memoriaDados|ram~546\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~546_combout\ = ( \ROM1|memROM~4_combout\ & ( \memoriaDados|ram~43_q\ & ( !\ROM1|memROM~8_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \memoriaDados|ALT_INV_ram~43_q\,
	combout => \memoriaDados|ram~546_combout\);

-- Location: LABCELL_X41_Y7_N57
\memoriaDados|ram~550\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~550_combout\ = ( \memoriaDados|ram~549_combout\ & ( \memoriaDados|ram~546_combout\ & ( (!\ROM1|memROM~2_combout\ & (((\ROM1|memROM~6_combout\)) # (\memoriaDados|ram~548_combout\))) # (\ROM1|memROM~2_combout\ & 
-- (((!\ROM1|memROM~6_combout\) # (\memoriaDados|ram~547_combout\)))) ) ) ) # ( !\memoriaDados|ram~549_combout\ & ( \memoriaDados|ram~546_combout\ & ( (!\ROM1|memROM~2_combout\ & (\memoriaDados|ram~548_combout\ & (!\ROM1|memROM~6_combout\))) # 
-- (\ROM1|memROM~2_combout\ & (((!\ROM1|memROM~6_combout\) # (\memoriaDados|ram~547_combout\)))) ) ) ) # ( \memoriaDados|ram~549_combout\ & ( !\memoriaDados|ram~546_combout\ & ( (!\ROM1|memROM~2_combout\ & (((\ROM1|memROM~6_combout\)) # 
-- (\memoriaDados|ram~548_combout\))) # (\ROM1|memROM~2_combout\ & (((\ROM1|memROM~6_combout\ & \memoriaDados|ram~547_combout\)))) ) ) ) # ( !\memoriaDados|ram~549_combout\ & ( !\memoriaDados|ram~546_combout\ & ( (!\ROM1|memROM~2_combout\ & 
-- (\memoriaDados|ram~548_combout\ & (!\ROM1|memROM~6_combout\))) # (\ROM1|memROM~2_combout\ & (((\ROM1|memROM~6_combout\ & \memoriaDados|ram~547_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000011010011000100111101110000011100110111110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~548_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \memoriaDados|ALT_INV_ram~547_combout\,
	datae => \memoriaDados|ALT_INV_ram~549_combout\,
	dataf => \memoriaDados|ALT_INV_ram~546_combout\,
	combout => \memoriaDados|ram~550_combout\);

-- Location: LABCELL_X41_Y6_N12
\CPU|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~17_sumout\ = SUM(( \CPU|REG1|DOUT\(4) ) + ( (!\CPU|Decoder|Equal5~1_combout\ & \memoriaDados|ram~550_combout\) ) + ( \CPU|ULA1|Add0~14\ ))
-- \CPU|ULA1|Add0~18\ = CARRY(( \CPU|REG1|DOUT\(4) ) + ( (!\CPU|Decoder|Equal5~1_combout\ & \memoriaDados|ram~550_combout\) ) + ( \CPU|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101011111010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_Equal5~1_combout\,
	datac => \memoriaDados|ALT_INV_ram~550_combout\,
	datad => \CPU|REG1|ALT_INV_DOUT\(4),
	cin => \CPU|ULA1|Add0~14\,
	sumout => \CPU|ULA1|Add0~17_sumout\,
	cout => \CPU|ULA1|Add0~18\);

-- Location: LABCELL_X40_Y6_N0
\CPU|REG1|DOUT[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REG1|DOUT[4]~feeder_combout\ = ( \CPU|ULA1|Add0~17_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ULA1|ALT_INV_Add0~17_sumout\,
	combout => \CPU|REG1|DOUT[4]~feeder_combout\);

-- Location: LABCELL_X40_Y6_N39
\CPU|ULA1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~17_sumout\ = SUM(( \CPU|REG1|DOUT\(4) ) + ( (!\memoriaDados|ram~550_combout\) # (\CPU|Decoder|Equal5~1_combout\) ) + ( \CPU|ULA1|Add1~14\ ))
-- \CPU|ULA1|Add1~18\ = CARRY(( \CPU|REG1|DOUT\(4) ) + ( (!\memoriaDados|ram~550_combout\) # (\CPU|Decoder|Equal5~1_combout\) ) + ( \CPU|ULA1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|Decoder|ALT_INV_Equal5~1_combout\,
	datac => \memoriaDados|ALT_INV_ram~550_combout\,
	datad => \CPU|REG1|ALT_INV_DOUT\(4),
	cin => \CPU|ULA1|Add1~14\,
	sumout => \CPU|ULA1|Add1~17_sumout\,
	cout => \CPU|ULA1|Add1~18\);

-- Location: LABCELL_X40_Y6_N3
\CPU|ULA1|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[4]~4_combout\ = ( \CPU|ULA1|Add1~17_sumout\ & ( (!\CPU|Decoder|Operacao~0_combout\) # ((\memoriaDados|ram~550_combout\ & !\CPU|Decoder|Equal5~1_combout\)) ) ) # ( !\CPU|ULA1|Add1~17_sumout\ & ( (\memoriaDados|ram~550_combout\ & 
-- (!\CPU|Decoder|Equal5~1_combout\ & \CPU|Decoder|Operacao~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000011111111001100001111111100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \memoriaDados|ALT_INV_ram~550_combout\,
	datac => \CPU|Decoder|ALT_INV_Equal5~1_combout\,
	datad => \CPU|Decoder|ALT_INV_Operacao~0_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~17_sumout\,
	combout => \CPU|ULA1|saida[4]~4_combout\);

-- Location: FF_X40_Y6_N2
\CPU|REG1|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|REG1|DOUT[4]~feeder_combout\,
	asdata => \CPU|ULA1|saida[4]~4_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|Decoder|OUTPUT[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(4));

-- Location: LABCELL_X41_Y7_N18
\ROM1|memROM~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~20_combout\ = ( \ROM1|memROM~7_combout\ & ( \ROM1|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \ROM1|memROM~20_combout\);

-- Location: FF_X42_Y6_N47
\memoriaDados|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT[5]~DUPLICATE_q\,
	sload => VCC,
	ena => \memoriaDados|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~20_q\);

-- Location: MLABCELL_X42_Y6_N0
\memoriaDados|ram~551\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~551_combout\ = ( \memoriaDados|ram~20_q\ & ( (!\ROM1|memROM~6_combout\ & !\ROM1|memROM~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \memoriaDados|ALT_INV_ram~20_q\,
	combout => \memoriaDados|ram~551_combout\);

-- Location: FF_X40_Y5_N52
\memoriaDados|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT[5]~DUPLICATE_q\,
	sload => VCC,
	ena => \memoriaDados|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~36_q\);

-- Location: LABCELL_X40_Y6_N42
\CPU|ULA1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~21_sumout\ = SUM(( (!\CPU|Decoder|Equal5~1_combout\ & (((!\memoriaDados|ram~554_combout\)))) # (\CPU|Decoder|Equal5~1_combout\ & (((!\ROM1|memROM~20_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( \CPU|REG1|DOUT\(5) ) + ( \CPU|ULA1|Add1~18\ ))
-- \CPU|ULA1|Add1~22\ = CARRY(( (!\CPU|Decoder|Equal5~1_combout\ & (((!\memoriaDados|ram~554_combout\)))) # (\CPU|Decoder|Equal5~1_combout\ & (((!\ROM1|memROM~20_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( \CPU|REG1|DOUT\(5) ) + ( \CPU|ULA1|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111110100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \CPU|Decoder|ALT_INV_Equal5~1_combout\,
	datac => \ROM1|ALT_INV_memROM~20_combout\,
	datad => \memoriaDados|ALT_INV_ram~554_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(5),
	cin => \CPU|ULA1|Add1~18\,
	sumout => \CPU|ULA1|Add1~21_sumout\,
	cout => \CPU|ULA1|Add1~22\);

-- Location: LABCELL_X41_Y6_N27
\CPU|ULA1|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[5]~5_combout\ = ( \CPU|Decoder|Operacao~0_combout\ & ( (!\CPU|Decoder|Equal5~1_combout\ & ((\memoriaDados|ram~554_combout\))) # (\CPU|Decoder|Equal5~1_combout\ & (\ROM1|memROM~8_combout\)) ) ) # ( !\CPU|Decoder|Operacao~0_combout\ & ( 
-- \CPU|ULA1|Add1~21_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011010101010011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datab => \memoriaDados|ALT_INV_ram~554_combout\,
	datac => \CPU|ULA1|ALT_INV_Add1~21_sumout\,
	datad => \CPU|Decoder|ALT_INV_Equal5~1_combout\,
	dataf => \CPU|Decoder|ALT_INV_Operacao~0_combout\,
	combout => \CPU|ULA1|saida[5]~5_combout\);

-- Location: FF_X41_Y6_N26
\CPU|REG1|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|REG1|DOUT[5]~feeder_combout\,
	asdata => \CPU|ULA1|saida[5]~5_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|Decoder|OUTPUT[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(5));

-- Location: FF_X41_Y6_N43
\memoriaDados|ram~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \memoriaDados|ram~568_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~68_q\);

-- Location: FF_X41_Y5_N55
\memoriaDados|ram~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \memoriaDados|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~44_q\);

-- Location: MLABCELL_X42_Y6_N6
\memoriaDados|ram~76feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~76feeder_combout\ = \CPU|REG1|DOUT[5]~DUPLICATE_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|REG1|ALT_INV_DOUT[5]~DUPLICATE_q\,
	combout => \memoriaDados|ram~76feeder_combout\);

-- Location: FF_X42_Y6_N7
\memoriaDados|ram~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \memoriaDados|ram~76feeder_combout\,
	ena => \memoriaDados|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~76_q\);

-- Location: LABCELL_X41_Y6_N48
\memoriaDados|ram~553\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~553_combout\ = ( \memoriaDados|ram~44_q\ & ( \memoriaDados|ram~76_q\ & ( ((!\ROM1|memROM~6_combout\ & (\memoriaDados|ram~36_q\)) # (\ROM1|memROM~6_combout\ & ((\memoriaDados|ram~68_q\)))) # (\ROM1|memROM~2_combout\) ) ) ) # ( 
-- !\memoriaDados|ram~44_q\ & ( \memoriaDados|ram~76_q\ & ( (!\ROM1|memROM~6_combout\ & (\memoriaDados|ram~36_q\ & ((!\ROM1|memROM~2_combout\)))) # (\ROM1|memROM~6_combout\ & (((\ROM1|memROM~2_combout\) # (\memoriaDados|ram~68_q\)))) ) ) ) # ( 
-- \memoriaDados|ram~44_q\ & ( !\memoriaDados|ram~76_q\ & ( (!\ROM1|memROM~6_combout\ & (((\ROM1|memROM~2_combout\)) # (\memoriaDados|ram~36_q\))) # (\ROM1|memROM~6_combout\ & (((\memoriaDados|ram~68_q\ & !\ROM1|memROM~2_combout\)))) ) ) ) # ( 
-- !\memoriaDados|ram~44_q\ & ( !\memoriaDados|ram~76_q\ & ( (!\ROM1|memROM~2_combout\ & ((!\ROM1|memROM~6_combout\ & (\memoriaDados|ram~36_q\)) # (\ROM1|memROM~6_combout\ & ((\memoriaDados|ram~68_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100000000010100111111000001010011000011110101001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~36_q\,
	datab => \memoriaDados|ALT_INV_ram~68_q\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \memoriaDados|ALT_INV_ram~44_q\,
	dataf => \memoriaDados|ALT_INV_ram~76_q\,
	combout => \memoriaDados|ram~553_combout\);

-- Location: MLABCELL_X42_Y6_N57
\memoriaDados|ram~316feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~316feeder_combout\ = \CPU|REG1|DOUT[5]~DUPLICATE_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REG1|ALT_INV_DOUT[5]~DUPLICATE_q\,
	combout => \memoriaDados|ram~316feeder_combout\);

-- Location: FF_X42_Y6_N58
\memoriaDados|ram~316\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \memoriaDados|ram~316feeder_combout\,
	ena => \memoriaDados|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~316_q\);

-- Location: MLABCELL_X42_Y6_N36
\memoriaDados|ram~552\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~552_combout\ = ( \memoriaDados|ram~316_q\ & ( (\ROM1|memROM~6_combout\ & \ROM1|memROM~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \memoriaDados|ALT_INV_ram~316_q\,
	combout => \memoriaDados|ram~552_combout\);

-- Location: LABCELL_X41_Y6_N30
\memoriaDados|ram~554\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~554_combout\ = ( \memoriaDados|ram~552_combout\ & ( (!\ROM1|memROM~8_combout\ & ((!\ROM1|memROM~4_combout\ & (\memoriaDados|ram~551_combout\)) # (\ROM1|memROM~4_combout\ & ((\memoriaDados|ram~553_combout\))))) # (\ROM1|memROM~8_combout\ 
-- & (!\ROM1|memROM~4_combout\)) ) ) # ( !\memoriaDados|ram~552_combout\ & ( (!\ROM1|memROM~8_combout\ & ((!\ROM1|memROM~4_combout\ & (\memoriaDados|ram~551_combout\)) # (\ROM1|memROM~4_combout\ & ((\memoriaDados|ram~553_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101001001100011011100100110001101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \memoriaDados|ALT_INV_ram~551_combout\,
	datad => \memoriaDados|ALT_INV_ram~553_combout\,
	dataf => \memoriaDados|ALT_INV_ram~552_combout\,
	combout => \memoriaDados|ram~554_combout\);

-- Location: LABCELL_X41_Y6_N15
\CPU|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~21_sumout\ = SUM(( (!\CPU|Decoder|Equal5~1_combout\ & (((\memoriaDados|ram~554_combout\)))) # (\CPU|Decoder|Equal5~1_combout\ & (!\CPU|PC|DOUT\(8) & (\ROM1|memROM~20_combout\))) ) + ( \CPU|REG1|DOUT\(5) ) + ( \CPU|ULA1|Add0~18\ ))
-- \CPU|ULA1|Add0~22\ = CARRY(( (!\CPU|Decoder|Equal5~1_combout\ & (((\memoriaDados|ram~554_combout\)))) # (\CPU|Decoder|Equal5~1_combout\ & (!\CPU|PC|DOUT\(8) & (\ROM1|memROM~20_combout\))) ) + ( \CPU|REG1|DOUT\(5) ) + ( \CPU|ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_Equal5~1_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~20_combout\,
	datad => \memoriaDados|ALT_INV_ram~554_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(5),
	cin => \CPU|ULA1|Add0~18\,
	sumout => \CPU|ULA1|Add0~21_sumout\,
	cout => \CPU|ULA1|Add0~22\);

-- Location: LABCELL_X41_Y6_N24
\CPU|REG1|DOUT[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REG1|DOUT[5]~feeder_combout\ = ( \CPU|ULA1|Add0~21_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ULA1|ALT_INV_Add0~21_sumout\,
	combout => \CPU|REG1|DOUT[5]~feeder_combout\);

-- Location: FF_X41_Y6_N25
\CPU|REG1|DOUT[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|REG1|DOUT[5]~feeder_combout\,
	asdata => \CPU|ULA1|saida[5]~5_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|Decoder|OUTPUT[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT[5]~DUPLICATE_q\);

-- Location: FF_X40_Y7_N17
\memoriaDados|ram~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT[6]~DUPLICATE_q\,
	sload => VCC,
	ena => \memoriaDados|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~77_q\);

-- Location: FF_X40_Y7_N22
\memoriaDados|ram~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT[6]~DUPLICATE_q\,
	sload => VCC,
	ena => \memoriaDados|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~45_q\);

-- Location: LABCELL_X40_Y7_N15
\memoriaDados|ram~555\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~555_combout\ = ( \memoriaDados|ram~77_q\ & ( \memoriaDados|ram~45_q\ & ( \ROM1|memROM~4_combout\ ) ) ) # ( !\memoriaDados|ram~77_q\ & ( \memoriaDados|ram~45_q\ & ( (\ROM1|memROM~4_combout\ & !\ROM1|memROM~6_combout\) ) ) ) # ( 
-- \memoriaDados|ram~77_q\ & ( !\memoriaDados|ram~45_q\ & ( (\ROM1|memROM~4_combout\ & \ROM1|memROM~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010101010000010100000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datae => \memoriaDados|ALT_INV_ram~77_q\,
	dataf => \memoriaDados|ALT_INV_ram~45_q\,
	combout => \memoriaDados|ram~555_combout\);

-- Location: FF_X40_Y7_N38
\memoriaDados|ram~317\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT[6]~DUPLICATE_q\,
	sload => VCC,
	ena => \memoriaDados|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~317_q\);

-- Location: LABCELL_X40_Y7_N48
\memoriaDados|ram~557\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~557_combout\ = ( !\ROM1|memROM~4_combout\ & ( \memoriaDados|ram~317_q\ & ( \ROM1|memROM~6_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \memoriaDados|ALT_INV_ram~317_q\,
	combout => \memoriaDados|ram~557_combout\);

-- Location: FF_X41_Y7_N37
\memoriaDados|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT[6]~DUPLICATE_q\,
	sload => VCC,
	ena => \memoriaDados|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~37_q\);

-- Location: FF_X39_Y7_N43
\memoriaDados|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT[6]~DUPLICATE_q\,
	sload => VCC,
	ena => \memoriaDados|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~21_q\);

-- Location: FF_X39_Y7_N31
\memoriaDados|ram~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT[6]~DUPLICATE_q\,
	sload => VCC,
	ena => \memoriaDados|ram~568_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~69_q\);

-- Location: LABCELL_X39_Y7_N39
\memoriaDados|ram~556\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~556_combout\ = ( \memoriaDados|ram~21_q\ & ( \memoriaDados|ram~69_q\ & ( (!\ROM1|memROM~6_combout\ & ((!\ROM1|memROM~4_combout\) # (\memoriaDados|ram~37_q\))) # (\ROM1|memROM~6_combout\ & ((\ROM1|memROM~4_combout\))) ) ) ) # ( 
-- !\memoriaDados|ram~21_q\ & ( \memoriaDados|ram~69_q\ & ( (\ROM1|memROM~4_combout\ & ((\memoriaDados|ram~37_q\) # (\ROM1|memROM~6_combout\))) ) ) ) # ( \memoriaDados|ram~21_q\ & ( !\memoriaDados|ram~69_q\ & ( (!\ROM1|memROM~6_combout\ & 
-- ((!\ROM1|memROM~4_combout\) # (\memoriaDados|ram~37_q\))) ) ) ) # ( !\memoriaDados|ram~21_q\ & ( !\memoriaDados|ram~69_q\ & ( (!\ROM1|memROM~6_combout\ & (\memoriaDados|ram~37_q\ & \ROM1|memROM~4_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010101000101010001000000111000001111010011110100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datab => \memoriaDados|ALT_INV_ram~37_q\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \memoriaDados|ALT_INV_ram~21_q\,
	dataf => \memoriaDados|ALT_INV_ram~69_q\,
	combout => \memoriaDados|ram~556_combout\);

-- Location: LABCELL_X40_Y7_N42
\memoriaDados|ram~558\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~558_combout\ = ( \memoriaDados|ram~557_combout\ & ( \memoriaDados|ram~556_combout\ & ( (!\ROM1|memROM~2_combout\ & ((!\ROM1|memROM~8_combout\))) # (\ROM1|memROM~2_combout\ & ((\ROM1|memROM~8_combout\) # (\memoriaDados|ram~555_combout\))) 
-- ) ) ) # ( !\memoriaDados|ram~557_combout\ & ( \memoriaDados|ram~556_combout\ & ( (!\ROM1|memROM~8_combout\ & ((!\ROM1|memROM~2_combout\) # (\memoriaDados|ram~555_combout\))) ) ) ) # ( \memoriaDados|ram~557_combout\ & ( !\memoriaDados|ram~556_combout\ & ( 
-- (\ROM1|memROM~2_combout\ & ((\ROM1|memROM~8_combout\) # (\memoriaDados|ram~555_combout\))) ) ) ) # ( !\memoriaDados|ram~557_combout\ & ( !\memoriaDados|ram~556_combout\ & ( (\ROM1|memROM~2_combout\ & (\memoriaDados|ram~555_combout\ & 
-- !\ROM1|memROM~8_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000101010001010110110000101100001011010110110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \memoriaDados|ALT_INV_ram~555_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datae => \memoriaDados|ALT_INV_ram~557_combout\,
	dataf => \memoriaDados|ALT_INV_ram~556_combout\,
	combout => \memoriaDados|ram~558_combout\);

-- Location: LABCELL_X41_Y6_N18
\CPU|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~25_sumout\ = SUM(( (!\CPU|Decoder|Equal5~1_combout\ & \memoriaDados|ram~558_combout\) ) + ( \CPU|REG1|DOUT[6]~DUPLICATE_q\ ) + ( \CPU|ULA1|Add0~22\ ))
-- \CPU|ULA1|Add0~26\ = CARRY(( (!\CPU|Decoder|Equal5~1_combout\ & \memoriaDados|ram~558_combout\) ) + ( \CPU|REG1|DOUT[6]~DUPLICATE_q\ ) + ( \CPU|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_Equal5~1_combout\,
	datac => \CPU|REG1|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datad => \memoriaDados|ALT_INV_ram~558_combout\,
	cin => \CPU|ULA1|Add0~22\,
	sumout => \CPU|ULA1|Add0~25_sumout\,
	cout => \CPU|ULA1|Add0~26\);

-- Location: LABCELL_X40_Y6_N54
\CPU|REG1|DOUT[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REG1|DOUT[6]~feeder_combout\ = \CPU|ULA1|Add0~25_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|ULA1|ALT_INV_Add0~25_sumout\,
	combout => \CPU|REG1|DOUT[6]~feeder_combout\);

-- Location: FF_X40_Y6_N56
\CPU|REG1|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|REG1|DOUT[6]~feeder_combout\,
	asdata => \CPU|ULA1|saida[6]~6_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|Decoder|OUTPUT[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(6));

-- Location: LABCELL_X40_Y6_N45
\CPU|ULA1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~25_sumout\ = SUM(( \CPU|REG1|DOUT\(6) ) + ( (!\memoriaDados|ram~558_combout\) # (\CPU|Decoder|Equal5~1_combout\) ) + ( \CPU|ULA1|Add1~22\ ))
-- \CPU|ULA1|Add1~26\ = CARRY(( \CPU|REG1|DOUT\(6) ) + ( (!\memoriaDados|ram~558_combout\) # (\CPU|Decoder|Equal5~1_combout\) ) + ( \CPU|ULA1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|Decoder|ALT_INV_Equal5~1_combout\,
	datac => \memoriaDados|ALT_INV_ram~558_combout\,
	datad => \CPU|REG1|ALT_INV_DOUT\(6),
	cin => \CPU|ULA1|Add1~22\,
	sumout => \CPU|ULA1|Add1~25_sumout\,
	cout => \CPU|ULA1|Add1~26\);

-- Location: LABCELL_X40_Y6_N57
\CPU|ULA1|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[6]~6_combout\ = ( \memoriaDados|ram~558_combout\ & ( (!\CPU|Decoder|Operacao~0_combout\ & (\CPU|ULA1|Add1~25_sumout\)) # (\CPU|Decoder|Operacao~0_combout\ & ((!\CPU|Decoder|Equal5~1_combout\))) ) ) # ( !\memoriaDados|ram~558_combout\ & ( 
-- (!\CPU|Decoder|Operacao~0_combout\ & \CPU|ULA1|Add1~25_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001001110111001000100111011100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_Operacao~0_combout\,
	datab => \CPU|ULA1|ALT_INV_Add1~25_sumout\,
	datad => \CPU|Decoder|ALT_INV_Equal5~1_combout\,
	dataf => \memoriaDados|ALT_INV_ram~558_combout\,
	combout => \CPU|ULA1|saida[6]~6_combout\);

-- Location: FF_X40_Y6_N55
\CPU|REG1|DOUT[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|REG1|DOUT[6]~feeder_combout\,
	asdata => \CPU|ULA1|saida[6]~6_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|Decoder|OUTPUT[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT[6]~DUPLICATE_q\);

-- Location: FF_X40_Y7_N41
\memoriaDados|ram~318\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT[7]~DUPLICATE_q\,
	sload => VCC,
	ena => \memoriaDados|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~318_q\);

-- Location: LABCELL_X40_Y7_N54
\memoriaDados|ram~561\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~561_combout\ = (!\ROM1|memROM~4_combout\ & (\memoriaDados|ram~318_q\ & \ROM1|memROM~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \memoriaDados|ALT_INV_ram~318_q\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \memoriaDados|ram~561_combout\);

-- Location: FF_X40_Y5_N16
\memoriaDados|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT[7]~DUPLICATE_q\,
	sload => VCC,
	ena => \memoriaDados|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~38_q\);

-- Location: FF_X41_Y7_N11
\memoriaDados|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT[7]~DUPLICATE_q\,
	sload => VCC,
	ena => \memoriaDados|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~22_q\);

-- Location: FF_X40_Y7_N56
\memoriaDados|ram~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT[7]~DUPLICATE_q\,
	sload => VCC,
	ena => \memoriaDados|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~46_q\);

-- Location: LABCELL_X40_Y7_N6
\memoriaDados|ram~559\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~559_combout\ = ( \memoriaDados|ram~46_q\ & ( (!\ROM1|memROM~4_combout\ & (((\memoriaDados|ram~22_q\ & !\ROM1|memROM~2_combout\)))) # (\ROM1|memROM~4_combout\ & (((\ROM1|memROM~2_combout\)) # (\memoriaDados|ram~38_q\))) ) ) # ( 
-- !\memoriaDados|ram~46_q\ & ( (!\ROM1|memROM~2_combout\ & ((!\ROM1|memROM~4_combout\ & ((\memoriaDados|ram~22_q\))) # (\ROM1|memROM~4_combout\ & (\memoriaDados|ram~38_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100000000001101010000000000110101000011110011010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~38_q\,
	datab => \memoriaDados|ALT_INV_ram~22_q\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \memoriaDados|ALT_INV_ram~46_q\,
	combout => \memoriaDados|ram~559_combout\);

-- Location: FF_X40_Y7_N47
\memoriaDados|ram~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT[7]~DUPLICATE_q\,
	sload => VCC,
	ena => \memoriaDados|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~78_q\);

-- Location: FF_X39_Y7_N29
\memoriaDados|ram~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT[7]~DUPLICATE_q\,
	sload => VCC,
	ena => \memoriaDados|ram~568_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~70_q\);

-- Location: LABCELL_X39_Y7_N45
\memoriaDados|ram~560\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~560_combout\ = ( \ROM1|memROM~2_combout\ & ( \memoriaDados|ram~70_q\ & ( (\ROM1|memROM~4_combout\ & \memoriaDados|ram~78_q\) ) ) ) # ( !\ROM1|memROM~2_combout\ & ( \memoriaDados|ram~70_q\ & ( \ROM1|memROM~4_combout\ ) ) ) # ( 
-- \ROM1|memROM~2_combout\ & ( !\memoriaDados|ram~70_q\ & ( (\ROM1|memROM~4_combout\ & \memoriaDados|ram~78_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100001111000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \memoriaDados|ALT_INV_ram~78_q\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \memoriaDados|ALT_INV_ram~70_q\,
	combout => \memoriaDados|ram~560_combout\);

-- Location: LABCELL_X40_Y7_N33
\memoriaDados|ram~562\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~562_combout\ = ( \memoriaDados|ram~560_combout\ & ( (!\ROM1|memROM~6_combout\ & (((\memoriaDados|ram~559_combout\ & !\ROM1|memROM~8_combout\)))) # (\ROM1|memROM~6_combout\ & (((!\ROM1|memROM~8_combout\)) # 
-- (\memoriaDados|ram~561_combout\))) ) ) # ( !\memoriaDados|ram~560_combout\ & ( (!\ROM1|memROM~6_combout\ & (((\memoriaDados|ram~559_combout\ & !\ROM1|memROM~8_combout\)))) # (\ROM1|memROM~6_combout\ & (\memoriaDados|ram~561_combout\ & 
-- ((\ROM1|memROM~8_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000101001100000000010100111111000001010011111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~561_combout\,
	datab => \memoriaDados|ALT_INV_ram~559_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \memoriaDados|ALT_INV_ram~560_combout\,
	combout => \memoriaDados|ram~562_combout\);

-- Location: LABCELL_X40_Y6_N48
\CPU|ULA1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~29_sumout\ = SUM(( (!\memoriaDados|ram~562_combout\) # (\CPU|Decoder|Equal5~1_combout\) ) + ( \CPU|REG1|DOUT[7]~DUPLICATE_q\ ) + ( \CPU|ULA1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|Decoder|ALT_INV_Equal5~1_combout\,
	datac => \CPU|REG1|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datad => \memoriaDados|ALT_INV_ram~562_combout\,
	cin => \CPU|ULA1|Add1~26\,
	sumout => \CPU|ULA1|Add1~29_sumout\);

-- Location: LABCELL_X41_Y6_N36
\CPU|ULA1|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[7]~7_combout\ = ( \CPU|Decoder|Operacao~0_combout\ & ( (\memoriaDados|ram~562_combout\ & !\CPU|Decoder|Equal5~1_combout\) ) ) # ( !\CPU|Decoder|Operacao~0_combout\ & ( \CPU|ULA1|Add1~29_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~562_combout\,
	datac => \CPU|Decoder|ALT_INV_Equal5~1_combout\,
	datad => \CPU|ULA1|ALT_INV_Add1~29_sumout\,
	dataf => \CPU|Decoder|ALT_INV_Operacao~0_combout\,
	combout => \CPU|ULA1|saida[7]~7_combout\);

-- Location: FF_X41_Y6_N35
\CPU|REG1|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|REG1|DOUT[7]~feeder_combout\,
	asdata => \CPU|ULA1|saida[7]~7_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|Decoder|OUTPUT[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(7));

-- Location: LABCELL_X41_Y6_N21
\CPU|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~29_sumout\ = SUM(( (!\CPU|Decoder|Equal5~1_combout\ & \memoriaDados|ram~562_combout\) ) + ( \CPU|REG1|DOUT\(7) ) + ( \CPU|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_Equal5~1_combout\,
	datac => \memoriaDados|ALT_INV_ram~562_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(7),
	cin => \CPU|ULA1|Add0~26\,
	sumout => \CPU|ULA1|Add0~29_sumout\);

-- Location: LABCELL_X41_Y6_N33
\CPU|REG1|DOUT[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REG1|DOUT[7]~feeder_combout\ = \CPU|ULA1|Add0~29_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|ULA1|ALT_INV_Add0~29_sumout\,
	combout => \CPU|REG1|DOUT[7]~feeder_combout\);

-- Location: FF_X41_Y6_N34
\CPU|REG1|DOUT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|REG1|DOUT[7]~feeder_combout\,
	asdata => \CPU|ULA1|saida[7]~7_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|Decoder|OUTPUT[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT[7]~DUPLICATE_q\);

-- Location: FF_X43_Y7_N34
\CPU|PC|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|somaUm|Add0~5_sumout\,
	asdata => \ROM1|memROM~4_combout\,
	sload => \CPU|Decoder|Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[1]~DUPLICATE_q\);

-- Location: FF_X43_Y7_N52
\CPU|PC|DOUT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|somaUm|Add0~29_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|Decoder|Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[7]~DUPLICATE_q\);

-- Location: LABCELL_X39_Y5_N15
\REG_HEX0|DOUT[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_HEX0|DOUT[0]~feeder_combout\ = \CPU|REG1|DOUT[0]~DUPLICATE_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|REG1|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \REG_HEX0|DOUT[0]~feeder_combout\);

-- Location: LABCELL_X40_Y5_N0
\AND_HEX0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_HEX0~0_combout\ = ( !\ROM1|memROM~4_combout\ & ( \ROM1|memROM~8_combout\ & ( (!\ROM1|memROM~6_combout\ & (!\ROM1|memROM~2_combout\ & \AND_HEX3~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ALT_INV_AND_HEX3~0_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \AND_HEX0~0_combout\);

-- Location: FF_X39_Y5_N16
\REG_HEX0|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REG_HEX0|DOUT[0]~feeder_combout\,
	ena => \AND_HEX0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX0|DOUT\(0));

-- Location: LABCELL_X39_Y5_N30
\REG_HEX0|DOUT[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_HEX0|DOUT[3]~feeder_combout\ = \CPU|REG1|DOUT[3]~DUPLICATE_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|REG1|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \REG_HEX0|DOUT[3]~feeder_combout\);

-- Location: FF_X39_Y5_N31
\REG_HEX0|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REG_HEX0|DOUT[3]~feeder_combout\,
	ena => \AND_HEX0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX0|DOUT\(3));

-- Location: LABCELL_X39_Y5_N3
\REG_HEX0|DOUT[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_HEX0|DOUT[1]~feeder_combout\ = \CPU|REG1|DOUT\(1)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REG1|ALT_INV_DOUT\(1),
	combout => \REG_HEX0|DOUT[1]~feeder_combout\);

-- Location: FF_X39_Y5_N4
\REG_HEX0|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REG_HEX0|DOUT[1]~feeder_combout\,
	ena => \AND_HEX0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX0|DOUT\(1));

-- Location: LABCELL_X39_Y5_N6
\REG_HEX0|DOUT[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_HEX0|DOUT[2]~feeder_combout\ = \CPU|REG1|DOUT[2]~DUPLICATE_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REG1|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \REG_HEX0|DOUT[2]~feeder_combout\);

-- Location: FF_X39_Y5_N7
\REG_HEX0|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REG_HEX0|DOUT[2]~feeder_combout\,
	ena => \AND_HEX0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX0|DOUT\(2));

-- Location: LABCELL_X40_Y4_N15
\LED_HEX0|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX0|rascSaida7seg[0]~0_combout\ = ( \REG_HEX0|DOUT\(2) & ( (!\REG_HEX0|DOUT\(1) & (!\REG_HEX0|DOUT\(0) $ (\REG_HEX0|DOUT\(3)))) ) ) # ( !\REG_HEX0|DOUT\(2) & ( (\REG_HEX0|DOUT\(0) & (!\REG_HEX0|DOUT\(3) $ (\REG_HEX0|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000101000001010000010100000110010000100100001001000010010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX0|ALT_INV_DOUT\(0),
	datab => \REG_HEX0|ALT_INV_DOUT\(3),
	datac => \REG_HEX0|ALT_INV_DOUT\(1),
	dataf => \REG_HEX0|ALT_INV_DOUT\(2),
	combout => \LED_HEX0|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X40_Y4_N42
\LED_HEX0|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX0|rascSaida7seg[1]~1_combout\ = ( \REG_HEX0|DOUT\(2) & ( (!\REG_HEX0|DOUT\(1) & (!\REG_HEX0|DOUT\(0) $ (!\REG_HEX0|DOUT\(3)))) # (\REG_HEX0|DOUT\(1) & ((!\REG_HEX0|DOUT\(0)) # (\REG_HEX0|DOUT\(3)))) ) ) # ( !\REG_HEX0|DOUT\(2) & ( 
-- (\REG_HEX0|DOUT\(1) & (\REG_HEX0|DOUT\(0) & \REG_HEX0|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100111100111100110011110011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX0|ALT_INV_DOUT\(1),
	datac => \REG_HEX0|ALT_INV_DOUT\(0),
	datad => \REG_HEX0|ALT_INV_DOUT\(3),
	dataf => \REG_HEX0|ALT_INV_DOUT\(2),
	combout => \LED_HEX0|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X40_Y4_N12
\LED_HEX0|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX0|rascSaida7seg[2]~2_combout\ = ( \REG_HEX0|DOUT\(1) & ( (!\REG_HEX0|DOUT\(3) & (!\REG_HEX0|DOUT\(0) & !\REG_HEX0|DOUT\(2))) # (\REG_HEX0|DOUT\(3) & ((\REG_HEX0|DOUT\(2)))) ) ) # ( !\REG_HEX0|DOUT\(1) & ( (!\REG_HEX0|DOUT\(0) & (\REG_HEX0|DOUT\(3) 
-- & \REG_HEX0|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001010000011100000111000001110000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX0|ALT_INV_DOUT\(0),
	datab => \REG_HEX0|ALT_INV_DOUT\(3),
	datac => \REG_HEX0|ALT_INV_DOUT\(2),
	dataf => \REG_HEX0|ALT_INV_DOUT\(1),
	combout => \LED_HEX0|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X40_Y4_N39
\LED_HEX0|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX0|rascSaida7seg[3]~3_combout\ = ( \REG_HEX0|DOUT\(2) & ( (!\REG_HEX0|DOUT\(0) & (!\REG_HEX0|DOUT\(3) & !\REG_HEX0|DOUT\(1))) # (\REG_HEX0|DOUT\(0) & ((\REG_HEX0|DOUT\(1)))) ) ) # ( !\REG_HEX0|DOUT\(2) & ( (!\REG_HEX0|DOUT\(0) & (\REG_HEX0|DOUT\(3) 
-- & \REG_HEX0|DOUT\(1))) # (\REG_HEX0|DOUT\(0) & (!\REG_HEX0|DOUT\(3) & !\REG_HEX0|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001001000010010000100100001010000101100001011000010110000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX0|ALT_INV_DOUT\(0),
	datab => \REG_HEX0|ALT_INV_DOUT\(3),
	datac => \REG_HEX0|ALT_INV_DOUT\(1),
	dataf => \REG_HEX0|ALT_INV_DOUT\(2),
	combout => \LED_HEX0|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X40_Y4_N36
\LED_HEX0|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX0|rascSaida7seg[4]~4_combout\ = ( \REG_HEX0|DOUT\(1) & ( (\REG_HEX0|DOUT\(0) & !\REG_HEX0|DOUT\(3)) ) ) # ( !\REG_HEX0|DOUT\(1) & ( (!\REG_HEX0|DOUT\(2) & (\REG_HEX0|DOUT\(0))) # (\REG_HEX0|DOUT\(2) & ((!\REG_HEX0|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110001011100010111000101110001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX0|ALT_INV_DOUT\(0),
	datab => \REG_HEX0|ALT_INV_DOUT\(3),
	datac => \REG_HEX0|ALT_INV_DOUT\(2),
	dataf => \REG_HEX0|ALT_INV_DOUT\(1),
	combout => \LED_HEX0|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X40_Y4_N57
\LED_HEX0|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX0|rascSaida7seg[5]~5_combout\ = ( \REG_HEX0|DOUT\(2) & ( (\REG_HEX0|DOUT\(0) & (!\REG_HEX0|DOUT\(3) $ (!\REG_HEX0|DOUT\(1)))) ) ) # ( !\REG_HEX0|DOUT\(2) & ( (!\REG_HEX0|DOUT\(3) & ((\REG_HEX0|DOUT\(1)) # (\REG_HEX0|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110001001100010011000100110000010100000101000001010000010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX0|ALT_INV_DOUT\(0),
	datab => \REG_HEX0|ALT_INV_DOUT\(3),
	datac => \REG_HEX0|ALT_INV_DOUT\(1),
	dataf => \REG_HEX0|ALT_INV_DOUT\(2),
	combout => \LED_HEX0|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X40_Y4_N54
\LED_HEX0|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX0|rascSaida7seg[6]~6_combout\ = ( \REG_HEX0|DOUT\(1) & ( (\REG_HEX0|DOUT\(0) & (!\REG_HEX0|DOUT\(3) & \REG_HEX0|DOUT\(2))) ) ) # ( !\REG_HEX0|DOUT\(1) & ( (!\REG_HEX0|DOUT\(3) & ((!\REG_HEX0|DOUT\(2)))) # (\REG_HEX0|DOUT\(3) & (!\REG_HEX0|DOUT\(0) 
-- & \REG_HEX0|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001011000010110000101100001000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX0|ALT_INV_DOUT\(0),
	datab => \REG_HEX0|ALT_INV_DOUT\(3),
	datac => \REG_HEX0|ALT_INV_DOUT\(2),
	dataf => \REG_HEX0|ALT_INV_DOUT\(1),
	combout => \LED_HEX0|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X41_Y5_N39
\REG_HEX1|DOUT[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_HEX1|DOUT[1]~feeder_combout\ = ( \CPU|REG1|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(1),
	combout => \REG_HEX1|DOUT[1]~feeder_combout\);

-- Location: LABCELL_X41_Y7_N33
\AND_HEX1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_HEX1~0_combout\ = ( !\ROM1|memROM~4_combout\ & ( !\ROM1|memROM~6_combout\ & ( (\AND_HEX3~0_combout\ & (\ROM1|memROM~8_combout\ & \ROM1|memROM~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AND_HEX3~0_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \AND_HEX1~0_combout\);

-- Location: FF_X41_Y5_N40
\REG_HEX1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REG_HEX1|DOUT[1]~feeder_combout\,
	ena => \AND_HEX1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX1|DOUT\(1));

-- Location: FF_X41_Y5_N7
\REG_HEX1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \AND_HEX1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX1|DOUT\(0));

-- Location: FF_X41_Y5_N52
\REG_HEX1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT[2]~DUPLICATE_q\,
	sload => VCC,
	ena => \AND_HEX1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX1|DOUT\(2));

-- Location: LABCELL_X41_Y5_N36
\REG_HEX1|DOUT[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_HEX1|DOUT[3]~feeder_combout\ = ( \CPU|REG1|DOUT[3]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \REG_HEX1|DOUT[3]~feeder_combout\);

-- Location: FF_X41_Y5_N37
\REG_HEX1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REG_HEX1|DOUT[3]~feeder_combout\,
	ena => \AND_HEX1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX1|DOUT\(3));

-- Location: LABCELL_X40_Y4_N51
\LED_HEX1|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX1|rascSaida7seg[0]~0_combout\ = ( \REG_HEX1|DOUT\(3) & ( (\REG_HEX1|DOUT\(0) & (!\REG_HEX1|DOUT\(1) $ (!\REG_HEX1|DOUT\(2)))) ) ) # ( !\REG_HEX1|DOUT\(3) & ( (!\REG_HEX1|DOUT\(1) & (!\REG_HEX1|DOUT\(0) $ (!\REG_HEX1|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000101000001010000010100000010010000100100001001000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX1|ALT_INV_DOUT\(1),
	datab => \REG_HEX1|ALT_INV_DOUT\(0),
	datac => \REG_HEX1|ALT_INV_DOUT\(2),
	dataf => \REG_HEX1|ALT_INV_DOUT\(3),
	combout => \LED_HEX1|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X40_Y4_N18
\LED_HEX1|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX1|rascSaida7seg[1]~1_combout\ = ( \REG_HEX1|DOUT\(2) & ( (!\REG_HEX1|DOUT\(1) & (!\REG_HEX1|DOUT\(0) $ (!\REG_HEX1|DOUT\(3)))) # (\REG_HEX1|DOUT\(1) & ((!\REG_HEX1|DOUT\(0)) # (\REG_HEX1|DOUT\(3)))) ) ) # ( !\REG_HEX1|DOUT\(2) & ( 
-- (\REG_HEX1|DOUT\(1) & (\REG_HEX1|DOUT\(0) & \REG_HEX1|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000101101101011011010110110101101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX1|ALT_INV_DOUT\(1),
	datab => \REG_HEX1|ALT_INV_DOUT\(0),
	datac => \REG_HEX1|ALT_INV_DOUT\(3),
	dataf => \REG_HEX1|ALT_INV_DOUT\(2),
	combout => \LED_HEX1|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X40_Y4_N21
\LED_HEX1|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX1|rascSaida7seg[2]~2_combout\ = ( \REG_HEX1|DOUT\(3) & ( (\REG_HEX1|DOUT\(2) & ((!\REG_HEX1|DOUT\(0)) # (\REG_HEX1|DOUT\(1)))) ) ) # ( !\REG_HEX1|DOUT\(3) & ( (\REG_HEX1|DOUT\(1) & (!\REG_HEX1|DOUT\(0) & !\REG_HEX1|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000000001101000011010000110100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX1|ALT_INV_DOUT\(1),
	datab => \REG_HEX1|ALT_INV_DOUT\(0),
	datac => \REG_HEX1|ALT_INV_DOUT\(2),
	dataf => \REG_HEX1|ALT_INV_DOUT\(3),
	combout => \LED_HEX1|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X40_Y4_N27
\LED_HEX1|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX1|rascSaida7seg[3]~3_combout\ = ( \REG_HEX1|DOUT\(3) & ( (\REG_HEX1|DOUT\(1) & (!\REG_HEX1|DOUT\(0) $ (\REG_HEX1|DOUT\(2)))) ) ) # ( !\REG_HEX1|DOUT\(3) & ( (!\REG_HEX1|DOUT\(1) & (!\REG_HEX1|DOUT\(0) $ (!\REG_HEX1|DOUT\(2)))) # 
-- (\REG_HEX1|DOUT\(1) & (\REG_HEX1|DOUT\(0) & \REG_HEX1|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100100101001001010010010100101000001010000010100000101000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX1|ALT_INV_DOUT\(1),
	datab => \REG_HEX1|ALT_INV_DOUT\(0),
	datac => \REG_HEX1|ALT_INV_DOUT\(2),
	dataf => \REG_HEX1|ALT_INV_DOUT\(3),
	combout => \LED_HEX1|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X40_Y4_N45
\LED_HEX1|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX1|rascSaida7seg[4]~4_combout\ = ( \REG_HEX1|DOUT\(2) & ( (!\REG_HEX1|DOUT\(3) & ((!\REG_HEX1|DOUT\(1)) # (\REG_HEX1|DOUT\(0)))) ) ) # ( !\REG_HEX1|DOUT\(2) & ( (\REG_HEX1|DOUT\(0) & ((!\REG_HEX1|DOUT\(1)) # (!\REG_HEX1|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001010000011110000101010101111000000001010111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX1|ALT_INV_DOUT\(1),
	datac => \REG_HEX1|ALT_INV_DOUT\(0),
	datad => \REG_HEX1|ALT_INV_DOUT\(3),
	dataf => \REG_HEX1|ALT_INV_DOUT\(2),
	combout => \LED_HEX1|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X40_Y4_N48
\LED_HEX1|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX1|rascSaida7seg[5]~5_combout\ = ( \REG_HEX1|DOUT\(2) & ( (\REG_HEX1|DOUT\(0) & (!\REG_HEX1|DOUT\(1) $ (!\REG_HEX1|DOUT\(3)))) ) ) # ( !\REG_HEX1|DOUT\(2) & ( (!\REG_HEX1|DOUT\(3) & ((\REG_HEX1|DOUT\(0)) # (\REG_HEX1|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000001110000011100000111000000010010000100100001001000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX1|ALT_INV_DOUT\(1),
	datab => \REG_HEX1|ALT_INV_DOUT\(0),
	datac => \REG_HEX1|ALT_INV_DOUT\(3),
	dataf => \REG_HEX1|ALT_INV_DOUT\(2),
	combout => \LED_HEX1|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X40_Y4_N24
\LED_HEX1|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX1|rascSaida7seg[6]~6_combout\ = ( \REG_HEX1|DOUT\(2) & ( (!\REG_HEX1|DOUT\(1) & (!\REG_HEX1|DOUT\(0) & \REG_HEX1|DOUT\(3))) # (\REG_HEX1|DOUT\(1) & (\REG_HEX1|DOUT\(0) & !\REG_HEX1|DOUT\(3))) ) ) # ( !\REG_HEX1|DOUT\(2) & ( (!\REG_HEX1|DOUT\(1) & 
-- !\REG_HEX1|DOUT\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000000011000000110000001100000011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX1|ALT_INV_DOUT\(1),
	datab => \REG_HEX1|ALT_INV_DOUT\(0),
	datac => \REG_HEX1|ALT_INV_DOUT\(3),
	dataf => \REG_HEX1|ALT_INV_DOUT\(2),
	combout => \LED_HEX1|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X39_Y7_N51
\AND_HEX2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_HEX2~0_combout\ = ( \ROM1|memROM~8_combout\ & ( (!\ROM1|memROM~6_combout\ & (!\ROM1|memROM~2_combout\ & (\ROM1|memROM~4_combout\ & \AND_HEX3~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ALT_INV_AND_HEX3~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \AND_HEX2~0_combout\);

-- Location: FF_X39_Y7_N8
\REG_HEX2|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \AND_HEX2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX2|DOUT\(1));

-- Location: FF_X39_Y7_N38
\REG_HEX2|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \AND_HEX2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX2|DOUT[2]~DUPLICATE_q\);

-- Location: FF_X39_Y7_N5
\REG_HEX2|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \AND_HEX2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX2|DOUT\(3));

-- Location: FF_X39_Y7_N1
\REG_HEX2|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \AND_HEX2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX2|DOUT\(0));

-- Location: LABCELL_X39_Y7_N18
\LED_HEX2|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX2|rascSaida7seg[0]~0_combout\ = ( \REG_HEX2|DOUT\(0) & ( (!\REG_HEX2|DOUT\(1) & (!\REG_HEX2|DOUT[2]~DUPLICATE_q\ $ (\REG_HEX2|DOUT\(3)))) # (\REG_HEX2|DOUT\(1) & (!\REG_HEX2|DOUT[2]~DUPLICATE_q\ & \REG_HEX2|DOUT\(3))) ) ) # ( !\REG_HEX2|DOUT\(0) & 
-- ( (!\REG_HEX2|DOUT\(1) & (\REG_HEX2|DOUT[2]~DUPLICATE_q\ & !\REG_HEX2|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000011000000001111001100000000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX2|ALT_INV_DOUT\(1),
	datac => \REG_HEX2|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \REG_HEX2|ALT_INV_DOUT\(3),
	dataf => \REG_HEX2|ALT_INV_DOUT\(0),
	combout => \LED_HEX2|rascSaida7seg[0]~0_combout\);

-- Location: FF_X39_Y7_N2
\REG_HEX2|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \AND_HEX2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX2|DOUT[0]~DUPLICATE_q\);

-- Location: LABCELL_X39_Y7_N27
\LED_HEX2|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX2|rascSaida7seg[1]~1_combout\ = ( \REG_HEX2|DOUT\(3) & ( (!\REG_HEX2|DOUT[0]~DUPLICATE_q\ & ((\REG_HEX2|DOUT[2]~DUPLICATE_q\))) # (\REG_HEX2|DOUT[0]~DUPLICATE_q\ & (\REG_HEX2|DOUT\(1))) ) ) # ( !\REG_HEX2|DOUT\(3) & ( 
-- (\REG_HEX2|DOUT[2]~DUPLICATE_q\ & (!\REG_HEX2|DOUT[0]~DUPLICATE_q\ $ (!\REG_HEX2|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011010000001011010111100000000010110100000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX2|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \REG_HEX2|ALT_INV_DOUT\(1),
	datad => \REG_HEX2|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datae => \REG_HEX2|ALT_INV_DOUT\(3),
	combout => \LED_HEX2|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X39_Y7_N30
\LED_HEX2|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX2|rascSaida7seg[2]~2_combout\ = ( \REG_HEX2|DOUT\(0) & ( (\REG_HEX2|DOUT[2]~DUPLICATE_q\ & (\REG_HEX2|DOUT\(1) & \REG_HEX2|DOUT\(3))) ) ) # ( !\REG_HEX2|DOUT\(0) & ( (!\REG_HEX2|DOUT[2]~DUPLICATE_q\ & (\REG_HEX2|DOUT\(1) & !\REG_HEX2|DOUT\(3))) # 
-- (\REG_HEX2|DOUT[2]~DUPLICATE_q\ & ((\REG_HEX2|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010100100101001001010010010100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX2|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \REG_HEX2|ALT_INV_DOUT\(1),
	datac => \REG_HEX2|ALT_INV_DOUT\(3),
	dataf => \REG_HEX2|ALT_INV_DOUT\(0),
	combout => \LED_HEX2|rascSaida7seg[2]~2_combout\);

-- Location: FF_X39_Y7_N37
\REG_HEX2|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \AND_HEX2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX2|DOUT\(2));

-- Location: LABCELL_X39_Y7_N15
\LED_HEX2|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX2|rascSaida7seg[3]~3_combout\ = ( \REG_HEX2|DOUT\(0) & ( (!\REG_HEX2|DOUT\(1) & (!\REG_HEX2|DOUT\(3) & !\REG_HEX2|DOUT\(2))) # (\REG_HEX2|DOUT\(1) & ((\REG_HEX2|DOUT\(2)))) ) ) # ( !\REG_HEX2|DOUT\(0) & ( (!\REG_HEX2|DOUT\(3) & 
-- (!\REG_HEX2|DOUT\(1) & \REG_HEX2|DOUT\(2))) # (\REG_HEX2|DOUT\(3) & (\REG_HEX2|DOUT\(1) & !\REG_HEX2|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100000011000000110000001100010000011100000111000001110000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX2|ALT_INV_DOUT\(3),
	datab => \REG_HEX2|ALT_INV_DOUT\(1),
	datac => \REG_HEX2|ALT_INV_DOUT\(2),
	dataf => \REG_HEX2|ALT_INV_DOUT\(0),
	combout => \LED_HEX2|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X39_Y7_N33
\LED_HEX2|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX2|rascSaida7seg[4]~4_combout\ = (!\REG_HEX2|DOUT\(1) & ((!\REG_HEX2|DOUT[2]~DUPLICATE_q\ & (\REG_HEX2|DOUT\(0))) # (\REG_HEX2|DOUT[2]~DUPLICATE_q\ & ((!\REG_HEX2|DOUT\(3)))))) # (\REG_HEX2|DOUT\(1) & (((\REG_HEX2|DOUT\(0) & !\REG_HEX2|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111100001000010011110000100001001111000010000100111100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX2|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \REG_HEX2|ALT_INV_DOUT\(1),
	datac => \REG_HEX2|ALT_INV_DOUT\(0),
	datad => \REG_HEX2|ALT_INV_DOUT\(3),
	combout => \LED_HEX2|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X39_Y7_N54
\LED_HEX2|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX2|rascSaida7seg[5]~5_combout\ = ( \REG_HEX2|DOUT[2]~DUPLICATE_q\ & ( (\REG_HEX2|DOUT[0]~DUPLICATE_q\ & (!\REG_HEX2|DOUT\(1) $ (!\REG_HEX2|DOUT\(3)))) ) ) # ( !\REG_HEX2|DOUT[2]~DUPLICATE_q\ & ( (!\REG_HEX2|DOUT\(3) & ((\REG_HEX2|DOUT\(1)) # 
-- (\REG_HEX2|DOUT[0]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000001110000000101000001010001110000011100000001010000010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX2|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \REG_HEX2|ALT_INV_DOUT\(1),
	datac => \REG_HEX2|ALT_INV_DOUT\(3),
	datae => \REG_HEX2|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \LED_HEX2|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X39_Y7_N12
\LED_HEX2|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX2|rascSaida7seg[6]~6_combout\ = ( \REG_HEX2|DOUT\(0) & ( (!\REG_HEX2|DOUT\(3) & (!\REG_HEX2|DOUT\(1) $ (\REG_HEX2|DOUT[2]~DUPLICATE_q\))) ) ) # ( !\REG_HEX2|DOUT\(0) & ( (!\REG_HEX2|DOUT\(1) & (!\REG_HEX2|DOUT[2]~DUPLICATE_q\ $ 
-- (\REG_HEX2|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000001100110000000000110011000011000000001100001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX2|ALT_INV_DOUT\(1),
	datac => \REG_HEX2|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \REG_HEX2|ALT_INV_DOUT\(3),
	dataf => \REG_HEX2|ALT_INV_DOUT\(0),
	combout => \LED_HEX2|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X40_Y5_N21
\REG_HEX3|DOUT[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_HEX3|DOUT[2]~feeder_combout\ = ( \CPU|REG1|DOUT[2]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \REG_HEX3|DOUT[2]~feeder_combout\);

-- Location: LABCELL_X40_Y5_N39
AND_HEX3 : cyclonev_lcell_comb
-- Equation(s):
-- \AND_HEX3~combout\ = ( \ROM1|memROM~4_combout\ & ( \ROM1|memROM~8_combout\ & ( (!\ROM1|memROM~6_combout\ & (\AND_HEX3~0_combout\ & \ROM1|memROM~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \ALT_INV_AND_HEX3~0_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \AND_HEX3~combout\);

-- Location: FF_X40_Y5_N22
\REG_HEX3|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REG_HEX3|DOUT[2]~feeder_combout\,
	ena => \AND_HEX3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX3|DOUT\(2));

-- Location: FF_X40_Y5_N41
\REG_HEX3|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \AND_HEX3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX3|DOUT\(0));

-- Location: LABCELL_X40_Y5_N45
\REG_HEX3|DOUT[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_HEX3|DOUT[3]~feeder_combout\ = ( \CPU|REG1|DOUT[3]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \REG_HEX3|DOUT[3]~feeder_combout\);

-- Location: FF_X40_Y5_N46
\REG_HEX3|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REG_HEX3|DOUT[3]~feeder_combout\,
	ena => \AND_HEX3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX3|DOUT\(3));

-- Location: FF_X40_Y5_N56
\REG_HEX3|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \AND_HEX3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX3|DOUT\(1));

-- Location: LABCELL_X40_Y4_N6
\LED_HEX3|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX3|rascSaida7seg[0]~0_combout\ = ( \REG_HEX3|DOUT\(1) & ( (!\REG_HEX3|DOUT\(2) & (\REG_HEX3|DOUT\(0) & \REG_HEX3|DOUT\(3))) ) ) # ( !\REG_HEX3|DOUT\(1) & ( (!\REG_HEX3|DOUT\(2) & (\REG_HEX3|DOUT\(0) & !\REG_HEX3|DOUT\(3))) # (\REG_HEX3|DOUT\(2) & 
-- (!\REG_HEX3|DOUT\(0) $ (\REG_HEX3|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000000011001111000000001100000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX3|ALT_INV_DOUT\(2),
	datac => \REG_HEX3|ALT_INV_DOUT\(0),
	datad => \REG_HEX3|ALT_INV_DOUT\(3),
	dataf => \REG_HEX3|ALT_INV_DOUT\(1),
	combout => \LED_HEX3|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X40_Y4_N0
\LED_HEX3|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX3|rascSaida7seg[1]~1_combout\ = ( \REG_HEX3|DOUT\(3) & ( \REG_HEX3|DOUT\(1) & ( (\REG_HEX3|DOUT\(2)) # (\REG_HEX3|DOUT\(0)) ) ) ) # ( !\REG_HEX3|DOUT\(3) & ( \REG_HEX3|DOUT\(1) & ( (!\REG_HEX3|DOUT\(0) & \REG_HEX3|DOUT\(2)) ) ) ) # ( 
-- \REG_HEX3|DOUT\(3) & ( !\REG_HEX3|DOUT\(1) & ( (!\REG_HEX3|DOUT\(0) & \REG_HEX3|DOUT\(2)) ) ) ) # ( !\REG_HEX3|DOUT\(3) & ( !\REG_HEX3|DOUT\(1) & ( (\REG_HEX3|DOUT\(0) & \REG_HEX3|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001001000100010001000100010001000100111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX3|ALT_INV_DOUT\(0),
	datab => \REG_HEX3|ALT_INV_DOUT\(2),
	datae => \REG_HEX3|ALT_INV_DOUT\(3),
	dataf => \REG_HEX3|ALT_INV_DOUT\(1),
	combout => \LED_HEX3|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X40_Y4_N9
\LED_HEX3|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX3|rascSaida7seg[2]~2_combout\ = ( \REG_HEX3|DOUT\(1) & ( (!\REG_HEX3|DOUT\(2) & (!\REG_HEX3|DOUT\(3) & !\REG_HEX3|DOUT\(0))) # (\REG_HEX3|DOUT\(2) & (\REG_HEX3|DOUT\(3))) ) ) # ( !\REG_HEX3|DOUT\(1) & ( (\REG_HEX3|DOUT\(2) & (\REG_HEX3|DOUT\(3) & 
-- !\REG_HEX3|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000011000011000000111100001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX3|ALT_INV_DOUT\(2),
	datac => \REG_HEX3|ALT_INV_DOUT\(3),
	datad => \REG_HEX3|ALT_INV_DOUT\(0),
	dataf => \REG_HEX3|ALT_INV_DOUT\(1),
	combout => \LED_HEX3|rascSaida7seg[2]~2_combout\);

-- Location: MLABCELL_X42_Y4_N27
\LED_HEX3|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX3|rascSaida7seg[3]~3_combout\ = ( \REG_HEX3|DOUT\(1) & ( \REG_HEX3|DOUT\(0) & ( \REG_HEX3|DOUT\(2) ) ) ) # ( !\REG_HEX3|DOUT\(1) & ( \REG_HEX3|DOUT\(0) & ( (!\REG_HEX3|DOUT\(3) & !\REG_HEX3|DOUT\(2)) ) ) ) # ( \REG_HEX3|DOUT\(1) & ( 
-- !\REG_HEX3|DOUT\(0) & ( (\REG_HEX3|DOUT\(3) & !\REG_HEX3|DOUT\(2)) ) ) ) # ( !\REG_HEX3|DOUT\(1) & ( !\REG_HEX3|DOUT\(0) & ( (!\REG_HEX3|DOUT\(3) & \REG_HEX3|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010010100000101000010100000101000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX3|ALT_INV_DOUT\(3),
	datac => \REG_HEX3|ALT_INV_DOUT\(2),
	datae => \REG_HEX3|ALT_INV_DOUT\(1),
	dataf => \REG_HEX3|ALT_INV_DOUT\(0),
	combout => \LED_HEX3|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X40_Y4_N30
\LED_HEX3|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX3|rascSaida7seg[4]~4_combout\ = ( \REG_HEX3|DOUT\(1) & ( (\REG_HEX3|DOUT\(0) & !\REG_HEX3|DOUT\(3)) ) ) # ( !\REG_HEX3|DOUT\(1) & ( (!\REG_HEX3|DOUT\(2) & (\REG_HEX3|DOUT\(0))) # (\REG_HEX3|DOUT\(2) & ((!\REG_HEX3|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100001100001111110000110000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX3|ALT_INV_DOUT\(2),
	datac => \REG_HEX3|ALT_INV_DOUT\(0),
	datad => \REG_HEX3|ALT_INV_DOUT\(3),
	dataf => \REG_HEX3|ALT_INV_DOUT\(1),
	combout => \LED_HEX3|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X42_Y4_N9
\LED_HEX3|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX3|rascSaida7seg[5]~5_combout\ = ( \REG_HEX3|DOUT\(1) & ( \REG_HEX3|DOUT\(0) & ( !\REG_HEX3|DOUT\(3) ) ) ) # ( !\REG_HEX3|DOUT\(1) & ( \REG_HEX3|DOUT\(0) & ( !\REG_HEX3|DOUT\(3) $ (\REG_HEX3|DOUT\(2)) ) ) ) # ( \REG_HEX3|DOUT\(1) & ( 
-- !\REG_HEX3|DOUT\(0) & ( (!\REG_HEX3|DOUT\(3) & !\REG_HEX3|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000001010000010100101101001011010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX3|ALT_INV_DOUT\(3),
	datac => \REG_HEX3|ALT_INV_DOUT\(2),
	datae => \REG_HEX3|ALT_INV_DOUT\(1),
	dataf => \REG_HEX3|ALT_INV_DOUT\(0),
	combout => \LED_HEX3|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X40_Y4_N33
\LED_HEX3|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX3|rascSaida7seg[6]~6_combout\ = ( \REG_HEX3|DOUT\(1) & ( (\REG_HEX3|DOUT\(2) & (!\REG_HEX3|DOUT\(3) & \REG_HEX3|DOUT\(0))) ) ) # ( !\REG_HEX3|DOUT\(1) & ( (!\REG_HEX3|DOUT\(2) & (!\REG_HEX3|DOUT\(3))) # (\REG_HEX3|DOUT\(2) & (\REG_HEX3|DOUT\(3) & 
-- !\REG_HEX3|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111000000110000111100000000000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX3|ALT_INV_DOUT\(2),
	datac => \REG_HEX3|ALT_INV_DOUT\(3),
	datad => \REG_HEX3|ALT_INV_DOUT\(0),
	dataf => \REG_HEX3|ALT_INV_DOUT\(1),
	combout => \LED_HEX3|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X41_Y5_N45
AND_HEX4 : cyclonev_lcell_comb
-- Equation(s):
-- \AND_HEX4~combout\ = ( \ROM1|memROM~8_combout\ & ( !\ROM1|memROM~4_combout\ & ( (\ROM1|memROM~6_combout\ & (\AND_HEX3~0_combout\ & !\ROM1|memROM~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \ALT_INV_AND_HEX3~0_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \AND_HEX4~combout\);

-- Location: FF_X41_Y5_N47
\REG_HEX4|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \AND_HEX4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX4|DOUT\(1));

-- Location: FF_X41_Y5_N44
\REG_HEX4|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \AND_HEX4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX4|DOUT\(0));

-- Location: LABCELL_X41_Y5_N18
\REG_HEX4|DOUT[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_HEX4|DOUT[3]~feeder_combout\ = ( \CPU|REG1|DOUT[3]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \REG_HEX4|DOUT[3]~feeder_combout\);

-- Location: FF_X41_Y5_N20
\REG_HEX4|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REG_HEX4|DOUT[3]~feeder_combout\,
	ena => \AND_HEX4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX4|DOUT\(3));

-- Location: FF_X41_Y5_N25
\REG_HEX4|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT[2]~DUPLICATE_q\,
	sload => VCC,
	ena => \AND_HEX4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX4|DOUT\(2));

-- Location: LABCELL_X41_Y5_N12
\LED_HEX4|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX4|rascSaida7seg[0]~0_combout\ = (!\REG_HEX4|DOUT\(3) & (!\REG_HEX4|DOUT\(1) & (!\REG_HEX4|DOUT\(0) $ (!\REG_HEX4|DOUT\(2))))) # (\REG_HEX4|DOUT\(3) & (\REG_HEX4|DOUT\(0) & (!\REG_HEX4|DOUT\(1) $ (!\REG_HEX4|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000110000010001000011000001000100001100000100010000110000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX4|ALT_INV_DOUT\(1),
	datab => \REG_HEX4|ALT_INV_DOUT\(0),
	datac => \REG_HEX4|ALT_INV_DOUT\(3),
	datad => \REG_HEX4|ALT_INV_DOUT\(2),
	combout => \LED_HEX4|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X41_Y5_N15
\LED_HEX4|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX4|rascSaida7seg[1]~1_combout\ = ( \REG_HEX4|DOUT\(3) & ( (!\REG_HEX4|DOUT\(0) & ((\REG_HEX4|DOUT\(2)))) # (\REG_HEX4|DOUT\(0) & (\REG_HEX4|DOUT\(1))) ) ) # ( !\REG_HEX4|DOUT\(3) & ( (\REG_HEX4|DOUT\(2) & (!\REG_HEX4|DOUT\(1) $ 
-- (!\REG_HEX4|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011000011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX4|ALT_INV_DOUT\(1),
	datab => \REG_HEX4|ALT_INV_DOUT\(0),
	datac => \REG_HEX4|ALT_INV_DOUT\(2),
	dataf => \REG_HEX4|ALT_INV_DOUT\(3),
	combout => \LED_HEX4|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X41_Y5_N33
\LED_HEX4|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX4|rascSaida7seg[2]~2_combout\ = ( \REG_HEX4|DOUT\(1) & ( (!\REG_HEX4|DOUT\(3) & (!\REG_HEX4|DOUT\(0) & !\REG_HEX4|DOUT\(2))) # (\REG_HEX4|DOUT\(3) & ((\REG_HEX4|DOUT\(2)))) ) ) # ( !\REG_HEX4|DOUT\(1) & ( (\REG_HEX4|DOUT\(3) & (!\REG_HEX4|DOUT\(0) 
-- & \REG_HEX4|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000010100000010101011010000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX4|ALT_INV_DOUT\(3),
	datac => \REG_HEX4|ALT_INV_DOUT\(0),
	datad => \REG_HEX4|ALT_INV_DOUT\(2),
	dataf => \REG_HEX4|ALT_INV_DOUT\(1),
	combout => \LED_HEX4|rascSaida7seg[2]~2_combout\);

-- Location: FF_X41_Y5_N26
\REG_HEX4|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT[2]~DUPLICATE_q\,
	sload => VCC,
	ena => \AND_HEX4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX4|DOUT[2]~DUPLICATE_q\);

-- Location: LABCELL_X41_Y5_N57
\LED_HEX4|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX4|rascSaida7seg[3]~3_combout\ = ( \REG_HEX4|DOUT\(3) & ( (\REG_HEX4|DOUT\(1) & (!\REG_HEX4|DOUT[2]~DUPLICATE_q\ $ (\REG_HEX4|DOUT\(0)))) ) ) # ( !\REG_HEX4|DOUT\(3) & ( (!\REG_HEX4|DOUT[2]~DUPLICATE_q\ & (\REG_HEX4|DOUT\(0) & !\REG_HEX4|DOUT\(1))) 
-- # (\REG_HEX4|DOUT[2]~DUPLICATE_q\ & (!\REG_HEX4|DOUT\(0) $ (\REG_HEX4|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101000000101010110100000010100000000101001010000000010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX4|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \REG_HEX4|ALT_INV_DOUT\(0),
	datad => \REG_HEX4|ALT_INV_DOUT\(1),
	dataf => \REG_HEX4|ALT_INV_DOUT\(3),
	combout => \LED_HEX4|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X41_Y5_N9
\LED_HEX4|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX4|rascSaida7seg[4]~4_combout\ = (!\REG_HEX4|DOUT\(1) & ((!\REG_HEX4|DOUT\(2) & ((\REG_HEX4|DOUT\(0)))) # (\REG_HEX4|DOUT\(2) & (!\REG_HEX4|DOUT\(3))))) # (\REG_HEX4|DOUT\(1) & (!\REG_HEX4|DOUT\(3) & ((\REG_HEX4|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111000001010001011100000101000101110000010100010111000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX4|ALT_INV_DOUT\(3),
	datab => \REG_HEX4|ALT_INV_DOUT\(2),
	datac => \REG_HEX4|ALT_INV_DOUT\(0),
	datad => \REG_HEX4|ALT_INV_DOUT\(1),
	combout => \LED_HEX4|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X41_Y5_N0
\LED_HEX4|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX4|rascSaida7seg[5]~5_combout\ = ( \REG_HEX4|DOUT\(1) & ( (!\REG_HEX4|DOUT\(3) & ((!\REG_HEX4|DOUT[2]~DUPLICATE_q\) # (\REG_HEX4|DOUT\(0)))) ) ) # ( !\REG_HEX4|DOUT\(1) & ( (\REG_HEX4|DOUT\(0) & (!\REG_HEX4|DOUT[2]~DUPLICATE_q\ $ 
-- (\REG_HEX4|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000100100001001000010010000110110000101100001011000010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX4|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \REG_HEX4|ALT_INV_DOUT\(0),
	datac => \REG_HEX4|ALT_INV_DOUT\(3),
	dataf => \REG_HEX4|ALT_INV_DOUT\(1),
	combout => \LED_HEX4|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X41_Y5_N48
\LED_HEX4|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX4|rascSaida7seg[6]~6_combout\ = (!\REG_HEX4|DOUT\(0) & (!\REG_HEX4|DOUT\(1) & (!\REG_HEX4|DOUT\(3) $ (\REG_HEX4|DOUT\(2))))) # (\REG_HEX4|DOUT\(0) & (!\REG_HEX4|DOUT\(3) & (!\REG_HEX4|DOUT\(1) $ (\REG_HEX4|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000001000010101000000100001010100000010000101010000001000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX4|ALT_INV_DOUT\(3),
	datab => \REG_HEX4|ALT_INV_DOUT\(0),
	datac => \REG_HEX4|ALT_INV_DOUT\(1),
	datad => \REG_HEX4|ALT_INV_DOUT\(2),
	combout => \LED_HEX4|rascSaida7seg[6]~6_combout\);

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
END structure;


