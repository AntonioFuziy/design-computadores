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

-- DATE "09/24/2021 15:39:59"

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

ENTITY 	Aula8_key IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0);
	FPGA_RESET : IN std_logic;
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
END Aula8_key;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR8	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR9	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ROM[0]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ROM[1]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ROM[2]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ROM[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ROM[4]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ROM[5]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ROM[6]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ROM[7]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ROM[8]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ROM[9]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ROM[10]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ROM[11]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ROM[12]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_RAM[0]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_RAM[1]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_RAM[2]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_RAM[3]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_RAM[4]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_RAM[5]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_RAM[6]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_RAM[7]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Teste_Endereco[0]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Teste_Endereco[1]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Teste_Endereco[2]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Teste_Endereco[3]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Teste_Endereco[4]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Teste_Endereco[5]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Teste_Endereco[6]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Teste_Endereco[7]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Teste_Endereco[8]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- KEY[0]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FPGA_RESET	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Aula8_key IS
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
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \gravar:detectorSub0|saidaQ~0_combout\ : std_logic;
SIGNAL \gravar:detectorSub0|saidaQ~q\ : std_logic;
SIGNAL \gravar:detectorSub0|saida~combout\ : std_logic;
SIGNAL \KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \CPU|somaUm|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|MUX4x2_PC|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \CPU|somaUm|Add0~2\ : std_logic;
SIGNAL \CPU|somaUm|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|MUX4x2_PC|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \CPU|somaUm|Add0~6\ : std_logic;
SIGNAL \CPU|somaUm|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|MUX4x2_PC|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \CPU|somaUm|Add0~10\ : std_logic;
SIGNAL \CPU|somaUm|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|PC|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~10_combout\ : std_logic;
SIGNAL \CPU|somaUm|Add0~14\ : std_logic;
SIGNAL \CPU|somaUm|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|MUX4x2_PC|saida_MUX[4]~3_combout\ : std_logic;
SIGNAL \CPU|somaUm|Add0~18\ : std_logic;
SIGNAL \CPU|somaUm|Add0~34\ : std_logic;
SIGNAL \CPU|somaUm|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|somaUm|Add0~30\ : std_logic;
SIGNAL \CPU|somaUm|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|somaUm|Add0~26\ : std_logic;
SIGNAL \CPU|somaUm|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|MUX4x2_PC|saida_MUX[8]~4_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~9_combout\ : std_logic;
SIGNAL \CPU|somaUm|Add0~33_sumout\ : std_logic;
SIGNAL \CPU|MUX4x2_PC|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \AND_ENABLE_BUFFER_8BITS~0_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \Data_IN[0]~6_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \Data_IN[0]~8_combout\ : std_logic;
SIGNAL \FPGA_RESET~input_o\ : std_logic;
SIGNAL \AND_HEX0~4_combout\ : std_logic;
SIGNAL \AND_HEX0~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \Data_IN[0]~0_combout\ : std_logic;
SIGNAL \Data_IN[0]~7_combout\ : std_logic;
SIGNAL \Data_IN[0]~1_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~34_cout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~1_sumout\ : std_logic;
SIGNAL \ROM1|memROM~12_combout\ : std_logic;
SIGNAL \ROM1|memROM~11_combout\ : std_logic;
SIGNAL \CPU|Decoder|Operacao~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \CPU|Decoder|Habilita_A~0_combout\ : std_logic;
SIGNAL \AND_HEX0~0_combout\ : std_logic;
SIGNAL \ANDLEDR~0_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \Data_IN[1]~2_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~2\ : std_logic;
SIGNAL \CPU|ULA1|Add1~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[1]~1_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \Data_IN[2]~3_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~6\ : std_logic;
SIGNAL \CPU|ULA1|Add1~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[2]~2_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \AND_ENABLE_BUFFER_8BITS~1_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~10\ : std_logic;
SIGNAL \CPU|ULA1|Add1~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[3]~3_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \CPU|ULA1|Add1~14\ : std_logic;
SIGNAL \CPU|ULA1|Add1~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[4]~4_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \Data_IN[5]~4_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~18\ : std_logic;
SIGNAL \CPU|ULA1|Add1~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[5]~5_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \Data_IN[6]~5_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~22\ : std_logic;
SIGNAL \CPU|ULA1|Add1~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[6]~6_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \CPU|ULA1|Add1~26\ : std_logic;
SIGNAL \CPU|ULA1|Add1~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[7]~7_combout\ : std_logic;
SIGNAL \REGLEDR8|DOUT~q\ : std_logic;
SIGNAL \REGLEDR8|DOUT~0_combout\ : std_logic;
SIGNAL \REGLEDR8|DOUT~DUPLICATE_q\ : std_logic;
SIGNAL \REGLEDR9|DOUT~q\ : std_logic;
SIGNAL \REGLEDR9|DOUT~0_combout\ : std_logic;
SIGNAL \REGLEDR9|DOUT~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \ROM1|memROM~8_combout\ : std_logic;
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
SIGNAL \AND_HEX0~3_combout\ : std_logic;
SIGNAL \AND_HEX4~0_combout\ : std_logic;
SIGNAL \REG_HEX4|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \LED_HEX4|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \LED_HEX4|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \LED_HEX4|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \LED_HEX4|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \LED_HEX4|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \LED_HEX4|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \LED_HEX4|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \AND_HEX5~combout\ : std_logic;
SIGNAL \REG_HEX5|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \REG_HEX5|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \REG_HEX5|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \REG_HEX5|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \LED_HEX5|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \LED_HEX5|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \LED_HEX5|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \LED_HEX5|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \LED_HEX5|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \LED_HEX5|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \LED_HEX5|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \REG_HEX5|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_HEX3|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_HEX2|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_HEX1|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_HEX4|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|REG1|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REGLEDR|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \REG_HEX0|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_HEX3|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_HEX2|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_HEX1|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_HEX0|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ROM1|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
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
SIGNAL \CPU|somaUm|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \CPU|somaUm|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \CPU|somaUm|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \CPU|somaUm|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CPU|somaUm|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \CPU|somaUm|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \CPU|REG1|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REG_HEX5|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \REG_HEX5|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \REG_HEX5|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \REG_HEX5|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \REG_HEX4|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_FPGA_RESET~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data_IN[0]~8_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[0]~7_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[0]~6_combout\ : std_logic;
SIGNAL \ALT_INV_AND_HEX0~4_combout\ : std_logic;
SIGNAL \gravar:detectorSub0|ALT_INV_saidaQ~q\ : std_logic;
SIGNAL \ALT_INV_AND_HEX0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[6]~5_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[5]~4_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[2]~3_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[1]~2_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[0]~1_combout\ : std_logic;
SIGNAL \ALT_INV_AND_HEX0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_AND_ENABLE_BUFFER_8BITS~1_combout\ : std_logic;
SIGNAL \ALT_INV_AND_ENABLE_BUFFER_8BITS~0_combout\ : std_logic;
SIGNAL \CPU|Decoder|ALT_INV_Operacao~0_combout\ : std_logic;
SIGNAL \ALT_INV_AND_HEX0~0_combout\ : std_logic;
SIGNAL \REG_HEX5|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_HEX4|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
ww_FPGA_RESET <= FPGA_RESET;
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
\ROM1|ALT_INV_memROM~12_combout\ <= NOT \ROM1|memROM~12_combout\;
\ROM1|ALT_INV_memROM~11_combout\ <= NOT \ROM1|memROM~11_combout\;
\ROM1|ALT_INV_memROM~10_combout\ <= NOT \ROM1|memROM~10_combout\;
\ROM1|ALT_INV_memROM~9_combout\ <= NOT \ROM1|memROM~9_combout\;
\ROM1|ALT_INV_memROM~7_combout\ <= NOT \ROM1|memROM~7_combout\;
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\ROM1|ALT_INV_memROM~3_combout\ <= NOT \ROM1|memROM~3_combout\;
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\CPU|PC|ALT_INV_DOUT\(5) <= NOT \CPU|PC|DOUT\(5);
\CPU|PC|ALT_INV_DOUT\(6) <= NOT \CPU|PC|DOUT\(6);
\CPU|PC|ALT_INV_DOUT\(7) <= NOT \CPU|PC|DOUT\(7);
\CPU|PC|ALT_INV_DOUT\(8) <= NOT \CPU|PC|DOUT\(8);
\CPU|PC|ALT_INV_DOUT\(4) <= NOT \CPU|PC|DOUT\(4);
\CPU|PC|ALT_INV_DOUT\(3) <= NOT \CPU|PC|DOUT\(3);
\CPU|PC|ALT_INV_DOUT\(2) <= NOT \CPU|PC|DOUT\(2);
\CPU|PC|ALT_INV_DOUT\(1) <= NOT \CPU|PC|DOUT\(1);
\CPU|PC|ALT_INV_DOUT\(0) <= NOT \CPU|PC|DOUT\(0);
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
\CPU|somaUm|ALT_INV_Add0~33_sumout\ <= NOT \CPU|somaUm|Add0~33_sumout\;
\CPU|somaUm|ALT_INV_Add0~21_sumout\ <= NOT \CPU|somaUm|Add0~21_sumout\;
\CPU|somaUm|ALT_INV_Add0~17_sumout\ <= NOT \CPU|somaUm|Add0~17_sumout\;
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
\REG_HEX5|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \REG_HEX5|DOUT[2]~DUPLICATE_q\;
\REG_HEX5|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \REG_HEX5|DOUT[1]~DUPLICATE_q\;
\REG_HEX5|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \REG_HEX5|DOUT[3]~DUPLICATE_q\;
\REG_HEX5|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \REG_HEX5|DOUT[0]~DUPLICATE_q\;
\REG_HEX4|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \REG_HEX4|DOUT[1]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[8]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[2]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[1]~DUPLICATE_q\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_FPGA_RESET~input_o\ <= NOT \FPGA_RESET~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;
\ALT_INV_KEY[2]~input_o\ <= NOT \KEY[2]~input_o\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_Data_IN[0]~8_combout\ <= NOT \Data_IN[0]~8_combout\;
\ALT_INV_Data_IN[0]~7_combout\ <= NOT \Data_IN[0]~7_combout\;
\ALT_INV_Data_IN[0]~6_combout\ <= NOT \Data_IN[0]~6_combout\;
\ALT_INV_AND_HEX0~4_combout\ <= NOT \AND_HEX0~4_combout\;
\gravar:detectorSub0|ALT_INV_saidaQ~q\ <= NOT \gravar:detectorSub0|saidaQ~q\;
\ALT_INV_AND_HEX0~3_combout\ <= NOT \AND_HEX0~3_combout\;
\ALT_INV_Data_IN[6]~5_combout\ <= NOT \Data_IN[6]~5_combout\;
\ALT_INV_Data_IN[5]~4_combout\ <= NOT \Data_IN[5]~4_combout\;
\ALT_INV_Data_IN[2]~3_combout\ <= NOT \Data_IN[2]~3_combout\;
\ALT_INV_Data_IN[1]~2_combout\ <= NOT \Data_IN[1]~2_combout\;
\ALT_INV_Data_IN[0]~1_combout\ <= NOT \Data_IN[0]~1_combout\;
\ALT_INV_AND_HEX0~1_combout\ <= NOT \AND_HEX0~1_combout\;
\ALT_INV_Data_IN[0]~0_combout\ <= NOT \Data_IN[0]~0_combout\;
\ALT_INV_AND_ENABLE_BUFFER_8BITS~1_combout\ <= NOT \AND_ENABLE_BUFFER_8BITS~1_combout\;
\ALT_INV_AND_ENABLE_BUFFER_8BITS~0_combout\ <= NOT \AND_ENABLE_BUFFER_8BITS~0_combout\;
\CPU|Decoder|ALT_INV_Operacao~0_combout\ <= NOT \CPU|Decoder|Operacao~0_combout\;
\ALT_INV_AND_HEX0~0_combout\ <= NOT \AND_HEX0~0_combout\;
\REG_HEX5|ALT_INV_DOUT\(2) <= NOT \REG_HEX5|DOUT\(2);
\REG_HEX5|ALT_INV_DOUT\(1) <= NOT \REG_HEX5|DOUT\(1);
\REG_HEX5|ALT_INV_DOUT\(3) <= NOT \REG_HEX5|DOUT\(3);
\REG_HEX5|ALT_INV_DOUT\(0) <= NOT \REG_HEX5|DOUT\(0);
\REG_HEX4|ALT_INV_DOUT\(2) <= NOT \REG_HEX4|DOUT\(2);
\REG_HEX4|ALT_INV_DOUT\(1) <= NOT \REG_HEX4|DOUT\(1);
\REG_HEX4|ALT_INV_DOUT\(3) <= NOT \REG_HEX4|DOUT\(3);
\REG_HEX4|ALT_INV_DOUT\(0) <= NOT \REG_HEX4|DOUT\(0);

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

-- Location: IOOBUF_X14_Y0_N53
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

-- Location: IOOBUF_X16_Y0_N76
\LEDR9~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGLEDR9|DOUT~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_LEDR9);

-- Location: IOOBUF_X19_Y0_N53
\saida_ROM[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~1_combout\,
	devoe => ww_devoe,
	o => ww_saida_ROM(0));

-- Location: IOOBUF_X18_Y0_N36
\saida_ROM[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~2_combout\,
	devoe => ww_devoe,
	o => ww_saida_ROM(1));

-- Location: IOOBUF_X12_Y0_N2
\saida_ROM[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~4_combout\,
	devoe => ww_devoe,
	o => ww_saida_ROM(2));

-- Location: IOOBUF_X38_Y45_N2
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

-- Location: IOOBUF_X48_Y45_N53
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

-- Location: IOOBUF_X18_Y0_N19
\saida_ROM[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~5_combout\,
	devoe => ww_devoe,
	o => ww_saida_ROM(5));

-- Location: IOOBUF_X25_Y0_N53
\saida_ROM[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~6_combout\,
	devoe => ww_devoe,
	o => ww_saida_ROM(6));

-- Location: IOOBUF_X42_Y45_N36
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

-- Location: IOOBUF_X25_Y0_N2
\saida_ROM[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~8_combout\,
	devoe => ww_devoe,
	o => ww_saida_ROM(8));

-- Location: IOOBUF_X19_Y0_N2
\saida_ROM[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_saida_ROM(9));

-- Location: IOOBUF_X23_Y0_N76
\saida_ROM[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~11_combout\,
	devoe => ww_devoe,
	o => ww_saida_ROM(10));

-- Location: IOOBUF_X23_Y0_N93
\saida_ROM[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~12_combout\,
	devoe => ww_devoe,
	o => ww_saida_ROM(11));

-- Location: IOOBUF_X43_Y45_N19
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

-- Location: IOOBUF_X18_Y0_N2
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

-- Location: IOOBUF_X19_Y0_N19
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

-- Location: IOOBUF_X16_Y0_N42
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

-- Location: IOOBUF_X16_Y0_N59
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

-- Location: IOOBUF_X12_Y0_N19
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

-- Location: IOOBUF_X18_Y0_N53
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

-- Location: IOOBUF_X14_Y0_N36
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

-- Location: IOOBUF_X12_Y0_N36
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

-- Location: IOOBUF_X24_Y0_N19
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

-- Location: IOOBUF_X23_Y0_N42
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
	i => \CPU|PC|DOUT\(2),
	devoe => ww_devoe,
	o => ww_Teste_Endereco(2));

-- Location: IOOBUF_X24_Y0_N36
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

-- Location: IOOBUF_X23_Y0_N59
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

-- Location: IOOBUF_X22_Y0_N36
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

-- Location: IOOBUF_X24_Y0_N53
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

-- Location: IOOBUF_X24_Y0_N2
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

-- Location: IOOBUF_X19_Y0_N36
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

-- Location: LABCELL_X10_Y2_N3
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

-- Location: FF_X10_Y2_N4
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

-- Location: MLABCELL_X18_Y4_N33
\gravar:detectorSub0|saida\ : cyclonev_lcell_comb
-- Equation(s):
-- \gravar:detectorSub0|saida~combout\ = LCELL(( !\gravar:detectorSub0|saidaQ~q\ & ( !\KEY[0]~input_o\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_KEY[0]~input_o\,
	dataf => \gravar:detectorSub0|ALT_INV_saidaQ~q\,
	combout => \gravar:detectorSub0|saida~combout\);

-- Location: CLKCTRL_G4
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

-- Location: LABCELL_X20_Y4_N30
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

-- Location: LABCELL_X20_Y4_N27
\CPU|MUX4x2_PC|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX4x2_PC|saida_MUX[0]~0_combout\ = ( \ROM1|memROM~10_combout\ & ( (\CPU|somaUm|Add0~1_sumout\ & ((!\ROM1|memROM~9_combout\) # ((!\CPU|PC|DOUT\(4)) # (\CPU|PC|DOUT\(0))))) ) ) # ( !\ROM1|memROM~10_combout\ & ( \CPU|somaUm|Add0~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001110000011110000111000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~9_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \CPU|somaUm|ALT_INV_Add0~1_sumout\,
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \CPU|MUX4x2_PC|saida_MUX[0]~0_combout\);

-- Location: FF_X19_Y4_N47
\CPU|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|MUX4x2_PC|saida_MUX[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(0));

-- Location: LABCELL_X20_Y4_N33
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

-- Location: LABCELL_X19_Y4_N21
\CPU|MUX4x2_PC|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX4x2_PC|saida_MUX[1]~1_combout\ = ( \ROM1|memROM~9_combout\ & ( (\CPU|somaUm|Add0~5_sumout\ & ((!\CPU|PC|DOUT\(4)) # ((!\ROM1|memROM~10_combout\) # (\CPU|PC|DOUT\(0))))) ) ) # ( !\ROM1|memROM~9_combout\ & ( \CPU|somaUm|Add0~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000010110000111100001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(0),
	datac => \CPU|somaUm|ALT_INV_Add0~5_sumout\,
	datad => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \CPU|MUX4x2_PC|saida_MUX[1]~1_combout\);

-- Location: FF_X19_Y4_N23
\CPU|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUX4x2_PC|saida_MUX[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(1));

-- Location: LABCELL_X20_Y4_N36
\CPU|somaUm|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|somaUm|Add0~9_sumout\ = SUM(( \CPU|PC|DOUT\(2) ) + ( GND ) + ( \CPU|somaUm|Add0~6\ ))
-- \CPU|somaUm|Add0~10\ = CARRY(( \CPU|PC|DOUT\(2) ) + ( GND ) + ( \CPU|somaUm|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	cin => \CPU|somaUm|Add0~6\,
	sumout => \CPU|somaUm|Add0~9_sumout\,
	cout => \CPU|somaUm|Add0~10\);

-- Location: LABCELL_X19_Y4_N48
\CPU|MUX4x2_PC|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX4x2_PC|saida_MUX[2]~2_combout\ = ( \ROM1|memROM~10_combout\ & ( (\CPU|somaUm|Add0~9_sumout\ & ((!\ROM1|memROM~9_combout\) # ((!\CPU|PC|DOUT\(4)) # (\CPU|PC|DOUT\(0))))) ) ) # ( !\ROM1|memROM~10_combout\ & ( \CPU|somaUm|Add0~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111011110000000011101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~9_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \CPU|somaUm|ALT_INV_Add0~9_sumout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \CPU|MUX4x2_PC|saida_MUX[2]~2_combout\);

-- Location: FF_X19_Y4_N50
\CPU|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUX4x2_PC|saida_MUX[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(2));

-- Location: LABCELL_X20_Y4_N39
\CPU|somaUm|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|somaUm|Add0~13_sumout\ = SUM(( \CPU|PC|DOUT\(3) ) + ( GND ) + ( \CPU|somaUm|Add0~10\ ))
-- \CPU|somaUm|Add0~14\ = CARRY(( \CPU|PC|DOUT\(3) ) + ( GND ) + ( \CPU|somaUm|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	cin => \CPU|somaUm|Add0~10\,
	sumout => \CPU|somaUm|Add0~13_sumout\,
	cout => \CPU|somaUm|Add0~14\);

-- Location: FF_X19_Y4_N20
\CPU|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|somaUm|Add0~13_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(3));

-- Location: FF_X19_Y4_N22
\CPU|PC|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUX4x2_PC|saida_MUX[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[1]~DUPLICATE_q\);

-- Location: LABCELL_X19_Y3_N48
\ROM1|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~10_combout\ = ( !\CPU|PC|DOUT\(3) & ( !\CPU|PC|DOUT[1]~DUPLICATE_q\ & ( !\CPU|PC|DOUT\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datae => \CPU|PC|ALT_INV_DOUT\(3),
	dataf => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM1|memROM~10_combout\);

-- Location: LABCELL_X20_Y4_N42
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

-- Location: LABCELL_X20_Y4_N6
\CPU|MUX4x2_PC|saida_MUX[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX4x2_PC|saida_MUX[4]~3_combout\ = ( \CPU|somaUm|Add0~17_sumout\ & ( (!\ROM1|memROM~9_combout\) # ((!\ROM1|memROM~10_combout\) # ((!\CPU|PC|DOUT\(4)) # (\CPU|PC|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111011111111111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~9_combout\,
	datab => \ROM1|ALT_INV_memROM~10_combout\,
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|somaUm|ALT_INV_Add0~17_sumout\,
	combout => \CPU|MUX4x2_PC|saida_MUX[4]~3_combout\);

-- Location: FF_X19_Y4_N44
\CPU|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|MUX4x2_PC|saida_MUX[4]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(4));

-- Location: LABCELL_X20_Y4_N45
\CPU|somaUm|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|somaUm|Add0~33_sumout\ = SUM(( \CPU|PC|DOUT\(5) ) + ( GND ) + ( \CPU|somaUm|Add0~18\ ))
-- \CPU|somaUm|Add0~34\ = CARRY(( \CPU|PC|DOUT\(5) ) + ( GND ) + ( \CPU|somaUm|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	cin => \CPU|somaUm|Add0~18\,
	sumout => \CPU|somaUm|Add0~33_sumout\,
	cout => \CPU|somaUm|Add0~34\);

-- Location: LABCELL_X20_Y4_N48
\CPU|somaUm|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|somaUm|Add0~29_sumout\ = SUM(( \CPU|PC|DOUT\(6) ) + ( GND ) + ( \CPU|somaUm|Add0~34\ ))
-- \CPU|somaUm|Add0~30\ = CARRY(( \CPU|PC|DOUT\(6) ) + ( GND ) + ( \CPU|somaUm|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	cin => \CPU|somaUm|Add0~34\,
	sumout => \CPU|somaUm|Add0~29_sumout\,
	cout => \CPU|somaUm|Add0~30\);

-- Location: FF_X19_Y4_N35
\CPU|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|somaUm|Add0~29_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(6));

-- Location: LABCELL_X20_Y4_N51
\CPU|somaUm|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|somaUm|Add0~25_sumout\ = SUM(( \CPU|PC|DOUT\(7) ) + ( GND ) + ( \CPU|somaUm|Add0~30\ ))
-- \CPU|somaUm|Add0~26\ = CARRY(( \CPU|PC|DOUT\(7) ) + ( GND ) + ( \CPU|somaUm|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(7),
	cin => \CPU|somaUm|Add0~30\,
	sumout => \CPU|somaUm|Add0~25_sumout\,
	cout => \CPU|somaUm|Add0~26\);

-- Location: FF_X19_Y4_N8
\CPU|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|somaUm|Add0~25_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(7));

-- Location: LABCELL_X20_Y4_N54
\CPU|somaUm|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|somaUm|Add0~21_sumout\ = SUM(( \CPU|PC|DOUT[8]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|somaUm|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	cin => \CPU|somaUm|Add0~26\,
	sumout => \CPU|somaUm|Add0~21_sumout\);

-- Location: LABCELL_X20_Y4_N9
\CPU|MUX4x2_PC|saida_MUX[8]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX4x2_PC|saida_MUX[8]~4_combout\ = ( \CPU|PC|DOUT\(0) & ( \CPU|somaUm|Add0~21_sumout\ ) ) # ( !\CPU|PC|DOUT\(0) & ( (\CPU|somaUm|Add0~21_sumout\ & ((!\ROM1|memROM~9_combout\) # ((!\ROM1|memROM~10_combout\) # (!\CPU|PC|DOUT\(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111110000000001111111000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~9_combout\,
	datab => \ROM1|ALT_INV_memROM~10_combout\,
	datac => \CPU|PC|ALT_INV_DOUT\(4),
	datad => \CPU|somaUm|ALT_INV_Add0~21_sumout\,
	dataf => \CPU|PC|ALT_INV_DOUT\(0),
	combout => \CPU|MUX4x2_PC|saida_MUX[8]~4_combout\);

-- Location: FF_X19_Y4_N32
\CPU|PC|DOUT[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|MUX4x2_PC|saida_MUX[8]~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[8]~DUPLICATE_q\);

-- Location: LABCELL_X19_Y4_N24
\ROM1|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~9_combout\ = ( !\CPU|PC|DOUT[8]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(7) & !\CPU|PC|DOUT\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	datab => \CPU|PC|ALT_INV_DOUT\(7),
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	dataf => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	combout => \ROM1|memROM~9_combout\);

-- Location: LABCELL_X20_Y4_N24
\CPU|MUX4x2_PC|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX4x2_PC|saida_MUX[5]~5_combout\ = ( \ROM1|memROM~10_combout\ & ( (\CPU|somaUm|Add0~33_sumout\ & ((!\ROM1|memROM~9_combout\) # ((!\CPU|PC|DOUT\(4)) # (\CPU|PC|DOUT\(0))))) ) ) # ( !\ROM1|memROM~10_combout\ & ( \CPU|somaUm|Add0~33_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111011110000000011101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~9_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \CPU|somaUm|ALT_INV_Add0~33_sumout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \CPU|MUX4x2_PC|saida_MUX[5]~5_combout\);

-- Location: FF_X19_Y4_N53
\CPU|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|MUX4x2_PC|saida_MUX[5]~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(5));

-- Location: LABCELL_X19_Y4_N3
\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = ( !\CPU|PC|DOUT[8]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(7) & !\CPU|PC|DOUT\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \CPU|PC|ALT_INV_DOUT\(7),
	datad => \CPU|PC|ALT_INV_DOUT\(6),
	dataf => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	combout => \ROM1|memROM~0_combout\);

-- Location: FF_X19_Y4_N49
\CPU|PC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUX4x2_PC|saida_MUX[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[2]~DUPLICATE_q\);

-- Location: LABCELL_X19_Y4_N15
\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = ( \CPU|PC|DOUT\(3) & ( (\ROM1|memROM~0_combout\ & (!\CPU|PC|DOUT\(1) $ (((\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT[2]~DUPLICATE_q\))))) ) ) # ( !\CPU|PC|DOUT\(3) & ( (\ROM1|memROM~0_combout\ & (\CPU|PC|DOUT\(1) & 
-- ((!\CPU|PC|DOUT[2]~DUPLICATE_q\) # (\CPU|PC|DOUT\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010001000000000101000101000101000100000100010100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(0),
	datac => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	dataf => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~1_combout\);

-- Location: LABCELL_X19_Y4_N57
\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = ( \CPU|PC|DOUT\(2) & ( (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(0) & \CPU|PC|DOUT[1]~DUPLICATE_q\)) ) ) # ( !\CPU|PC|DOUT\(2) & ( (\CPU|PC|DOUT\(3) & \CPU|PC|DOUT\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT\(0),
	datac => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(2),
	combout => \ROM1|memROM~3_combout\);

-- Location: LABCELL_X19_Y4_N18
\ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~7_combout\ = ( \CPU|PC|DOUT[2]~DUPLICATE_q\ & ( !\CPU|PC|DOUT\(0) $ (!\CPU|PC|DOUT\(3)) ) ) # ( !\CPU|PC|DOUT[2]~DUPLICATE_q\ & ( (\CPU|PC|DOUT\(0) & ((\CPU|PC|DOUT\(3)) # (\CPU|PC|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110011000000110011001100110011110011000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(0),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	dataf => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \ROM1|memROM~7_combout\);

-- Location: LABCELL_X19_Y4_N6
\AND_ENABLE_BUFFER_8BITS~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_ENABLE_BUFFER_8BITS~0_combout\ = ( \ROM1|memROM~7_combout\ & ( (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(0) & (\ROM1|memROM~9_combout\ & !\ROM1|memROM~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(0),
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \AND_ENABLE_BUFFER_8BITS~0_combout\);

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

-- Location: LABCELL_X19_Y4_N12
\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = ( \CPU|PC|DOUT\(3) & ( (\ROM1|memROM~0_combout\ & ((!\CPU|PC|DOUT\(0)) # (!\CPU|PC|DOUT\(2)))) ) ) # ( !\CPU|PC|DOUT\(3) & ( (\ROM1|memROM~0_combout\ & (((\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(1))) # (\CPU|PC|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010101000100010001010101010100010101000101010001010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(0),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	dataf => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~5_combout\);

-- Location: LABCELL_X19_Y4_N54
\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = ( \CPU|PC|DOUT\(2) & ( (\ROM1|memROM~0_combout\ & ((!\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(1)))) # (\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(3)) # (\CPU|PC|DOUT\(1)))))) ) ) # ( !\CPU|PC|DOUT\(2) & ( (\CPU|PC|DOUT\(3) & 
-- (!\CPU|PC|DOUT\(0) & (\ROM1|memROM~0_combout\ & \CPU|PC|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000001110000000110000111000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT\(0),
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	dataf => \CPU|PC|ALT_INV_DOUT\(2),
	combout => \ROM1|memROM~2_combout\);

-- Location: MLABCELL_X18_Y2_N9
\Data_IN[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~6_combout\ = ( \ROM1|memROM~5_combout\ & ( \ROM1|memROM~2_combout\ & ( \KEY[3]~input_o\ ) ) ) # ( \ROM1|memROM~5_combout\ & ( !\ROM1|memROM~2_combout\ & ( \KEY[1]~input_o\ ) ) ) # ( !\ROM1|memROM~5_combout\ & ( !\ROM1|memROM~2_combout\ & ( 
-- \SW[8]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	datab => \ALT_INV_KEY[3]~input_o\,
	datac => \ALT_INV_SW[8]~input_o\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \Data_IN[0]~6_combout\);

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

-- Location: MLABCELL_X18_Y2_N36
\Data_IN[0]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~8_combout\ = ( \ROM1|memROM~5_combout\ & ( \ROM1|memROM~2_combout\ & ( \KEY[2]~input_o\ ) ) ) # ( !\ROM1|memROM~5_combout\ & ( \ROM1|memROM~2_combout\ & ( \SW[9]~input_o\ ) ) ) # ( !\ROM1|memROM~5_combout\ & ( !\ROM1|memROM~2_combout\ & ( 
-- \SW[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000001010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datab => \ALT_INV_KEY[2]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \Data_IN[0]~8_combout\);

-- Location: IOIBUF_X16_Y0_N92
\FPGA_RESET~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_RESET,
	o => \FPGA_RESET~input_o\);

-- Location: FF_X19_Y4_N31
\CPU|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|MUX4x2_PC|saida_MUX[8]~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(8));

-- Location: LABCELL_X19_Y4_N27
\AND_HEX0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_HEX0~4_combout\ = ( !\CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(5) & !\CPU|PC|DOUT\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(7),
	dataf => \CPU|PC|ALT_INV_DOUT\(6),
	combout => \AND_HEX0~4_combout\);

-- Location: LABCELL_X19_Y4_N33
\AND_HEX0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_HEX0~1_combout\ = ( \CPU|PC|DOUT\(1) & ( \CPU|PC|DOUT\(2) & ( (!\CPU|PC|DOUT\(8) & (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(0) & \AND_HEX0~4_combout\))) ) ) ) # ( !\CPU|PC|DOUT\(1) & ( !\CPU|PC|DOUT\(2) & ( (!\CPU|PC|DOUT\(8) & (!\CPU|PC|DOUT\(4) & 
-- (\CPU|PC|DOUT\(0) & \AND_HEX0~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \ALT_INV_AND_HEX0~4_combout\,
	datae => \CPU|PC|ALT_INV_DOUT\(1),
	dataf => \CPU|PC|ALT_INV_DOUT\(2),
	combout => \AND_HEX0~1_combout\);

-- Location: MLABCELL_X18_Y4_N48
\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = ( \ROM1|memROM~3_combout\ & ( \ROM1|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \ROM1|memROM~4_combout\);

-- Location: LABCELL_X19_Y4_N51
\Data_IN[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~0_combout\ = ( \ROM1|memROM~7_combout\ & ( (\ROM1|memROM~9_combout\ & (!\CPU|PC|DOUT\(4) & !\CPU|PC|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~9_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \Data_IN[0]~0_combout\);

-- Location: LABCELL_X16_Y4_N24
\Data_IN[0]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~7_combout\ = ( \Data_IN[0]~0_combout\ & ( \KEY[0]~input_o\ & ( (\AND_HEX0~1_combout\ & ((!\ROM1|memROM~4_combout\) # (\FPGA_RESET~input_o\))) ) ) ) # ( \Data_IN[0]~0_combout\ & ( !\KEY[0]~input_o\ & ( (\FPGA_RESET~input_o\ & 
-- (\AND_HEX0~1_combout\ & \ROM1|memROM~4_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001100000000000000000000111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_FPGA_RESET~input_o\,
	datac => \ALT_INV_AND_HEX0~1_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \ALT_INV_Data_IN[0]~0_combout\,
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \Data_IN[0]~7_combout\);

-- Location: LABCELL_X17_Y4_N21
\Data_IN[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~1_combout\ = ( \Data_IN[0]~7_combout\ ) # ( !\Data_IN[0]~7_combout\ & ( (\AND_ENABLE_BUFFER_8BITS~0_combout\ & ((!\ROM1|memROM~1_combout\ & ((\Data_IN[0]~8_combout\))) # (\ROM1|memROM~1_combout\ & (\Data_IN[0]~6_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011000000010010001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ALT_INV_AND_ENABLE_BUFFER_8BITS~0_combout\,
	datac => \ALT_INV_Data_IN[0]~6_combout\,
	datad => \ALT_INV_Data_IN[0]~8_combout\,
	dataf => \ALT_INV_Data_IN[0]~7_combout\,
	combout => \Data_IN[0]~1_combout\);

-- Location: LABCELL_X17_Y4_N30
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

-- Location: LABCELL_X17_Y4_N33
\CPU|ULA1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~1_sumout\ = SUM(( !\Data_IN[0]~1_combout\ ) + ( \CPU|REG1|DOUT\(0) ) + ( \CPU|ULA1|Add1~34_cout\ ))
-- \CPU|ULA1|Add1~2\ = CARRY(( !\Data_IN[0]~1_combout\ ) + ( \CPU|REG1|DOUT\(0) ) + ( \CPU|ULA1|Add1~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REG1|ALT_INV_DOUT\(0),
	datad => \ALT_INV_Data_IN[0]~1_combout\,
	cin => \CPU|ULA1|Add1~34_cout\,
	sumout => \CPU|ULA1|Add1~1_sumout\,
	cout => \CPU|ULA1|Add1~2\);

-- Location: LABCELL_X21_Y2_N57
\ROM1|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~12_combout\ = ( \ROM1|memROM~10_combout\ & ( \ROM1|memROM~9_combout\ & ( !\CPU|PC|DOUT\(4) $ (!\CPU|PC|DOUT\(0)) ) ) ) # ( !\ROM1|memROM~10_combout\ & ( \ROM1|memROM~9_combout\ & ( (!\CPU|PC|DOUT\(4) & \CPU|PC|DOUT\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000011000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \ROM1|memROM~12_combout\);

-- Location: LABCELL_X21_Y2_N27
\ROM1|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~11_combout\ = ( \ROM1|memROM~10_combout\ & ( \ROM1|memROM~9_combout\ & ( (\CPU|PC|DOUT\(4) & !\CPU|PC|DOUT\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \ROM1|memROM~11_combout\);

-- Location: MLABCELL_X18_Y4_N45
\CPU|Decoder|Operacao~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Decoder|Operacao~0_combout\ = ( !\ROM1|memROM~11_combout\ & ( \ROM1|memROM~0_combout\ & ( !\ROM1|memROM~12_combout\ ) ) ) # ( !\ROM1|memROM~11_combout\ & ( !\ROM1|memROM~0_combout\ & ( \ROM1|memROM~12_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000011111111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \CPU|Decoder|Operacao~0_combout\);

-- Location: LABCELL_X17_Y4_N18
\CPU|ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[0]~0_combout\ = ( \Data_IN[0]~1_combout\ & ( (\CPU|Decoder|Operacao~0_combout\) # (\CPU|ULA1|Add1~1_sumout\) ) ) # ( !\Data_IN[0]~1_combout\ & ( (\CPU|ULA1|Add1~1_sumout\ & !\CPU|Decoder|Operacao~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|ULA1|ALT_INV_Add1~1_sumout\,
	datad => \CPU|Decoder|ALT_INV_Operacao~0_combout\,
	dataf => \ALT_INV_Data_IN[0]~1_combout\,
	combout => \CPU|ULA1|saida[0]~0_combout\);

-- Location: MLABCELL_X18_Y4_N0
\CPU|Decoder|Habilita_A~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Decoder|Habilita_A~0_combout\ = ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~0_combout\ $ (!\ROM1|memROM~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001100111100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \CPU|Decoder|Habilita_A~0_combout\);

-- Location: FF_X17_Y4_N20
\CPU|REG1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[0]~0_combout\,
	ena => \CPU|Decoder|Habilita_A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(0));

-- Location: LABCELL_X19_Y4_N39
\AND_HEX0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_HEX0~0_combout\ = ( !\ROM1|memROM~3_combout\ & ( \ROM1|memROM~7_combout\ & ( (!\CPU|PC|DOUT\(4) & (\CPU|PC|DOUT\(0) & \ROM1|memROM~9_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \ROM1|ALT_INV_memROM~9_combout\,
	datae => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \AND_HEX0~0_combout\);

-- Location: LABCELL_X19_Y4_N45
\ANDLEDR~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ANDLEDR~0_combout\ = ( \AND_HEX0~0_combout\ & ( (!\ROM1|memROM~2_combout\ & (!\ROM1|memROM~5_combout\ & !\ROM1|memROM~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ALT_INV_AND_HEX0~0_combout\,
	combout => \ANDLEDR~0_combout\);

-- Location: FF_X19_Y4_N26
\REGLEDR|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \ANDLEDR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLEDR|DOUT\(0));

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

-- Location: MLABCELL_X18_Y2_N48
\Data_IN[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[1]~2_combout\ = ( !\ROM1|memROM~5_combout\ & ( \AND_ENABLE_BUFFER_8BITS~0_combout\ & ( (\SW[1]~input_o\ & (!\ROM1|memROM~2_combout\ & !\ROM1|memROM~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ALT_INV_AND_ENABLE_BUFFER_8BITS~0_combout\,
	combout => \Data_IN[1]~2_combout\);

-- Location: LABCELL_X17_Y4_N36
\CPU|ULA1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~5_sumout\ = SUM(( !\Data_IN[1]~2_combout\ ) + ( \CPU|REG1|DOUT\(1) ) + ( \CPU|ULA1|Add1~2\ ))
-- \CPU|ULA1|Add1~6\ = CARRY(( !\Data_IN[1]~2_combout\ ) + ( \CPU|REG1|DOUT\(1) ) + ( \CPU|ULA1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|REG1|ALT_INV_DOUT\(1),
	datac => \ALT_INV_Data_IN[1]~2_combout\,
	cin => \CPU|ULA1|Add1~2\,
	sumout => \CPU|ULA1|Add1~5_sumout\,
	cout => \CPU|ULA1|Add1~6\);

-- Location: LABCELL_X17_Y4_N9
\CPU|ULA1|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[1]~1_combout\ = ( \CPU|ULA1|Add1~5_sumout\ & ( (!\CPU|Decoder|Operacao~0_combout\) # (\Data_IN[1]~2_combout\) ) ) # ( !\CPU|ULA1|Add1~5_sumout\ & ( (\CPU|Decoder|Operacao~0_combout\ & \Data_IN[1]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_Operacao~0_combout\,
	datad => \ALT_INV_Data_IN[1]~2_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~5_sumout\,
	combout => \CPU|ULA1|saida[1]~1_combout\);

-- Location: FF_X17_Y4_N11
\CPU|REG1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[1]~1_combout\,
	ena => \CPU|Decoder|Habilita_A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(1));

-- Location: FF_X18_Y4_N34
\REGLEDR|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \ANDLEDR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLEDR|DOUT\(1));

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

-- Location: MLABCELL_X18_Y2_N33
\Data_IN[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[2]~3_combout\ = ( !\ROM1|memROM~5_combout\ & ( \AND_ENABLE_BUFFER_8BITS~0_combout\ & ( (\SW[2]~input_o\ & (!\ROM1|memROM~2_combout\ & !\ROM1|memROM~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[2]~input_o\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ALT_INV_AND_ENABLE_BUFFER_8BITS~0_combout\,
	combout => \Data_IN[2]~3_combout\);

-- Location: LABCELL_X17_Y4_N39
\CPU|ULA1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~9_sumout\ = SUM(( !\Data_IN[2]~3_combout\ ) + ( \CPU|REG1|DOUT\(2) ) + ( \CPU|ULA1|Add1~6\ ))
-- \CPU|ULA1|Add1~10\ = CARRY(( !\Data_IN[2]~3_combout\ ) + ( \CPU|REG1|DOUT\(2) ) + ( \CPU|ULA1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|REG1|ALT_INV_DOUT\(2),
	datad => \ALT_INV_Data_IN[2]~3_combout\,
	cin => \CPU|ULA1|Add1~6\,
	sumout => \CPU|ULA1|Add1~9_sumout\,
	cout => \CPU|ULA1|Add1~10\);

-- Location: LABCELL_X17_Y4_N6
\CPU|ULA1|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[2]~2_combout\ = ( \CPU|ULA1|Add1~9_sumout\ & ( (!\CPU|Decoder|Operacao~0_combout\) # (\Data_IN[2]~3_combout\) ) ) # ( !\CPU|ULA1|Add1~9_sumout\ & ( (\CPU|Decoder|Operacao~0_combout\ & \Data_IN[2]~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_Operacao~0_combout\,
	datad => \ALT_INV_Data_IN[2]~3_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~9_sumout\,
	combout => \CPU|ULA1|saida[2]~2_combout\);

-- Location: FF_X17_Y4_N8
\CPU|REG1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[2]~2_combout\,
	ena => \CPU|Decoder|Habilita_A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(2));

-- Location: FF_X19_Y4_N28
\REGLEDR|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \ANDLEDR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLEDR|DOUT\(2));

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

-- Location: MLABCELL_X18_Y4_N9
\AND_ENABLE_BUFFER_8BITS~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_ENABLE_BUFFER_8BITS~1_combout\ = ( !\ROM1|memROM~1_combout\ & ( (!\ROM1|memROM~2_combout\ & (!\ROM1|memROM~5_combout\ & \AND_ENABLE_BUFFER_8BITS~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ALT_INV_AND_ENABLE_BUFFER_8BITS~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \AND_ENABLE_BUFFER_8BITS~1_combout\);

-- Location: LABCELL_X17_Y4_N42
\CPU|ULA1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~13_sumout\ = SUM(( \CPU|REG1|DOUT\(3) ) + ( (!\AND_ENABLE_BUFFER_8BITS~1_combout\) # (!\SW[3]~input_o\) ) + ( \CPU|ULA1|Add1~10\ ))
-- \CPU|ULA1|Add1~14\ = CARRY(( \CPU|REG1|DOUT\(3) ) + ( (!\AND_ENABLE_BUFFER_8BITS~1_combout\) # (!\SW[3]~input_o\) ) + ( \CPU|ULA1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100010001000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AND_ENABLE_BUFFER_8BITS~1_combout\,
	datab => \ALT_INV_SW[3]~input_o\,
	datad => \CPU|REG1|ALT_INV_DOUT\(3),
	cin => \CPU|ULA1|Add1~10\,
	sumout => \CPU|ULA1|Add1~13_sumout\,
	cout => \CPU|ULA1|Add1~14\);

-- Location: LABCELL_X17_Y4_N0
\CPU|ULA1|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[3]~3_combout\ = ( \CPU|ULA1|Add1~13_sumout\ & ( (!\CPU|Decoder|Operacao~0_combout\) # ((\SW[3]~input_o\ & \AND_ENABLE_BUFFER_8BITS~1_combout\)) ) ) # ( !\CPU|ULA1|Add1~13_sumout\ & ( (\CPU|Decoder|Operacao~0_combout\ & (\SW[3]~input_o\ & 
-- \AND_ENABLE_BUFFER_8BITS~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000110101010101110111010101010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_Operacao~0_combout\,
	datab => \ALT_INV_SW[3]~input_o\,
	datad => \ALT_INV_AND_ENABLE_BUFFER_8BITS~1_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~13_sumout\,
	combout => \CPU|ULA1|saida[3]~3_combout\);

-- Location: FF_X17_Y4_N2
\CPU|REG1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[3]~3_combout\,
	ena => \CPU|Decoder|Habilita_A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(3));

-- Location: FF_X18_Y4_N16
\REGLEDR|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \ANDLEDR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLEDR|DOUT\(3));

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

-- Location: LABCELL_X17_Y4_N45
\CPU|ULA1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~17_sumout\ = SUM(( (!\AND_ENABLE_BUFFER_8BITS~1_combout\) # (!\SW[4]~input_o\) ) + ( \CPU|REG1|DOUT\(4) ) + ( \CPU|ULA1|Add1~14\ ))
-- \CPU|ULA1|Add1~18\ = CARRY(( (!\AND_ENABLE_BUFFER_8BITS~1_combout\) # (!\SW[4]~input_o\) ) + ( \CPU|REG1|DOUT\(4) ) + ( \CPU|ULA1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AND_ENABLE_BUFFER_8BITS~1_combout\,
	datac => \ALT_INV_SW[4]~input_o\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(4),
	cin => \CPU|ULA1|Add1~14\,
	sumout => \CPU|ULA1|Add1~17_sumout\,
	cout => \CPU|ULA1|Add1~18\);

-- Location: LABCELL_X17_Y4_N15
\CPU|ULA1|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[4]~4_combout\ = ( \CPU|ULA1|Add1~17_sumout\ & ( (!\CPU|Decoder|Operacao~0_combout\) # ((\SW[4]~input_o\ & \AND_ENABLE_BUFFER_8BITS~1_combout\)) ) ) # ( !\CPU|ULA1|Add1~17_sumout\ & ( (\CPU|Decoder|Operacao~0_combout\ & (\SW[4]~input_o\ & 
-- \AND_ENABLE_BUFFER_8BITS~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010110101010101011111010101010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_Operacao~0_combout\,
	datac => \ALT_INV_SW[4]~input_o\,
	datad => \ALT_INV_AND_ENABLE_BUFFER_8BITS~1_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~17_sumout\,
	combout => \CPU|ULA1|saida[4]~4_combout\);

-- Location: FF_X17_Y4_N17
\CPU|REG1|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[4]~4_combout\,
	ena => \CPU|Decoder|Habilita_A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(4));

-- Location: FF_X19_Y4_N37
\REGLEDR|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \ANDLEDR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLEDR|DOUT\(4));

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

-- Location: MLABCELL_X18_Y2_N24
\Data_IN[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[5]~4_combout\ = ( !\ROM1|memROM~1_combout\ & ( \AND_ENABLE_BUFFER_8BITS~0_combout\ & ( (\SW[5]~input_o\ & (!\ROM1|memROM~5_combout\ & !\ROM1|memROM~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[5]~input_o\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ALT_INV_AND_ENABLE_BUFFER_8BITS~0_combout\,
	combout => \Data_IN[5]~4_combout\);

-- Location: LABCELL_X17_Y4_N48
\CPU|ULA1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~21_sumout\ = SUM(( !\Data_IN[5]~4_combout\ ) + ( \CPU|REG1|DOUT\(5) ) + ( \CPU|ULA1|Add1~18\ ))
-- \CPU|ULA1|Add1~22\ = CARRY(( !\Data_IN[5]~4_combout\ ) + ( \CPU|REG1|DOUT\(5) ) + ( \CPU|ULA1|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|REG1|ALT_INV_DOUT\(5),
	datad => \ALT_INV_Data_IN[5]~4_combout\,
	cin => \CPU|ULA1|Add1~18\,
	sumout => \CPU|ULA1|Add1~21_sumout\,
	cout => \CPU|ULA1|Add1~22\);

-- Location: LABCELL_X17_Y4_N3
\CPU|ULA1|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[5]~5_combout\ = ( \CPU|ULA1|Add1~21_sumout\ & ( (!\CPU|Decoder|Operacao~0_combout\) # (\Data_IN[5]~4_combout\) ) ) # ( !\CPU|ULA1|Add1~21_sumout\ & ( (\CPU|Decoder|Operacao~0_combout\ & \Data_IN[5]~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_Operacao~0_combout\,
	datad => \ALT_INV_Data_IN[5]~4_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~21_sumout\,
	combout => \CPU|ULA1|saida[5]~5_combout\);

-- Location: FF_X17_Y4_N5
\CPU|REG1|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[5]~5_combout\,
	ena => \CPU|Decoder|Habilita_A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(5));

-- Location: FF_X18_Y4_N14
\REGLEDR|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \ANDLEDR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLEDR|DOUT\(5));

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

-- Location: MLABCELL_X18_Y4_N6
\Data_IN[6]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[6]~5_combout\ = ( !\ROM1|memROM~1_combout\ & ( (!\ROM1|memROM~5_combout\ & (!\ROM1|memROM~2_combout\ & (\SW[6]~input_o\ & \AND_ENABLE_BUFFER_8BITS~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ALT_INV_SW[6]~input_o\,
	datad => \ALT_INV_AND_ENABLE_BUFFER_8BITS~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \Data_IN[6]~5_combout\);

-- Location: LABCELL_X17_Y4_N51
\CPU|ULA1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~25_sumout\ = SUM(( !\Data_IN[6]~5_combout\ ) + ( \CPU|REG1|DOUT\(6) ) + ( \CPU|ULA1|Add1~22\ ))
-- \CPU|ULA1|Add1~26\ = CARRY(( !\Data_IN[6]~5_combout\ ) + ( \CPU|REG1|DOUT\(6) ) + ( \CPU|ULA1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REG1|ALT_INV_DOUT\(6),
	datad => \ALT_INV_Data_IN[6]~5_combout\,
	cin => \CPU|ULA1|Add1~22\,
	sumout => \CPU|ULA1|Add1~25_sumout\,
	cout => \CPU|ULA1|Add1~26\);

-- Location: LABCELL_X17_Y4_N27
\CPU|ULA1|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[6]~6_combout\ = ( \CPU|ULA1|Add1~25_sumout\ & ( (!\CPU|Decoder|Operacao~0_combout\) # (\Data_IN[6]~5_combout\) ) ) # ( !\CPU|ULA1|Add1~25_sumout\ & ( (\CPU|Decoder|Operacao~0_combout\ & \Data_IN[6]~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_Operacao~0_combout\,
	datad => \ALT_INV_Data_IN[6]~5_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~25_sumout\,
	combout => \CPU|ULA1|saida[6]~6_combout\);

-- Location: FF_X17_Y4_N29
\CPU|REG1|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[6]~6_combout\,
	ena => \CPU|Decoder|Habilita_A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(6));

-- Location: FF_X19_Y4_N40
\REGLEDR|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \ANDLEDR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLEDR|DOUT\(6));

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

-- Location: LABCELL_X17_Y4_N54
\CPU|ULA1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~29_sumout\ = SUM(( (!\SW[7]~input_o\) # (!\AND_ENABLE_BUFFER_8BITS~1_combout\) ) + ( \CPU|REG1|DOUT\(7) ) + ( \CPU|ULA1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[7]~input_o\,
	datac => \ALT_INV_AND_ENABLE_BUFFER_8BITS~1_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(7),
	cin => \CPU|ULA1|Add1~26\,
	sumout => \CPU|ULA1|Add1~29_sumout\);

-- Location: LABCELL_X17_Y4_N12
\CPU|ULA1|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[7]~7_combout\ = ( \CPU|ULA1|Add1~29_sumout\ & ( (!\CPU|Decoder|Operacao~0_combout\) # ((\AND_ENABLE_BUFFER_8BITS~1_combout\ & \SW[7]~input_o\)) ) ) # ( !\CPU|ULA1|Add1~29_sumout\ & ( (\CPU|Decoder|Operacao~0_combout\ & 
-- (\AND_ENABLE_BUFFER_8BITS~1_combout\ & \SW[7]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010110101010101011111010101010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_Operacao~0_combout\,
	datac => \ALT_INV_AND_ENABLE_BUFFER_8BITS~1_combout\,
	datad => \ALT_INV_SW[7]~input_o\,
	dataf => \CPU|ULA1|ALT_INV_Add1~29_sumout\,
	combout => \CPU|ULA1|saida[7]~7_combout\);

-- Location: FF_X17_Y4_N14
\CPU|REG1|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[7]~7_combout\,
	ena => \CPU|Decoder|Habilita_A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(7));

-- Location: FF_X18_Y4_N43
\REGLEDR|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \ANDLEDR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLEDR|DOUT\(7));

-- Location: FF_X19_Y3_N41
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

-- Location: LABCELL_X19_Y3_N36
\REGLEDR8|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGLEDR8|DOUT~0_combout\ = ( \ROM1|memROM~2_combout\ & ( \AND_HEX0~0_combout\ & ( \REGLEDR8|DOUT~q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( \AND_HEX0~0_combout\ & ( (!\ROM1|memROM~1_combout\ & (((\REGLEDR8|DOUT~q\)))) # (\ROM1|memROM~1_combout\ & 
-- ((!\ROM1|memROM~5_combout\ & (\CPU|REG1|DOUT\(0))) # (\ROM1|memROM~5_combout\ & ((\REGLEDR8|DOUT~q\))))) ) ) ) # ( \ROM1|memROM~2_combout\ & ( !\AND_HEX0~0_combout\ & ( \REGLEDR8|DOUT~q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( !\AND_HEX0~0_combout\ & ( 
-- \REGLEDR8|DOUT~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100010000110111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REG1|ALT_INV_DOUT\(0),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \REGLEDR8|ALT_INV_DOUT~q\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ALT_INV_AND_HEX0~0_combout\,
	combout => \REGLEDR8|DOUT~0_combout\);

-- Location: FF_X19_Y3_N40
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

-- Location: FF_X20_Y4_N59
\REGLEDR9|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGLEDR9|DOUT~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLEDR9|DOUT~q\);

-- Location: LABCELL_X20_Y4_N12
\REGLEDR9|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGLEDR9|DOUT~0_combout\ = ( \CPU|REG1|DOUT\(0) & ( \AND_HEX0~0_combout\ & ( ((\ROM1|memROM~2_combout\ & (!\ROM1|memROM~1_combout\ & !\ROM1|memROM~5_combout\))) # (\REGLEDR9|DOUT~q\) ) ) ) # ( !\CPU|REG1|DOUT\(0) & ( \AND_HEX0~0_combout\ & ( 
-- (\REGLEDR9|DOUT~q\ & ((!\ROM1|memROM~2_combout\) # ((\ROM1|memROM~5_combout\) # (\ROM1|memROM~1_combout\)))) ) ) ) # ( \CPU|REG1|DOUT\(0) & ( !\AND_HEX0~0_combout\ & ( \REGLEDR9|DOUT~q\ ) ) ) # ( !\CPU|REG1|DOUT\(0) & ( !\AND_HEX0~0_combout\ & ( 
-- \REGLEDR9|DOUT~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000101111110100000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \REGLEDR9|ALT_INV_DOUT~q\,
	datae => \CPU|REG1|ALT_INV_DOUT\(0),
	dataf => \ALT_INV_AND_HEX0~0_combout\,
	combout => \REGLEDR9|DOUT~0_combout\);

-- Location: FF_X20_Y4_N58
\REGLEDR9|DOUT~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGLEDR9|DOUT~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLEDR9|DOUT~DUPLICATE_q\);

-- Location: LABCELL_X20_Y4_N18
\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = ( !\CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT[8]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(7) & (!\CPU|PC|DOUT\(5) & !\CPU|PC|DOUT\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(6),
	datab => \CPU|PC|ALT_INV_DOUT\(7),
	datac => \CPU|PC|ALT_INV_DOUT\(5),
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	combout => \ROM1|memROM~6_combout\);

-- Location: LABCELL_X21_Y4_N48
\ROM1|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~8_combout\ = ( \ROM1|memROM~0_combout\ & ( \ROM1|memROM~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \ROM1|memROM~8_combout\);

-- Location: LABCELL_X19_Y4_N42
\AND_HEX0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_HEX0~2_combout\ = ( \AND_HEX0~0_combout\ & ( \AND_HEX0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_AND_HEX0~1_combout\,
	dataf => \ALT_INV_AND_HEX0~0_combout\,
	combout => \AND_HEX0~2_combout\);

-- Location: FF_X19_Y4_N1
\REG_HEX0|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \AND_HEX0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX0|DOUT\(3));

-- Location: FF_X20_Y4_N22
\REG_HEX0|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \AND_HEX0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX0|DOUT\(1));

-- Location: FF_X19_Y4_N5
\REG_HEX0|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \AND_HEX0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX0|DOUT\(2));

-- Location: FF_X19_Y4_N59
\REG_HEX0|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \AND_HEX0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX0|DOUT\(0));

-- Location: MLABCELL_X18_Y3_N39
\LED_HEX0|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX0|rascSaida7seg[0]~0_combout\ = ( \REG_HEX0|DOUT\(0) & ( (!\REG_HEX0|DOUT\(3) & (!\REG_HEX0|DOUT\(1) & !\REG_HEX0|DOUT\(2))) # (\REG_HEX0|DOUT\(3) & (!\REG_HEX0|DOUT\(1) $ (!\REG_HEX0|DOUT\(2)))) ) ) # ( !\REG_HEX0|DOUT\(0) & ( 
-- (!\REG_HEX0|DOUT\(3) & (!\REG_HEX0|DOUT\(1) & \REG_HEX0|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000010100101010100001010010101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX0|ALT_INV_DOUT\(3),
	datac => \REG_HEX0|ALT_INV_DOUT\(1),
	datad => \REG_HEX0|ALT_INV_DOUT\(2),
	dataf => \REG_HEX0|ALT_INV_DOUT\(0),
	combout => \LED_HEX0|rascSaida7seg[0]~0_combout\);

-- Location: MLABCELL_X18_Y3_N6
\LED_HEX0|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX0|rascSaida7seg[1]~1_combout\ = ( \REG_HEX0|DOUT\(2) & ( (!\REG_HEX0|DOUT\(0) & ((\REG_HEX0|DOUT\(1)) # (\REG_HEX0|DOUT\(3)))) # (\REG_HEX0|DOUT\(0) & (!\REG_HEX0|DOUT\(3) $ (\REG_HEX0|DOUT\(1)))) ) ) # ( !\REG_HEX0|DOUT\(2) & ( 
-- (\REG_HEX0|DOUT\(0) & (\REG_HEX0|DOUT\(3) & \REG_HEX0|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100111100110011110011110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX0|ALT_INV_DOUT\(0),
	datac => \REG_HEX0|ALT_INV_DOUT\(3),
	datad => \REG_HEX0|ALT_INV_DOUT\(1),
	dataf => \REG_HEX0|ALT_INV_DOUT\(2),
	combout => \LED_HEX0|rascSaida7seg[1]~1_combout\);

-- Location: MLABCELL_X18_Y3_N9
\LED_HEX0|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX0|rascSaida7seg[2]~2_combout\ = ( \REG_HEX0|DOUT\(2) & ( (\REG_HEX0|DOUT\(3) & ((!\REG_HEX0|DOUT\(0)) # (\REG_HEX0|DOUT\(1)))) ) ) # ( !\REG_HEX0|DOUT\(2) & ( (!\REG_HEX0|DOUT\(3) & (!\REG_HEX0|DOUT\(0) & \REG_HEX0|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100001000100010101010100010001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX0|ALT_INV_DOUT\(3),
	datab => \REG_HEX0|ALT_INV_DOUT\(0),
	datad => \REG_HEX0|ALT_INV_DOUT\(1),
	dataf => \REG_HEX0|ALT_INV_DOUT\(2),
	combout => \LED_HEX0|rascSaida7seg[2]~2_combout\);

-- Location: MLABCELL_X18_Y3_N42
\LED_HEX0|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX0|rascSaida7seg[3]~3_combout\ = ( \REG_HEX0|DOUT\(2) & ( (!\REG_HEX0|DOUT\(0) & (!\REG_HEX0|DOUT\(3) & !\REG_HEX0|DOUT\(1))) # (\REG_HEX0|DOUT\(0) & ((\REG_HEX0|DOUT\(1)))) ) ) # ( !\REG_HEX0|DOUT\(2) & ( (!\REG_HEX0|DOUT\(3) & (\REG_HEX0|DOUT\(0) 
-- & !\REG_HEX0|DOUT\(1))) # (\REG_HEX0|DOUT\(3) & (!\REG_HEX0|DOUT\(0) & \REG_HEX0|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001000100001000100100010010001000001100111000100000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX0|ALT_INV_DOUT\(3),
	datab => \REG_HEX0|ALT_INV_DOUT\(0),
	datad => \REG_HEX0|ALT_INV_DOUT\(1),
	dataf => \REG_HEX0|ALT_INV_DOUT\(2),
	combout => \LED_HEX0|rascSaida7seg[3]~3_combout\);

-- Location: MLABCELL_X18_Y3_N54
\LED_HEX0|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX0|rascSaida7seg[4]~4_combout\ = ( \REG_HEX0|DOUT\(2) & ( (!\REG_HEX0|DOUT\(3) & ((!\REG_HEX0|DOUT\(1)) # (\REG_HEX0|DOUT\(0)))) ) ) # ( !\REG_HEX0|DOUT\(2) & ( (\REG_HEX0|DOUT\(0) & ((!\REG_HEX0|DOUT\(3)) # (!\REG_HEX0|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100100010001100110010001010101010001000101010101000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX0|ALT_INV_DOUT\(3),
	datab => \REG_HEX0|ALT_INV_DOUT\(0),
	datad => \REG_HEX0|ALT_INV_DOUT\(1),
	dataf => \REG_HEX0|ALT_INV_DOUT\(2),
	combout => \LED_HEX0|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X18_Y3_N57
\LED_HEX0|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX0|rascSaida7seg[5]~5_combout\ = ( \REG_HEX0|DOUT\(2) & ( (\REG_HEX0|DOUT\(0) & (!\REG_HEX0|DOUT\(3) $ (!\REG_HEX0|DOUT\(1)))) ) ) # ( !\REG_HEX0|DOUT\(2) & ( (!\REG_HEX0|DOUT\(3) & ((\REG_HEX0|DOUT\(1)) # (\REG_HEX0|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010101010001000101010101000010001001000100001000100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX0|ALT_INV_DOUT\(3),
	datab => \REG_HEX0|ALT_INV_DOUT\(0),
	datad => \REG_HEX0|ALT_INV_DOUT\(1),
	dataf => \REG_HEX0|ALT_INV_DOUT\(2),
	combout => \LED_HEX0|rascSaida7seg[5]~5_combout\);

-- Location: MLABCELL_X18_Y3_N45
\LED_HEX0|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX0|rascSaida7seg[6]~6_combout\ = ( \REG_HEX0|DOUT\(2) & ( (!\REG_HEX0|DOUT\(3) & (\REG_HEX0|DOUT\(0) & \REG_HEX0|DOUT\(1))) # (\REG_HEX0|DOUT\(3) & (!\REG_HEX0|DOUT\(0) & !\REG_HEX0|DOUT\(1))) ) ) # ( !\REG_HEX0|DOUT\(2) & ( (!\REG_HEX0|DOUT\(3) & 
-- !\REG_HEX0|DOUT\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000001000100001000100100010000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX0|ALT_INV_DOUT\(3),
	datab => \REG_HEX0|ALT_INV_DOUT\(0),
	datad => \REG_HEX0|ALT_INV_DOUT\(1),
	dataf => \REG_HEX0|ALT_INV_DOUT\(2),
	combout => \LED_HEX0|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X20_Y4_N0
\AND_HEX1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_HEX1~0_combout\ = ( \AND_HEX0~0_combout\ & ( !\ROM1|memROM~2_combout\ & ( (\ROM1|memROM~5_combout\ & \ROM1|memROM~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \ALT_INV_AND_HEX0~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \AND_HEX1~0_combout\);

-- Location: FF_X20_Y4_N53
\REG_HEX1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \AND_HEX1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX1|DOUT\(0));

-- Location: FF_X20_Y4_N4
\REG_HEX1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \AND_HEX1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX1|DOUT\(1));

-- Location: FF_X20_Y4_N2
\REG_HEX1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \AND_HEX1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX1|DOUT\(2));

-- Location: FF_X20_Y4_N16
\REG_HEX1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \AND_HEX1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX1|DOUT\(3));

-- Location: LABCELL_X21_Y4_N18
\LED_HEX1|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX1|rascSaida7seg[0]~0_combout\ = ( \REG_HEX1|DOUT\(2) & ( \REG_HEX1|DOUT\(3) & ( (\REG_HEX1|DOUT\(0) & !\REG_HEX1|DOUT\(1)) ) ) ) # ( !\REG_HEX1|DOUT\(2) & ( \REG_HEX1|DOUT\(3) & ( (\REG_HEX1|DOUT\(0) & \REG_HEX1|DOUT\(1)) ) ) ) # ( 
-- \REG_HEX1|DOUT\(2) & ( !\REG_HEX1|DOUT\(3) & ( (!\REG_HEX1|DOUT\(0) & !\REG_HEX1|DOUT\(1)) ) ) ) # ( !\REG_HEX1|DOUT\(2) & ( !\REG_HEX1|DOUT\(3) & ( (\REG_HEX1|DOUT\(0) & !\REG_HEX1|DOUT\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000111100000000000000000000000011110000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \REG_HEX1|ALT_INV_DOUT\(0),
	datad => \REG_HEX1|ALT_INV_DOUT\(1),
	datae => \REG_HEX1|ALT_INV_DOUT\(2),
	dataf => \REG_HEX1|ALT_INV_DOUT\(3),
	combout => \LED_HEX1|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X19_Y3_N57
\LED_HEX1|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX1|rascSaida7seg[1]~1_combout\ = ( \REG_HEX1|DOUT\(2) & ( (!\REG_HEX1|DOUT\(3) & (!\REG_HEX1|DOUT\(0) $ (!\REG_HEX1|DOUT\(1)))) # (\REG_HEX1|DOUT\(3) & ((!\REG_HEX1|DOUT\(0)) # (\REG_HEX1|DOUT\(1)))) ) ) # ( !\REG_HEX1|DOUT\(2) & ( 
-- (\REG_HEX1|DOUT\(3) & (\REG_HEX1|DOUT\(0) & \REG_HEX1|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100111100111100110011110011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX1|ALT_INV_DOUT\(3),
	datac => \REG_HEX1|ALT_INV_DOUT\(0),
	datad => \REG_HEX1|ALT_INV_DOUT\(1),
	dataf => \REG_HEX1|ALT_INV_DOUT\(2),
	combout => \LED_HEX1|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X21_Y4_N24
\LED_HEX1|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX1|rascSaida7seg[2]~2_combout\ = ( \REG_HEX1|DOUT\(3) & ( (\REG_HEX1|DOUT\(2) & ((!\REG_HEX1|DOUT\(0)) # (\REG_HEX1|DOUT\(1)))) ) ) # ( !\REG_HEX1|DOUT\(3) & ( (\REG_HEX1|DOUT\(1) & (!\REG_HEX1|DOUT\(2) & !\REG_HEX1|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000001111000000110000111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX1|ALT_INV_DOUT\(1),
	datac => \REG_HEX1|ALT_INV_DOUT\(2),
	datad => \REG_HEX1|ALT_INV_DOUT\(0),
	dataf => \REG_HEX1|ALT_INV_DOUT\(3),
	combout => \LED_HEX1|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X21_Y4_N27
\LED_HEX1|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX1|rascSaida7seg[3]~3_combout\ = ( \REG_HEX1|DOUT\(3) & ( (\REG_HEX1|DOUT\(1) & (!\REG_HEX1|DOUT\(2) $ (\REG_HEX1|DOUT\(0)))) ) ) # ( !\REG_HEX1|DOUT\(3) & ( (!\REG_HEX1|DOUT\(2) & (!\REG_HEX1|DOUT\(1) & \REG_HEX1|DOUT\(0))) # (\REG_HEX1|DOUT\(2) & 
-- (!\REG_HEX1|DOUT\(1) $ (\REG_HEX1|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100101001001010010010100100100100001001000010010000100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX1|ALT_INV_DOUT\(2),
	datab => \REG_HEX1|ALT_INV_DOUT\(1),
	datac => \REG_HEX1|ALT_INV_DOUT\(0),
	dataf => \REG_HEX1|ALT_INV_DOUT\(3),
	combout => \LED_HEX1|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X21_Y4_N54
\LED_HEX1|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX1|rascSaida7seg[4]~4_combout\ = ( \REG_HEX1|DOUT\(3) & ( (!\REG_HEX1|DOUT\(1) & (\REG_HEX1|DOUT\(0) & !\REG_HEX1|DOUT\(2))) ) ) # ( !\REG_HEX1|DOUT\(3) & ( ((!\REG_HEX1|DOUT\(1) & \REG_HEX1|DOUT\(2))) # (\REG_HEX1|DOUT\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111001111000011111100111100001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX1|ALT_INV_DOUT\(1),
	datac => \REG_HEX1|ALT_INV_DOUT\(0),
	datad => \REG_HEX1|ALT_INV_DOUT\(2),
	dataf => \REG_HEX1|ALT_INV_DOUT\(3),
	combout => \LED_HEX1|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X19_Y3_N54
\LED_HEX1|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX1|rascSaida7seg[5]~5_combout\ = ( \REG_HEX1|DOUT\(0) & ( !\REG_HEX1|DOUT\(3) $ (((\REG_HEX1|DOUT\(2) & !\REG_HEX1|DOUT\(1)))) ) ) # ( !\REG_HEX1|DOUT\(0) & ( (!\REG_HEX1|DOUT\(3) & (!\REG_HEX1|DOUT\(2) & \REG_HEX1|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000011000011110011001100001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX1|ALT_INV_DOUT\(3),
	datac => \REG_HEX1|ALT_INV_DOUT\(2),
	datad => \REG_HEX1|ALT_INV_DOUT\(1),
	dataf => \REG_HEX1|ALT_INV_DOUT\(0),
	combout => \LED_HEX1|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X19_Y3_N18
\LED_HEX1|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX1|rascSaida7seg[6]~6_combout\ = ( \REG_HEX1|DOUT\(0) & ( (!\REG_HEX1|DOUT\(3) & (!\REG_HEX1|DOUT\(2) $ (\REG_HEX1|DOUT\(1)))) ) ) # ( !\REG_HEX1|DOUT\(0) & ( (!\REG_HEX1|DOUT\(1) & (!\REG_HEX1|DOUT\(3) $ (\REG_HEX1|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100000000110000110000000011000000000011001100000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX1|ALT_INV_DOUT\(3),
	datac => \REG_HEX1|ALT_INV_DOUT\(2),
	datad => \REG_HEX1|ALT_INV_DOUT\(1),
	dataf => \REG_HEX1|ALT_INV_DOUT\(0),
	combout => \LED_HEX1|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X19_Y3_N30
\AND_HEX2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_HEX2~0_combout\ = ( !\ROM1|memROM~1_combout\ & ( \AND_HEX0~0_combout\ & ( (\ROM1|memROM~2_combout\ & \ROM1|memROM~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ALT_INV_AND_HEX0~0_combout\,
	combout => \AND_HEX2~0_combout\);

-- Location: FF_X19_Y3_N26
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

-- Location: FF_X19_Y3_N17
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

-- Location: FF_X19_Y3_N35
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

-- Location: FF_X19_Y3_N32
\REG_HEX2|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \AND_HEX2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX2|DOUT\(0));

-- Location: LABCELL_X19_Y3_N27
\LED_HEX2|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX2|rascSaida7seg[0]~0_combout\ = ( \REG_HEX2|DOUT\(0) & ( (!\REG_HEX2|DOUT\(1) & (!\REG_HEX2|DOUT\(2) $ (\REG_HEX2|DOUT\(3)))) # (\REG_HEX2|DOUT\(1) & (!\REG_HEX2|DOUT\(2) & \REG_HEX2|DOUT\(3))) ) ) # ( !\REG_HEX2|DOUT\(0) & ( (!\REG_HEX2|DOUT\(1) 
-- & (\REG_HEX2|DOUT\(2) & !\REG_HEX2|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000101000000101101000001010000000001010000001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX2|ALT_INV_DOUT\(1),
	datac => \REG_HEX2|ALT_INV_DOUT\(2),
	datad => \REG_HEX2|ALT_INV_DOUT\(3),
	datae => \REG_HEX2|ALT_INV_DOUT\(0),
	combout => \LED_HEX2|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X19_Y3_N42
\LED_HEX2|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX2|rascSaida7seg[1]~1_combout\ = (!\REG_HEX2|DOUT\(3) & (\REG_HEX2|DOUT\(2) & (!\REG_HEX2|DOUT\(1) $ (!\REG_HEX2|DOUT\(0))))) # (\REG_HEX2|DOUT\(3) & ((!\REG_HEX2|DOUT\(0) & (\REG_HEX2|DOUT\(2))) # (\REG_HEX2|DOUT\(0) & ((\REG_HEX2|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100100101000100110010010100010011001001010001001100100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX2|ALT_INV_DOUT\(3),
	datab => \REG_HEX2|ALT_INV_DOUT\(2),
	datac => \REG_HEX2|ALT_INV_DOUT\(1),
	datad => \REG_HEX2|ALT_INV_DOUT\(0),
	combout => \LED_HEX2|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X19_Y3_N45
\LED_HEX2|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX2|rascSaida7seg[2]~2_combout\ = ( \REG_HEX2|DOUT\(1) & ( (!\REG_HEX2|DOUT\(3) & (!\REG_HEX2|DOUT\(2) & !\REG_HEX2|DOUT\(0))) # (\REG_HEX2|DOUT\(3) & (\REG_HEX2|DOUT\(2))) ) ) # ( !\REG_HEX2|DOUT\(1) & ( (\REG_HEX2|DOUT\(3) & (\REG_HEX2|DOUT\(2) & 
-- !\REG_HEX2|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000010010001100100011001000110010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX2|ALT_INV_DOUT\(3),
	datab => \REG_HEX2|ALT_INV_DOUT\(2),
	datac => \REG_HEX2|ALT_INV_DOUT\(0),
	dataf => \REG_HEX2|ALT_INV_DOUT\(1),
	combout => \LED_HEX2|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X19_Y3_N3
\LED_HEX2|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX2|rascSaida7seg[3]~3_combout\ = ( \REG_HEX2|DOUT\(1) & ( (!\REG_HEX2|DOUT\(2) & (\REG_HEX2|DOUT\(3) & !\REG_HEX2|DOUT\(0))) # (\REG_HEX2|DOUT\(2) & ((\REG_HEX2|DOUT\(0)))) ) ) # ( !\REG_HEX2|DOUT\(1) & ( (!\REG_HEX2|DOUT\(3) & (!\REG_HEX2|DOUT\(2) 
-- $ (!\REG_HEX2|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000101000001010000010100001000011010000110100001101000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX2|ALT_INV_DOUT\(3),
	datab => \REG_HEX2|ALT_INV_DOUT\(2),
	datac => \REG_HEX2|ALT_INV_DOUT\(0),
	dataf => \REG_HEX2|ALT_INV_DOUT\(1),
	combout => \LED_HEX2|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X19_Y3_N12
\LED_HEX2|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX2|rascSaida7seg[4]~4_combout\ = ( \REG_HEX2|DOUT\(0) & ( (!\REG_HEX2|DOUT\(3)) # ((!\REG_HEX2|DOUT\(1) & !\REG_HEX2|DOUT\(2))) ) ) # ( !\REG_HEX2|DOUT\(0) & ( (!\REG_HEX2|DOUT\(1) & (\REG_HEX2|DOUT\(2) & !\REG_HEX2|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000111110001111100000100000001000001111100011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX2|ALT_INV_DOUT\(1),
	datab => \REG_HEX2|ALT_INV_DOUT\(2),
	datac => \REG_HEX2|ALT_INV_DOUT\(3),
	datae => \REG_HEX2|ALT_INV_DOUT\(0),
	combout => \LED_HEX2|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X19_Y3_N21
\LED_HEX2|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX2|rascSaida7seg[5]~5_combout\ = ( \REG_HEX2|DOUT\(3) & ( (!\REG_HEX2|DOUT\(1) & (\REG_HEX2|DOUT\(2) & \REG_HEX2|DOUT\(0))) ) ) # ( !\REG_HEX2|DOUT\(3) & ( (!\REG_HEX2|DOUT\(1) & (!\REG_HEX2|DOUT\(2) & \REG_HEX2|DOUT\(0))) # (\REG_HEX2|DOUT\(1) & 
-- ((!\REG_HEX2|DOUT\(2)) # (\REG_HEX2|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011110101010100001111010100000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX2|ALT_INV_DOUT\(1),
	datac => \REG_HEX2|ALT_INV_DOUT\(2),
	datad => \REG_HEX2|ALT_INV_DOUT\(0),
	dataf => \REG_HEX2|ALT_INV_DOUT\(3),
	combout => \LED_HEX2|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X19_Y3_N0
\LED_HEX2|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX2|rascSaida7seg[6]~6_combout\ = (!\REG_HEX2|DOUT\(0) & (!\REG_HEX2|DOUT\(1) & (!\REG_HEX2|DOUT\(3) $ (\REG_HEX2|DOUT\(2))))) # (\REG_HEX2|DOUT\(0) & (!\REG_HEX2|DOUT\(3) & (!\REG_HEX2|DOUT\(2) $ (\REG_HEX2|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000010000010100100001000001010010000100000101001000010000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX2|ALT_INV_DOUT\(3),
	datab => \REG_HEX2|ALT_INV_DOUT\(2),
	datac => \REG_HEX2|ALT_INV_DOUT\(1),
	datad => \REG_HEX2|ALT_INV_DOUT\(0),
	combout => \LED_HEX2|rascSaida7seg[6]~6_combout\);

-- Location: MLABCELL_X18_Y3_N27
\AND_HEX3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_HEX3~0_combout\ = ( \ROM1|memROM~2_combout\ & ( \AND_HEX0~0_combout\ & ( (\ROM1|memROM~5_combout\ & \ROM1|memROM~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ALT_INV_AND_HEX0~0_combout\,
	combout => \AND_HEX3~0_combout\);

-- Location: FF_X18_Y3_N26
\REG_HEX3|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \AND_HEX3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX3|DOUT\(3));

-- Location: FF_X18_Y3_N29
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
	ena => \AND_HEX3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX3|DOUT\(1));

-- Location: FF_X18_Y3_N32
\REG_HEX3|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \AND_HEX3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX3|DOUT\(0));

-- Location: FF_X18_Y3_N38
\REG_HEX3|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \AND_HEX3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX3|DOUT\(2));

-- Location: MLABCELL_X18_Y3_N33
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

-- Location: MLABCELL_X18_Y3_N12
\LED_HEX3|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX3|rascSaida7seg[1]~1_combout\ = ( \REG_HEX3|DOUT\(3) & ( (!\REG_HEX3|DOUT\(0) & (\REG_HEX3|DOUT\(2))) # (\REG_HEX3|DOUT\(0) & ((\REG_HEX3|DOUT\(1)))) ) ) # ( !\REG_HEX3|DOUT\(3) & ( (\REG_HEX3|DOUT\(2) & (!\REG_HEX3|DOUT\(0) $ 
-- (!\REG_HEX3|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000000110000110000001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX3|ALT_INV_DOUT\(0),
	datac => \REG_HEX3|ALT_INV_DOUT\(2),
	datad => \REG_HEX3|ALT_INV_DOUT\(1),
	dataf => \REG_HEX3|ALT_INV_DOUT\(3),
	combout => \LED_HEX3|rascSaida7seg[1]~1_combout\);

-- Location: MLABCELL_X18_Y3_N15
\LED_HEX3|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX3|rascSaida7seg[2]~2_combout\ = ( \REG_HEX3|DOUT\(3) & ( (\REG_HEX3|DOUT\(2) & ((!\REG_HEX3|DOUT\(0)) # (\REG_HEX3|DOUT\(1)))) ) ) # ( !\REG_HEX3|DOUT\(3) & ( (!\REG_HEX3|DOUT\(2) & (!\REG_HEX3|DOUT\(0) & \REG_HEX3|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000001010000010101010101000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX3|ALT_INV_DOUT\(2),
	datac => \REG_HEX3|ALT_INV_DOUT\(0),
	datad => \REG_HEX3|ALT_INV_DOUT\(1),
	dataf => \REG_HEX3|ALT_INV_DOUT\(3),
	combout => \LED_HEX3|rascSaida7seg[2]~2_combout\);

-- Location: MLABCELL_X18_Y3_N3
\LED_HEX3|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX3|rascSaida7seg[3]~3_combout\ = ( \REG_HEX3|DOUT\(3) & ( (\REG_HEX3|DOUT\(1) & (!\REG_HEX3|DOUT\(2) $ (\REG_HEX3|DOUT\(0)))) ) ) # ( !\REG_HEX3|DOUT\(3) & ( (!\REG_HEX3|DOUT\(2) & (!\REG_HEX3|DOUT\(1) & \REG_HEX3|DOUT\(0))) # (\REG_HEX3|DOUT\(2) & 
-- (!\REG_HEX3|DOUT\(1) $ (\REG_HEX3|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100101001001010010010100100100100001001000010010000100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX3|ALT_INV_DOUT\(2),
	datab => \REG_HEX3|ALT_INV_DOUT\(1),
	datac => \REG_HEX3|ALT_INV_DOUT\(0),
	dataf => \REG_HEX3|ALT_INV_DOUT\(3),
	combout => \LED_HEX3|rascSaida7seg[3]~3_combout\);

-- Location: MLABCELL_X18_Y3_N0
\LED_HEX3|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX3|rascSaida7seg[4]~4_combout\ = ( \REG_HEX3|DOUT\(0) & ( (!\REG_HEX3|DOUT\(3)) # ((!\REG_HEX3|DOUT\(2) & !\REG_HEX3|DOUT\(1))) ) ) # ( !\REG_HEX3|DOUT\(0) & ( (\REG_HEX3|DOUT\(2) & (!\REG_HEX3|DOUT\(1) & !\REG_HEX3|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000011111000111110001111100011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX3|ALT_INV_DOUT\(2),
	datab => \REG_HEX3|ALT_INV_DOUT\(1),
	datac => \REG_HEX3|ALT_INV_DOUT\(3),
	dataf => \REG_HEX3|ALT_INV_DOUT\(0),
	combout => \LED_HEX3|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X18_Y3_N51
\LED_HEX3|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX3|rascSaida7seg[5]~5_combout\ = ( \REG_HEX3|DOUT\(2) & ( (\REG_HEX3|DOUT\(0) & (!\REG_HEX3|DOUT\(3) $ (!\REG_HEX3|DOUT\(1)))) ) ) # ( !\REG_HEX3|DOUT\(2) & ( (!\REG_HEX3|DOUT\(3) & ((\REG_HEX3|DOUT\(0)) # (\REG_HEX3|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000101010000001100000011000101010001010100000011000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX3|ALT_INV_DOUT\(3),
	datab => \REG_HEX3|ALT_INV_DOUT\(1),
	datac => \REG_HEX3|ALT_INV_DOUT\(0),
	datae => \REG_HEX3|ALT_INV_DOUT\(2),
	combout => \LED_HEX3|rascSaida7seg[5]~5_combout\);

-- Location: MLABCELL_X18_Y3_N21
\LED_HEX3|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX3|rascSaida7seg[6]~6_combout\ = ( \REG_HEX3|DOUT\(2) & ( (!\REG_HEX3|DOUT\(3) & (\REG_HEX3|DOUT\(1) & \REG_HEX3|DOUT\(0))) # (\REG_HEX3|DOUT\(3) & (!\REG_HEX3|DOUT\(1) & !\REG_HEX3|DOUT\(0))) ) ) # ( !\REG_HEX3|DOUT\(2) & ( (!\REG_HEX3|DOUT\(3) & 
-- !\REG_HEX3|DOUT\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000010000100100001010001000100010000100001001000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX3|ALT_INV_DOUT\(3),
	datab => \REG_HEX3|ALT_INV_DOUT\(1),
	datac => \REG_HEX3|ALT_INV_DOUT\(0),
	datae => \REG_HEX3|ALT_INV_DOUT\(2),
	combout => \LED_HEX3|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X19_Y4_N9
\AND_HEX0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_HEX0~3_combout\ = (!\CPU|PC|DOUT\(4) & (\CPU|PC|DOUT\(0) & (\ROM1|memROM~9_combout\ & \ROM1|memROM~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(0),
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \AND_HEX0~3_combout\);

-- Location: MLABCELL_X18_Y4_N15
\AND_HEX4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_HEX4~0_combout\ = ( \AND_HEX0~3_combout\ & ( \ROM1|memROM~4_combout\ & ( (\ROM1|memROM~5_combout\ & (!\ROM1|memROM~2_combout\ & !\ROM1|memROM~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \ALT_INV_AND_HEX0~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \AND_HEX4~0_combout\);

-- Location: FF_X18_Y4_N50
\REG_HEX4|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \AND_HEX4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX4|DOUT\(2));

-- Location: FF_X18_Y4_N55
\REG_HEX4|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \AND_HEX4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX4|DOUT\(3));

-- Location: FF_X18_Y4_N59
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
	ena => \AND_HEX4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX4|DOUT\(0));

-- Location: FF_X18_Y4_N52
\REG_HEX4|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \AND_HEX4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX4|DOUT[1]~DUPLICATE_q\);

-- Location: LABCELL_X21_Y4_N57
\LED_HEX4|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX4|rascSaida7seg[0]~0_combout\ = ( \REG_HEX4|DOUT[1]~DUPLICATE_q\ & ( (!\REG_HEX4|DOUT\(2) & (\REG_HEX4|DOUT\(3) & \REG_HEX4|DOUT\(0))) ) ) # ( !\REG_HEX4|DOUT[1]~DUPLICATE_q\ & ( (!\REG_HEX4|DOUT\(2) & (!\REG_HEX4|DOUT\(3) & \REG_HEX4|DOUT\(0))) # 
-- (\REG_HEX4|DOUT\(2) & (!\REG_HEX4|DOUT\(3) $ (\REG_HEX4|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010100101010100001010010100000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX4|ALT_INV_DOUT\(2),
	datac => \REG_HEX4|ALT_INV_DOUT\(3),
	datad => \REG_HEX4|ALT_INV_DOUT\(0),
	dataf => \REG_HEX4|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \LED_HEX4|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X21_Y4_N36
\LED_HEX4|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX4|rascSaida7seg[1]~1_combout\ = ( \REG_HEX4|DOUT\(2) & ( (!\REG_HEX4|DOUT\(0) & ((\REG_HEX4|DOUT\(3)) # (\REG_HEX4|DOUT[1]~DUPLICATE_q\))) # (\REG_HEX4|DOUT\(0) & (!\REG_HEX4|DOUT[1]~DUPLICATE_q\ $ (\REG_HEX4|DOUT\(3)))) ) ) # ( 
-- !\REG_HEX4|DOUT\(2) & ( (\REG_HEX4|DOUT\(0) & (\REG_HEX4|DOUT[1]~DUPLICATE_q\ & \REG_HEX4|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100111100110011110011110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX4|ALT_INV_DOUT\(0),
	datac => \REG_HEX4|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \REG_HEX4|ALT_INV_DOUT\(3),
	dataf => \REG_HEX4|ALT_INV_DOUT\(2),
	combout => \LED_HEX4|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X21_Y4_N9
\LED_HEX4|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX4|rascSaida7seg[2]~2_combout\ = ( \REG_HEX4|DOUT\(3) & ( \REG_HEX4|DOUT\(2) & ( (!\REG_HEX4|DOUT\(0)) # (\REG_HEX4|DOUT[1]~DUPLICATE_q\) ) ) ) # ( !\REG_HEX4|DOUT\(3) & ( !\REG_HEX4|DOUT\(2) & ( (\REG_HEX4|DOUT[1]~DUPLICATE_q\ & 
-- !\REG_HEX4|DOUT\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000000000000000000000000000000001111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX4|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \REG_HEX4|ALT_INV_DOUT\(0),
	datae => \REG_HEX4|ALT_INV_DOUT\(3),
	dataf => \REG_HEX4|ALT_INV_DOUT\(2),
	combout => \LED_HEX4|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X21_Y4_N0
\LED_HEX4|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX4|rascSaida7seg[3]~3_combout\ = ( \REG_HEX4|DOUT[1]~DUPLICATE_q\ & ( (!\REG_HEX4|DOUT\(2) & (!\REG_HEX4|DOUT\(0) & \REG_HEX4|DOUT\(3))) # (\REG_HEX4|DOUT\(2) & (\REG_HEX4|DOUT\(0))) ) ) # ( !\REG_HEX4|DOUT[1]~DUPLICATE_q\ & ( (!\REG_HEX4|DOUT\(3) 
-- & (!\REG_HEX4|DOUT\(2) $ (!\REG_HEX4|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011000000000011001100000000000010001100110010001000110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX4|ALT_INV_DOUT\(2),
	datab => \REG_HEX4|ALT_INV_DOUT\(0),
	datad => \REG_HEX4|ALT_INV_DOUT\(3),
	dataf => \REG_HEX4|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \LED_HEX4|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X21_Y4_N3
\LED_HEX4|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX4|rascSaida7seg[4]~4_combout\ = ( \REG_HEX4|DOUT[1]~DUPLICATE_q\ & ( (\REG_HEX4|DOUT\(0) & !\REG_HEX4|DOUT\(3)) ) ) # ( !\REG_HEX4|DOUT[1]~DUPLICATE_q\ & ( (!\REG_HEX4|DOUT\(2) & (\REG_HEX4|DOUT\(0))) # (\REG_HEX4|DOUT\(2) & 
-- ((!\REG_HEX4|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001001110010011100100111001000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX4|ALT_INV_DOUT\(2),
	datab => \REG_HEX4|ALT_INV_DOUT\(0),
	datac => \REG_HEX4|ALT_INV_DOUT\(3),
	dataf => \REG_HEX4|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \LED_HEX4|rascSaida7seg[4]~4_combout\);

-- Location: FF_X18_Y4_N53
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
	ena => \AND_HEX4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX4|DOUT\(1));

-- Location: MLABCELL_X18_Y4_N39
\LED_HEX4|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX4|rascSaida7seg[5]~5_combout\ = ( \REG_HEX4|DOUT\(2) & ( (\REG_HEX4|DOUT\(0) & (!\REG_HEX4|DOUT\(1) $ (!\REG_HEX4|DOUT\(3)))) ) ) # ( !\REG_HEX4|DOUT\(2) & ( (!\REG_HEX4|DOUT\(3) & ((\REG_HEX4|DOUT\(0)) # (\REG_HEX4|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011110000010100001111000000000000010110100000000001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX4|ALT_INV_DOUT\(1),
	datac => \REG_HEX4|ALT_INV_DOUT\(3),
	datad => \REG_HEX4|ALT_INV_DOUT\(0),
	dataf => \REG_HEX4|ALT_INV_DOUT\(2),
	combout => \LED_HEX4|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X21_Y4_N39
\LED_HEX4|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX4|rascSaida7seg[6]~6_combout\ = ( \REG_HEX4|DOUT\(2) & ( (!\REG_HEX4|DOUT[1]~DUPLICATE_q\ & (!\REG_HEX4|DOUT\(0) & \REG_HEX4|DOUT\(3))) # (\REG_HEX4|DOUT[1]~DUPLICATE_q\ & (\REG_HEX4|DOUT\(0) & !\REG_HEX4|DOUT\(3))) ) ) # ( !\REG_HEX4|DOUT\(2) & ( 
-- (!\REG_HEX4|DOUT[1]~DUPLICATE_q\ & !\REG_HEX4|DOUT\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000000011000000110000001100000011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX4|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datab => \REG_HEX4|ALT_INV_DOUT\(0),
	datac => \REG_HEX4|ALT_INV_DOUT\(3),
	dataf => \REG_HEX4|ALT_INV_DOUT\(2),
	combout => \LED_HEX4|rascSaida7seg[6]~6_combout\);

-- Location: MLABCELL_X18_Y4_N57
AND_HEX5 : cyclonev_lcell_comb
-- Equation(s):
-- \AND_HEX5~combout\ = ( \AND_HEX0~3_combout\ & ( \ROM1|memROM~4_combout\ & ( (\ROM1|memROM~5_combout\ & (!\ROM1|memROM~2_combout\ & \ROM1|memROM~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \ALT_INV_AND_HEX0~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \AND_HEX5~combout\);

-- Location: FF_X18_Y4_N28
\REG_HEX5|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \AND_HEX5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX5|DOUT[0]~DUPLICATE_q\);

-- Location: FF_X18_Y4_N22
\REG_HEX5|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \AND_HEX5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX5|DOUT[1]~DUPLICATE_q\);

-- Location: FF_X18_Y4_N19
\REG_HEX5|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \AND_HEX5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX5|DOUT[2]~DUPLICATE_q\);

-- Location: FF_X18_Y4_N25
\REG_HEX5|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \AND_HEX5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX5|DOUT[3]~DUPLICATE_q\);

-- Location: LABCELL_X21_Y4_N33
\LED_HEX5|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX5|rascSaida7seg[0]~0_combout\ = ( \REG_HEX5|DOUT[2]~DUPLICATE_q\ & ( \REG_HEX5|DOUT[3]~DUPLICATE_q\ & ( (\REG_HEX5|DOUT[0]~DUPLICATE_q\ & !\REG_HEX5|DOUT[1]~DUPLICATE_q\) ) ) ) # ( !\REG_HEX5|DOUT[2]~DUPLICATE_q\ & ( \REG_HEX5|DOUT[3]~DUPLICATE_q\ 
-- & ( (\REG_HEX5|DOUT[0]~DUPLICATE_q\ & \REG_HEX5|DOUT[1]~DUPLICATE_q\) ) ) ) # ( \REG_HEX5|DOUT[2]~DUPLICATE_q\ & ( !\REG_HEX5|DOUT[3]~DUPLICATE_q\ & ( (!\REG_HEX5|DOUT[0]~DUPLICATE_q\ & !\REG_HEX5|DOUT[1]~DUPLICATE_q\) ) ) ) # ( 
-- !\REG_HEX5|DOUT[2]~DUPLICATE_q\ & ( !\REG_HEX5|DOUT[3]~DUPLICATE_q\ & ( (\REG_HEX5|DOUT[0]~DUPLICATE_q\ & !\REG_HEX5|DOUT[1]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000101000001010000000000101000001010101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX5|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \REG_HEX5|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datae => \REG_HEX5|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \REG_HEX5|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \LED_HEX5|rascSaida7seg[0]~0_combout\);

-- Location: FF_X18_Y4_N20
\REG_HEX5|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \AND_HEX5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX5|DOUT\(2));

-- Location: FF_X18_Y4_N29
\REG_HEX5|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \AND_HEX5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX5|DOUT\(0));

-- Location: FF_X18_Y4_N26
\REG_HEX5|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \AND_HEX5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX5|DOUT\(3));

-- Location: MLABCELL_X18_Y4_N3
\LED_HEX5|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX5|rascSaida7seg[1]~1_combout\ = ( \REG_HEX5|DOUT\(3) & ( (!\REG_HEX5|DOUT\(0) & (\REG_HEX5|DOUT\(2))) # (\REG_HEX5|DOUT\(0) & ((\REG_HEX5|DOUT[1]~DUPLICATE_q\))) ) ) # ( !\REG_HEX5|DOUT\(3) & ( (\REG_HEX5|DOUT\(2) & 
-- (!\REG_HEX5|DOUT[1]~DUPLICATE_q\ $ (!\REG_HEX5|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010000000001010101000001010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX5|ALT_INV_DOUT\(2),
	datac => \REG_HEX5|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \REG_HEX5|ALT_INV_DOUT\(0),
	dataf => \REG_HEX5|ALT_INV_DOUT\(3),
	combout => \LED_HEX5|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X21_Y4_N12
\LED_HEX5|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX5|rascSaida7seg[2]~2_combout\ = ( \REG_HEX5|DOUT[2]~DUPLICATE_q\ & ( \REG_HEX5|DOUT[3]~DUPLICATE_q\ & ( (!\REG_HEX5|DOUT[0]~DUPLICATE_q\) # (\REG_HEX5|DOUT[1]~DUPLICATE_q\) ) ) ) # ( !\REG_HEX5|DOUT[2]~DUPLICATE_q\ & ( 
-- !\REG_HEX5|DOUT[3]~DUPLICATE_q\ & ( (\REG_HEX5|DOUT[1]~DUPLICATE_q\ & !\REG_HEX5|DOUT[0]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000000000000000000000000000000001111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX5|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \REG_HEX5|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datae => \REG_HEX5|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \REG_HEX5|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \LED_HEX5|rascSaida7seg[2]~2_combout\);

-- Location: FF_X18_Y4_N23
\REG_HEX5|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \AND_HEX5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX5|DOUT\(1));

-- Location: LABCELL_X19_Y3_N6
\LED_HEX5|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX5|rascSaida7seg[3]~3_combout\ = ( \REG_HEX5|DOUT[2]~DUPLICATE_q\ & ( \REG_HEX5|DOUT\(1) & ( \REG_HEX5|DOUT[0]~DUPLICATE_q\ ) ) ) # ( !\REG_HEX5|DOUT[2]~DUPLICATE_q\ & ( \REG_HEX5|DOUT\(1) & ( (\REG_HEX5|DOUT[3]~DUPLICATE_q\ & 
-- !\REG_HEX5|DOUT[0]~DUPLICATE_q\) ) ) ) # ( \REG_HEX5|DOUT[2]~DUPLICATE_q\ & ( !\REG_HEX5|DOUT\(1) & ( (!\REG_HEX5|DOUT[3]~DUPLICATE_q\ & !\REG_HEX5|DOUT[0]~DUPLICATE_q\) ) ) ) # ( !\REG_HEX5|DOUT[2]~DUPLICATE_q\ & ( !\REG_HEX5|DOUT\(1) & ( 
-- (!\REG_HEX5|DOUT[3]~DUPLICATE_q\ & \REG_HEX5|DOUT[0]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100110000001100000000110000001100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX5|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \REG_HEX5|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datae => \REG_HEX5|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \REG_HEX5|ALT_INV_DOUT\(1),
	combout => \LED_HEX5|rascSaida7seg[3]~3_combout\);

-- Location: MLABCELL_X18_Y4_N30
\LED_HEX5|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX5|rascSaida7seg[4]~4_combout\ = ( \REG_HEX5|DOUT\(3) & ( (!\REG_HEX5|DOUT\(2) & (\REG_HEX5|DOUT\(0) & !\REG_HEX5|DOUT\(1))) ) ) # ( !\REG_HEX5|DOUT\(3) & ( ((\REG_HEX5|DOUT\(2) & !\REG_HEX5|DOUT\(1))) # (\REG_HEX5|DOUT\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100001111010111110000111100001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX5|ALT_INV_DOUT\(2),
	datac => \REG_HEX5|ALT_INV_DOUT\(0),
	datad => \REG_HEX5|ALT_INV_DOUT\(1),
	dataf => \REG_HEX5|ALT_INV_DOUT\(3),
	combout => \LED_HEX5|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X18_Y4_N36
\LED_HEX5|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX5|rascSaida7seg[5]~5_combout\ = ( \REG_HEX5|DOUT\(2) & ( (\REG_HEX5|DOUT\(0) & (!\REG_HEX5|DOUT[1]~DUPLICATE_q\ $ (!\REG_HEX5|DOUT\(3)))) ) ) # ( !\REG_HEX5|DOUT\(2) & ( (!\REG_HEX5|DOUT\(3) & ((\REG_HEX5|DOUT\(0)) # 
-- (\REG_HEX5|DOUT[1]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011110000001100001111000000000000001111000000000000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX5|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \REG_HEX5|ALT_INV_DOUT\(3),
	datad => \REG_HEX5|ALT_INV_DOUT\(0),
	dataf => \REG_HEX5|ALT_INV_DOUT\(2),
	combout => \LED_HEX5|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X21_Y4_N45
\LED_HEX5|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED_HEX5|rascSaida7seg[6]~6_combout\ = ( \REG_HEX5|DOUT[2]~DUPLICATE_q\ & ( \REG_HEX5|DOUT[3]~DUPLICATE_q\ & ( (!\REG_HEX5|DOUT[0]~DUPLICATE_q\ & !\REG_HEX5|DOUT[1]~DUPLICATE_q\) ) ) ) # ( \REG_HEX5|DOUT[2]~DUPLICATE_q\ & ( 
-- !\REG_HEX5|DOUT[3]~DUPLICATE_q\ & ( (\REG_HEX5|DOUT[0]~DUPLICATE_q\ & \REG_HEX5|DOUT[1]~DUPLICATE_q\) ) ) ) # ( !\REG_HEX5|DOUT[2]~DUPLICATE_q\ & ( !\REG_HEX5|DOUT[3]~DUPLICATE_q\ & ( !\REG_HEX5|DOUT[1]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000001010000010100000000000000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX5|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \REG_HEX5|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datae => \REG_HEX5|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \REG_HEX5|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \LED_HEX5|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X5_Y2_N3
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


