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

-- DATE "09/26/2021 20:29:00"

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
-- LEDR8	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR9	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ROM[0]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ROM[1]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ROM[2]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ROM[3]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ROM[4]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ROM[5]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ROM[6]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ROM[7]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ROM[8]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ROM[9]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ROM[10]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ROM[11]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ROM[12]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_RAM[0]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_RAM[1]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_RAM[2]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_RAM[3]	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_RAM[4]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_RAM[5]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_RAM[6]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_RAM[7]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Teste_Endereco[0]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Teste_Endereco[1]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Teste_Endereco[2]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Teste_Endereco[3]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Teste_Endereco[4]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Teste_Endereco[5]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Teste_Endereco[6]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Teste_Endereco[7]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Teste_Endereco[8]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- SW[0]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FPGA_RESET	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \FPGA_RESET~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \CPU|PC|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|somaUm|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|PC|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|somaUm|Add0~6\ : std_logic;
SIGNAL \CPU|somaUm|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|somaUm|Add0~34\ : std_logic;
SIGNAL \CPU|somaUm|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|somaUm|Add0~22\ : std_logic;
SIGNAL \CPU|somaUm|Add0~26\ : std_logic;
SIGNAL \CPU|somaUm|Add0~17_sumout\ : std_logic;
SIGNAL \ROM1|memROM~13_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~11_combout\ : std_logic;
SIGNAL \ROM1|memROM~12_combout\ : std_logic;
SIGNAL \ROM1|memROM~14_combout\ : std_logic;
SIGNAL \CPU|MUX4x2_PC|saida_MUX[5]~4_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~16_combout\ : std_logic;
SIGNAL \ROM1|memROM~17_combout\ : std_logic;
SIGNAL \CPU|MUX4x2_PC|saida_MUX[8]~0_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \CPU|MUX4x2_PC|saida_MUX[1]~2_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|somaUm|Add0~10\ : std_logic;
SIGNAL \CPU|somaUm|Add0~13_sumout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \CPU|MUX4x2_PC|saida_MUX[2]~3_combout\ : std_logic;
SIGNAL \CPU|somaUm|Add0~14\ : std_logic;
SIGNAL \CPU|somaUm|Add0~21_sumout\ : std_logic;
SIGNAL \ROM1|memROM~8_combout\ : std_logic;
SIGNAL \ROM1|memROM~9_combout\ : std_logic;
SIGNAL \CPU|MUX4x2_PC|saida_MUX[3]~5_combout\ : std_logic;
SIGNAL \ROM1|memROM~20_combout\ : std_logic;
SIGNAL \ROM1|memROM~24_combout\ : std_logic;
SIGNAL \ROM1|memROM~22_combout\ : std_logic;
SIGNAL \ROM1|memROM~18_combout\ : std_logic;
SIGNAL \CPU|Decoder|Equal1~2_combout\ : std_logic;
SIGNAL \CPU|MUX4x2_PC|saida_MUX[0]~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~32_combout\ : std_logic;
SIGNAL \ROM1|memROM~23_combout\ : std_logic;
SIGNAL \ROM1|memROM~25_combout\ : std_logic;
SIGNAL \ROM1|memROM~21_combout\ : std_logic;
SIGNAL \CPU|Decoder|Equal1~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~15_combout\ : std_logic;
SIGNAL \ROM1|memROM~29_combout\ : std_logic;
SIGNAL \ROM1|memROM~28_combout\ : std_logic;
SIGNAL \ROM1|memROM~27_combout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~26_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|Decoder|Operacao~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~34_cout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~1_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|Equal1~0_combout\ : std_logic;
SIGNAL \CPU|Decoder|Habilita_A~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~2\ : std_logic;
SIGNAL \CPU|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~2\ : std_logic;
SIGNAL \CPU|ULA1|Add1~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[1]~1_combout\ : std_logic;
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
SIGNAL \ROM1|memROM~30_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~18\ : std_logic;
SIGNAL \CPU|ULA1|Add1~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[5]~5_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~22\ : std_logic;
SIGNAL \CPU|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \ROM1|memROM~31_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~22\ : std_logic;
SIGNAL \CPU|ULA1|Add1~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[6]~6_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~26\ : std_logic;
SIGNAL \CPU|ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[7]~7_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~26\ : std_logic;
SIGNAL \CPU|ULA1|Add1~29_sumout\ : std_logic;
SIGNAL \CPU|Decoder|Equal1~1_combout\ : std_logic;
SIGNAL \CPU|FLAG_IGUAL|DOUT~0_combout\ : std_logic;
SIGNAL \CPU|FLAG_IGUAL|DOUT~1_combout\ : std_logic;
SIGNAL \CPU|FLAG_IGUAL|DOUT~q\ : std_logic;
SIGNAL \CPU|MUX4x2_PC|Equal1~0_combout\ : std_logic;
SIGNAL \CPU|somaUm|Add0~18\ : std_logic;
SIGNAL \CPU|somaUm|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|MUX4x2_PC|saida_MUX[6]~7_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|somaUm|Add0~30\ : std_logic;
SIGNAL \CPU|somaUm|Add0~33_sumout\ : std_logic;
SIGNAL \CPU|MUX4x2_PC|saida_MUX[7]~8_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~10_combout\ : std_logic;
SIGNAL \ROM1|memROM~19_combout\ : std_logic;
SIGNAL \CPU|MUX4x2_PC|Equal2~0_combout\ : std_logic;
SIGNAL \CPU|somaUm|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|MUX4x2_PC|saida_MUX[4]~6_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \CPU|REG1|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|Decoder|OUTPUT\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \CPU|END_RET|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|REG1|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~32_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~31_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~30_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~29_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~28_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~27_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~26_combout\ : std_logic;
SIGNAL \CPU|FLAG_IGUAL|ALT_INV_DOUT~0_combout\ : std_logic;
SIGNAL \CPU|Decoder|ALT_INV_Operacao~0_combout\ : std_logic;
SIGNAL \CPU|Decoder|ALT_INV_Habilita_A~0_combout\ : std_logic;
SIGNAL \CPU|Decoder|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \CPU|Decoder|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \CPU|END_RET|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|MUX4x2_PC|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \CPU|MUX4x2_PC|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \CPU|FLAG_IGUAL|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~25_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~24_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~23_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~22_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~21_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~20_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~19_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~18_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~17_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~10_combout\ : std_logic;
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
\CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[7]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[6]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[4]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[3]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[5]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[2]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[1]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[0]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[8]~DUPLICATE_q\;
\ROM1|ALT_INV_memROM~32_combout\ <= NOT \ROM1|memROM~32_combout\;
\ROM1|ALT_INV_memROM~31_combout\ <= NOT \ROM1|memROM~31_combout\;
\ROM1|ALT_INV_memROM~30_combout\ <= NOT \ROM1|memROM~30_combout\;
\ROM1|ALT_INV_memROM~29_combout\ <= NOT \ROM1|memROM~29_combout\;
\ROM1|ALT_INV_memROM~28_combout\ <= NOT \ROM1|memROM~28_combout\;
\ROM1|ALT_INV_memROM~27_combout\ <= NOT \ROM1|memROM~27_combout\;
\ROM1|ALT_INV_memROM~26_combout\ <= NOT \ROM1|memROM~26_combout\;
\CPU|FLAG_IGUAL|ALT_INV_DOUT~0_combout\ <= NOT \CPU|FLAG_IGUAL|DOUT~0_combout\;
\CPU|Decoder|ALT_INV_Operacao~0_combout\ <= NOT \CPU|Decoder|Operacao~0_combout\;
\CPU|Decoder|ALT_INV_Habilita_A~0_combout\ <= NOT \CPU|Decoder|Habilita_A~0_combout\;
\CPU|Decoder|ALT_INV_Equal1~1_combout\ <= NOT \CPU|Decoder|Equal1~1_combout\;
\CPU|Decoder|ALT_INV_Equal1~0_combout\ <= NOT \CPU|Decoder|Equal1~0_combout\;
\CPU|END_RET|ALT_INV_DOUT\(7) <= NOT \CPU|END_RET|DOUT\(7);
\CPU|END_RET|ALT_INV_DOUT\(6) <= NOT \CPU|END_RET|DOUT\(6);
\CPU|END_RET|ALT_INV_DOUT\(4) <= NOT \CPU|END_RET|DOUT\(4);
\CPU|END_RET|ALT_INV_DOUT\(3) <= NOT \CPU|END_RET|DOUT\(3);
\CPU|END_RET|ALT_INV_DOUT\(5) <= NOT \CPU|END_RET|DOUT\(5);
\CPU|END_RET|ALT_INV_DOUT\(2) <= NOT \CPU|END_RET|DOUT\(2);
\CPU|END_RET|ALT_INV_DOUT\(1) <= NOT \CPU|END_RET|DOUT\(1);
\CPU|END_RET|ALT_INV_DOUT\(0) <= NOT \CPU|END_RET|DOUT\(0);
\CPU|MUX4x2_PC|ALT_INV_Equal1~0_combout\ <= NOT \CPU|MUX4x2_PC|Equal1~0_combout\;
\CPU|END_RET|ALT_INV_DOUT\(8) <= NOT \CPU|END_RET|DOUT\(8);
\CPU|MUX4x2_PC|ALT_INV_Equal2~0_combout\ <= NOT \CPU|MUX4x2_PC|Equal2~0_combout\;
\CPU|FLAG_IGUAL|ALT_INV_DOUT~q\ <= NOT \CPU|FLAG_IGUAL|DOUT~q\;
\ROM1|ALT_INV_memROM~25_combout\ <= NOT \ROM1|memROM~25_combout\;
\ROM1|ALT_INV_memROM~24_combout\ <= NOT \ROM1|memROM~24_combout\;
\ROM1|ALT_INV_memROM~23_combout\ <= NOT \ROM1|memROM~23_combout\;
\ROM1|ALT_INV_memROM~22_combout\ <= NOT \ROM1|memROM~22_combout\;
\ROM1|ALT_INV_memROM~21_combout\ <= NOT \ROM1|memROM~21_combout\;
\ROM1|ALT_INV_memROM~20_combout\ <= NOT \ROM1|memROM~20_combout\;
\ROM1|ALT_INV_memROM~19_combout\ <= NOT \ROM1|memROM~19_combout\;
\ROM1|ALT_INV_memROM~18_combout\ <= NOT \ROM1|memROM~18_combout\;
\ROM1|ALT_INV_memROM~17_combout\ <= NOT \ROM1|memROM~17_combout\;
\ROM1|ALT_INV_memROM~16_combout\ <= NOT \ROM1|memROM~16_combout\;
\ROM1|ALT_INV_memROM~15_combout\ <= NOT \ROM1|memROM~15_combout\;
\ROM1|ALT_INV_memROM~14_combout\ <= NOT \ROM1|memROM~14_combout\;
\ROM1|ALT_INV_memROM~13_combout\ <= NOT \ROM1|memROM~13_combout\;
\ROM1|ALT_INV_memROM~12_combout\ <= NOT \ROM1|memROM~12_combout\;
\ROM1|ALT_INV_memROM~11_combout\ <= NOT \ROM1|memROM~11_combout\;
\ROM1|ALT_INV_memROM~10_combout\ <= NOT \ROM1|memROM~10_combout\;
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
\CPU|PC|ALT_INV_DOUT\(7) <= NOT \CPU|PC|DOUT\(7);
\CPU|PC|ALT_INV_DOUT\(6) <= NOT \CPU|PC|DOUT\(6);
\CPU|PC|ALT_INV_DOUT\(4) <= NOT \CPU|PC|DOUT\(4);
\CPU|PC|ALT_INV_DOUT\(3) <= NOT \CPU|PC|DOUT\(3);
\CPU|PC|ALT_INV_DOUT\(5) <= NOT \CPU|PC|DOUT\(5);
\CPU|PC|ALT_INV_DOUT\(2) <= NOT \CPU|PC|DOUT\(2);
\CPU|PC|ALT_INV_DOUT\(1) <= NOT \CPU|PC|DOUT\(1);
\CPU|PC|ALT_INV_DOUT\(0) <= NOT \CPU|PC|DOUT\(0);
\CPU|PC|ALT_INV_DOUT\(8) <= NOT \CPU|PC|DOUT\(8);

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

-- Location: IOOBUF_X18_Y45_N2
\LEDR8~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR8);

-- Location: IOOBUF_X24_Y0_N2
\LEDR9~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR9);

-- Location: IOOBUF_X16_Y0_N76
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

-- Location: IOOBUF_X18_Y0_N2
\saida_ROM[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~5_combout\,
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
	i => \ROM1|memROM~7_combout\,
	devoe => ww_devoe,
	o => ww_saida_ROM(2));

-- Location: IOOBUF_X14_Y0_N53
\saida_ROM[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~9_combout\,
	devoe => ww_devoe,
	o => ww_saida_ROM(3));

-- Location: IOOBUF_X19_Y0_N19
\saida_ROM[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~32_combout\,
	devoe => ww_devoe,
	o => ww_saida_ROM(4));

-- Location: IOOBUF_X16_Y0_N59
\saida_ROM[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~14_combout\,
	devoe => ww_devoe,
	o => ww_saida_ROM(5));

-- Location: IOOBUF_X12_Y0_N19
\saida_ROM[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~15_combout\,
	devoe => ww_devoe,
	o => ww_saida_ROM(6));

-- Location: IOOBUF_X19_Y0_N53
\saida_ROM[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~32_combout\,
	devoe => ww_devoe,
	o => ww_saida_ROM(7));

-- Location: IOOBUF_X19_Y0_N36
\saida_ROM[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~17_combout\,
	devoe => ww_devoe,
	o => ww_saida_ROM(8));

-- Location: IOOBUF_X16_Y0_N42
\saida_ROM[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~19_combout\,
	devoe => ww_devoe,
	o => ww_saida_ROM(9));

-- Location: IOOBUF_X12_Y0_N36
\saida_ROM[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~21_combout\,
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
	i => \ROM1|memROM~23_combout\,
	devoe => ww_devoe,
	o => ww_saida_ROM(11));

-- Location: IOOBUF_X10_Y0_N42
\saida_ROM[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~25_combout\,
	devoe => ww_devoe,
	o => ww_saida_ROM(12));

-- Location: IOOBUF_X11_Y0_N19
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

-- Location: IOOBUF_X0_Y20_N56
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

-- Location: IOOBUF_X18_Y0_N36
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

-- Location: IOOBUF_X0_Y20_N22
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

-- Location: IOOBUF_X22_Y0_N36
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

-- Location: IOOBUF_X19_Y0_N2
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

-- Location: IOOBUF_X0_Y20_N5
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

-- Location: IOOBUF_X0_Y20_N39
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

-- Location: IOOBUF_X10_Y0_N59
\Teste_Endereco[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT[0]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_Teste_Endereco(0));

-- Location: IOOBUF_X18_Y0_N53
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

-- Location: IOOBUF_X12_Y0_N53
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

-- Location: IOOBUF_X18_Y0_N19
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

-- Location: IOOBUF_X14_Y0_N36
\Teste_Endereco[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT[4]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_Teste_Endereco(4));

-- Location: IOOBUF_X16_Y0_N93
\Teste_Endereco[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT[5]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_Teste_Endereco(5));

-- Location: IOOBUF_X11_Y0_N2
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

-- Location: IOOBUF_X11_Y0_N53
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

-- Location: IOOBUF_X10_Y0_N76
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => VCC,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => VCC,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => VCC,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => VCC,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => VCC,
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

-- Location: CLKCTRL_G7
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

-- Location: FF_X6_Y4_N41
\CPU|PC|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUX4x2_PC|saida_MUX[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[0]~DUPLICATE_q\);

-- Location: MLABCELL_X9_Y4_N0
\CPU|somaUm|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|somaUm|Add0~5_sumout\ = SUM(( \CPU|PC|DOUT[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \CPU|somaUm|Add0~6\ = CARRY(( \CPU|PC|DOUT[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \CPU|somaUm|Add0~5_sumout\,
	cout => \CPU|somaUm|Add0~6\);

-- Location: FF_X6_Y4_N37
\CPU|PC|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUX4x2_PC|saida_MUX[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[3]~DUPLICATE_q\);

-- Location: MLABCELL_X9_Y4_N3
\CPU|somaUm|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|somaUm|Add0~9_sumout\ = SUM(( \CPU|PC|DOUT[1]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|somaUm|Add0~6\ ))
-- \CPU|somaUm|Add0~10\ = CARRY(( \CPU|PC|DOUT[1]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|somaUm|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	cin => \CPU|somaUm|Add0~6\,
	sumout => \CPU|somaUm|Add0~9_sumout\,
	cout => \CPU|somaUm|Add0~10\);

-- Location: FF_X9_Y4_N4
\CPU|END_RET|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|somaUm|Add0~9_sumout\,
	ena => \CPU|Decoder|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RET|DOUT\(1));

-- Location: MLABCELL_X9_Y4_N21
\CPU|somaUm|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|somaUm|Add0~33_sumout\ = SUM(( \CPU|PC|DOUT[7]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|somaUm|Add0~30\ ))
-- \CPU|somaUm|Add0~34\ = CARRY(( \CPU|PC|DOUT[7]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|somaUm|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	cin => \CPU|somaUm|Add0~30\,
	sumout => \CPU|somaUm|Add0~33_sumout\,
	cout => \CPU|somaUm|Add0~34\);

-- Location: MLABCELL_X9_Y4_N24
\CPU|somaUm|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|somaUm|Add0~1_sumout\ = SUM(( \CPU|PC|DOUT[8]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|somaUm|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	cin => \CPU|somaUm|Add0~34\,
	sumout => \CPU|somaUm|Add0~1_sumout\);

-- Location: FF_X9_Y4_N25
\CPU|END_RET|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|somaUm|Add0~1_sumout\,
	ena => \CPU|Decoder|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RET|DOUT\(8));

-- Location: MLABCELL_X9_Y4_N9
\CPU|somaUm|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|somaUm|Add0~21_sumout\ = SUM(( \CPU|PC|DOUT[3]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|somaUm|Add0~14\ ))
-- \CPU|somaUm|Add0~22\ = CARRY(( \CPU|PC|DOUT[3]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|somaUm|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	cin => \CPU|somaUm|Add0~14\,
	sumout => \CPU|somaUm|Add0~21_sumout\,
	cout => \CPU|somaUm|Add0~22\);

-- Location: MLABCELL_X9_Y4_N12
\CPU|somaUm|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|somaUm|Add0~25_sumout\ = SUM(( \CPU|PC|DOUT[4]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|somaUm|Add0~22\ ))
-- \CPU|somaUm|Add0~26\ = CARRY(( \CPU|PC|DOUT[4]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|somaUm|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	cin => \CPU|somaUm|Add0~22\,
	sumout => \CPU|somaUm|Add0~25_sumout\,
	cout => \CPU|somaUm|Add0~26\);

-- Location: MLABCELL_X9_Y4_N15
\CPU|somaUm|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|somaUm|Add0~17_sumout\ = SUM(( \CPU|PC|DOUT[5]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|somaUm|Add0~26\ ))
-- \CPU|somaUm|Add0~18\ = CARRY(( \CPU|PC|DOUT[5]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|somaUm|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	cin => \CPU|somaUm|Add0~26\,
	sumout => \CPU|somaUm|Add0~17_sumout\,
	cout => \CPU|somaUm|Add0~18\);

-- Location: FF_X9_Y4_N16
\CPU|END_RET|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|somaUm|Add0~17_sumout\,
	ena => \CPU|Decoder|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RET|DOUT\(5));

-- Location: FF_X6_Y4_N16
\CPU|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUX4x2_PC|saida_MUX[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(5));

-- Location: LABCELL_X7_Y4_N42
\ROM1|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~13_combout\ = ( !\CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT\(5) & (\CPU|PC|DOUT\(2) & \CPU|PC|DOUT[1]~DUPLICATE_q\)) # (\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT[1]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000001100001100000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(0),
	combout => \ROM1|memROM~13_combout\);

-- Location: FF_X6_Y4_N58
\CPU|PC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUX4x2_PC|saida_MUX[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[2]~DUPLICATE_q\);

-- Location: LABCELL_X7_Y4_N45
\ROM1|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~11_combout\ = ( !\CPU|PC|DOUT\(5) & ( !\CPU|PC|DOUT[2]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \ROM1|memROM~11_combout\);

-- Location: LABCELL_X7_Y4_N54
\ROM1|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~12_combout\ = ( \CPU|PC|DOUT\(0) & ( !\CPU|PC|DOUT[1]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(0),
	combout => \ROM1|memROM~12_combout\);

-- Location: LABCELL_X7_Y4_N24
\ROM1|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~14_combout\ = ( \ROM1|memROM~12_combout\ & ( \CPU|PC|DOUT[3]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT[8]~DUPLICATE_q\ & (\ROM1|memROM~1_combout\ & \ROM1|memROM~11_combout\)) ) ) ) # ( \ROM1|memROM~12_combout\ & ( !\CPU|PC|DOUT[3]~DUPLICATE_q\ & ( 
-- (!\CPU|PC|DOUT[8]~DUPLICATE_q\ & (\ROM1|memROM~13_combout\ & \ROM1|memROM~1_combout\)) ) ) ) # ( !\ROM1|memROM~12_combout\ & ( !\CPU|PC|DOUT[3]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT[8]~DUPLICATE_q\ & (\ROM1|memROM~13_combout\ & \ROM1|memROM~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000000000000000000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datab => \ROM1|ALT_INV_memROM~13_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \ROM1|memROM~14_combout\);

-- Location: LABCELL_X6_Y4_N15
\CPU|MUX4x2_PC|saida_MUX[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX4x2_PC|saida_MUX[5]~4_combout\ = ( \ROM1|memROM~14_combout\ & ( (!\CPU|MUX4x2_PC|Equal2~0_combout\ & (((\CPU|somaUm|Add0~17_sumout\)))) # (\CPU|MUX4x2_PC|Equal2~0_combout\ & (((\CPU|END_RET|DOUT\(5))) # (\CPU|MUX4x2_PC|Equal1~0_combout\))) ) ) # ( 
-- !\ROM1|memROM~14_combout\ & ( (!\CPU|MUX4x2_PC|Equal2~0_combout\ & (((\CPU|somaUm|Add0~17_sumout\)))) # (\CPU|MUX4x2_PC|Equal2~0_combout\ & (!\CPU|MUX4x2_PC|Equal1~0_combout\ & (\CPU|END_RET|DOUT\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011001110000000101100111000010011110111110001001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX4x2_PC|ALT_INV_Equal1~0_combout\,
	datab => \CPU|MUX4x2_PC|ALT_INV_Equal2~0_combout\,
	datac => \CPU|END_RET|ALT_INV_DOUT\(5),
	datad => \CPU|somaUm|ALT_INV_Add0~17_sumout\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \CPU|MUX4x2_PC|saida_MUX[5]~4_combout\);

-- Location: FF_X6_Y4_N17
\CPU|PC|DOUT[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUX4x2_PC|saida_MUX[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[5]~DUPLICATE_q\);

-- Location: MLABCELL_X9_Y4_N48
\ROM1|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~16_combout\ = ( \CPU|PC|DOUT\(2) & ( (!\CPU|PC|DOUT[0]~DUPLICATE_q\ & (!\CPU|PC|DOUT[5]~DUPLICATE_q\ & !\CPU|PC|DOUT[1]~DUPLICATE_q\)) ) ) # ( !\CPU|PC|DOUT\(2) & ( (!\CPU|PC|DOUT[0]~DUPLICATE_q\ & (!\CPU|PC|DOUT[5]~DUPLICATE_q\ & 
-- \CPU|PC|DOUT[1]~DUPLICATE_q\)) # (\CPU|PC|DOUT[0]~DUPLICATE_q\ & (!\CPU|PC|DOUT[5]~DUPLICATE_q\ $ (\CPU|PC|DOUT[1]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011000011001100001100001111000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(2),
	combout => \ROM1|memROM~16_combout\);

-- Location: MLABCELL_X9_Y4_N51
\ROM1|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~17_combout\ = ( \ROM1|memROM~16_combout\ & ( (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & \ROM1|memROM~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~16_combout\,
	combout => \ROM1|memROM~17_combout\);

-- Location: LABCELL_X5_Y4_N18
\CPU|MUX4x2_PC|saida_MUX[8]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX4x2_PC|saida_MUX[8]~0_combout\ = ( \CPU|somaUm|Add0~1_sumout\ & ( (!\CPU|MUX4x2_PC|Equal2~0_combout\) # ((!\CPU|MUX4x2_PC|Equal1~0_combout\ & (\CPU|END_RET|DOUT\(8))) # (\CPU|MUX4x2_PC|Equal1~0_combout\ & ((\ROM1|memROM~17_combout\)))) ) ) # ( 
-- !\CPU|somaUm|Add0~1_sumout\ & ( (\CPU|MUX4x2_PC|Equal2~0_combout\ & ((!\CPU|MUX4x2_PC|Equal1~0_combout\ & (\CPU|END_RET|DOUT\(8))) # (\CPU|MUX4x2_PC|Equal1~0_combout\ & ((\ROM1|memROM~17_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010110101110101111111010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX4x2_PC|ALT_INV_Equal2~0_combout\,
	datab => \CPU|MUX4x2_PC|ALT_INV_Equal1~0_combout\,
	datac => \CPU|END_RET|ALT_INV_DOUT\(8),
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	dataf => \CPU|somaUm|ALT_INV_Add0~1_sumout\,
	combout => \CPU|MUX4x2_PC|saida_MUX[8]~0_combout\);

-- Location: FF_X5_Y4_N20
\CPU|PC|DOUT[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUX4x2_PC|saida_MUX[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[8]~DUPLICATE_q\);

-- Location: LABCELL_X7_Y4_N33
\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = ( !\CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT[1]~DUPLICATE_q\ & ((!\CPU|PC|DOUT[3]~DUPLICATE_q\ & (\CPU|PC|DOUT[2]~DUPLICATE_q\ & \CPU|PC|DOUT\(5))) # (\CPU|PC|DOUT[3]~DUPLICATE_q\ & (!\CPU|PC|DOUT[2]~DUPLICATE_q\ & 
-- !\CPU|PC|DOUT\(5))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001000000000010000100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(5),
	datad => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(0),
	combout => \ROM1|memROM~4_combout\);

-- Location: FF_X6_Y4_N14
\CPU|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUX4x2_PC|saida_MUX[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(1));

-- Location: LABCELL_X6_Y4_N0
\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = ( \CPU|PC|DOUT[0]~DUPLICATE_q\ & ( (\CPU|PC|DOUT[5]~DUPLICATE_q\ & !\CPU|PC|DOUT\(2)) ) ) # ( !\CPU|PC|DOUT[0]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1) $ (!\CPU|PC|DOUT[5]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000000000001111000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(2),
	dataf => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \ROM1|memROM~3_combout\);

-- Location: MLABCELL_X9_Y4_N42
\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = ( \ROM1|memROM~4_combout\ & ( \ROM1|memROM~3_combout\ & ( (!\CPU|PC|DOUT[8]~DUPLICATE_q\ & \ROM1|memROM~1_combout\) ) ) ) # ( !\ROM1|memROM~4_combout\ & ( \ROM1|memROM~3_combout\ & ( (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & 
-- (!\CPU|PC|DOUT[8]~DUPLICATE_q\ & \ROM1|memROM~1_combout\)) ) ) ) # ( \ROM1|memROM~4_combout\ & ( !\ROM1|memROM~3_combout\ & ( (!\CPU|PC|DOUT[8]~DUPLICATE_q\ & \ROM1|memROM~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000001000000010000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \ROM1|memROM~5_combout\);

-- Location: LABCELL_X6_Y4_N12
\CPU|MUX4x2_PC|saida_MUX[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX4x2_PC|saida_MUX[1]~2_combout\ = ( \CPU|somaUm|Add0~9_sumout\ & ( (!\CPU|MUX4x2_PC|Equal2~0_combout\) # ((!\CPU|MUX4x2_PC|Equal1~0_combout\ & (\CPU|END_RET|DOUT\(1))) # (\CPU|MUX4x2_PC|Equal1~0_combout\ & ((\ROM1|memROM~5_combout\)))) ) ) # ( 
-- !\CPU|somaUm|Add0~9_sumout\ & ( (\CPU|MUX4x2_PC|Equal2~0_combout\ & ((!\CPU|MUX4x2_PC|Equal1~0_combout\ & (\CPU|END_RET|DOUT\(1))) # (\CPU|MUX4x2_PC|Equal1~0_combout\ & ((\ROM1|memROM~5_combout\))))) ) )

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
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \CPU|somaUm|ALT_INV_Add0~9_sumout\,
	combout => \CPU|MUX4x2_PC|saida_MUX[1]~2_combout\);

-- Location: FF_X6_Y4_N13
\CPU|PC|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUX4x2_PC|saida_MUX[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[1]~DUPLICATE_q\);

-- Location: MLABCELL_X9_Y4_N6
\CPU|somaUm|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|somaUm|Add0~13_sumout\ = SUM(( \CPU|PC|DOUT\(2) ) + ( GND ) + ( \CPU|somaUm|Add0~10\ ))
-- \CPU|somaUm|Add0~14\ = CARRY(( \CPU|PC|DOUT\(2) ) + ( GND ) + ( \CPU|somaUm|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(2),
	cin => \CPU|somaUm|Add0~10\,
	sumout => \CPU|somaUm|Add0~13_sumout\,
	cout => \CPU|somaUm|Add0~14\);

-- Location: FF_X9_Y4_N7
\CPU|END_RET|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|somaUm|Add0~13_sumout\,
	ena => \CPU|Decoder|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RET|DOUT\(2));

-- Location: LABCELL_X7_Y4_N39
\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = ( \CPU|PC|DOUT\(0) & ( (\CPU|PC|DOUT[3]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(5) & \CPU|PC|DOUT[1]~DUPLICATE_q\)) ) ) # ( !\CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & (\CPU|PC|DOUT\(5) & !\CPU|PC|DOUT[1]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(5),
	datad => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(0),
	combout => \ROM1|memROM~6_combout\);

-- Location: LABCELL_X7_Y4_N36
\ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~7_combout\ = ( !\CPU|PC|DOUT\(2) & ( (\ROM1|memROM~6_combout\ & (\ROM1|memROM~1_combout\ & !\CPU|PC|DOUT[8]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(2),
	combout => \ROM1|memROM~7_combout\);

-- Location: LABCELL_X6_Y4_N57
\CPU|MUX4x2_PC|saida_MUX[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX4x2_PC|saida_MUX[2]~3_combout\ = ( \CPU|somaUm|Add0~13_sumout\ & ( (!\CPU|MUX4x2_PC|Equal2~0_combout\) # ((!\CPU|MUX4x2_PC|Equal1~0_combout\ & (\CPU|END_RET|DOUT\(2))) # (\CPU|MUX4x2_PC|Equal1~0_combout\ & ((\ROM1|memROM~7_combout\)))) ) ) # ( 
-- !\CPU|somaUm|Add0~13_sumout\ & ( (\CPU|MUX4x2_PC|Equal2~0_combout\ & ((!\CPU|MUX4x2_PC|Equal1~0_combout\ & (\CPU|END_RET|DOUT\(2))) # (\CPU|MUX4x2_PC|Equal1~0_combout\ & ((\ROM1|memROM~7_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011000001010000001111110101111100111111010111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|END_RET|ALT_INV_DOUT\(2),
	datab => \ROM1|ALT_INV_memROM~7_combout\,
	datac => \CPU|MUX4x2_PC|ALT_INV_Equal2~0_combout\,
	datad => \CPU|MUX4x2_PC|ALT_INV_Equal1~0_combout\,
	dataf => \CPU|somaUm|ALT_INV_Add0~13_sumout\,
	combout => \CPU|MUX4x2_PC|saida_MUX[2]~3_combout\);

-- Location: FF_X6_Y4_N59
\CPU|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUX4x2_PC|saida_MUX[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(2));

-- Location: FF_X9_Y4_N10
\CPU|END_RET|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|somaUm|Add0~21_sumout\,
	ena => \CPU|Decoder|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RET|DOUT\(3));

-- Location: FF_X5_Y4_N19
\CPU|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUX4x2_PC|saida_MUX[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(8));

-- Location: LABCELL_X7_Y4_N51
\ROM1|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~8_combout\ = ( !\CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT[1]~DUPLICATE_q\ & (!\CPU|PC|DOUT[3]~DUPLICATE_q\ $ (!\CPU|PC|DOUT\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101000000000010110100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(5),
	datad => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(0),
	combout => \ROM1|memROM~8_combout\);

-- Location: LABCELL_X6_Y4_N21
\ROM1|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~9_combout\ = ( \ROM1|memROM~8_combout\ & ( (!\CPU|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(8) & \ROM1|memROM~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(8),
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \ROM1|memROM~9_combout\);

-- Location: LABCELL_X6_Y4_N36
\CPU|MUX4x2_PC|saida_MUX[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX4x2_PC|saida_MUX[3]~5_combout\ = ( \CPU|somaUm|Add0~21_sumout\ & ( (!\CPU|MUX4x2_PC|Equal2~0_combout\) # ((!\CPU|MUX4x2_PC|Equal1~0_combout\ & (\CPU|END_RET|DOUT\(3))) # (\CPU|MUX4x2_PC|Equal1~0_combout\ & ((\ROM1|memROM~9_combout\)))) ) ) # ( 
-- !\CPU|somaUm|Add0~21_sumout\ & ( (\CPU|MUX4x2_PC|Equal2~0_combout\ & ((!\CPU|MUX4x2_PC|Equal1~0_combout\ & (\CPU|END_RET|DOUT\(3))) # (\CPU|MUX4x2_PC|Equal1~0_combout\ & ((\ROM1|memROM~9_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011000000100001001111001110110111111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX4x2_PC|ALT_INV_Equal1~0_combout\,
	datab => \CPU|MUX4x2_PC|ALT_INV_Equal2~0_combout\,
	datac => \CPU|END_RET|ALT_INV_DOUT\(3),
	datad => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \CPU|somaUm|ALT_INV_Add0~21_sumout\,
	combout => \CPU|MUX4x2_PC|saida_MUX[3]~5_combout\);

-- Location: FF_X6_Y4_N38
\CPU|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUX4x2_PC|saida_MUX[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(3));

-- Location: LABCELL_X6_Y4_N30
\ROM1|memROM~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~20_combout\ = ( \CPU|PC|DOUT\(1) & ( (!\CPU|PC|DOUT[2]~DUPLICATE_q\ & ((!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT[5]~DUPLICATE_q\ & !\CPU|PC|DOUT\(0))) # (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT[5]~DUPLICATE_q\ & \CPU|PC|DOUT\(0))))) ) ) # ( 
-- !\CPU|PC|DOUT\(1) & ( (!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT[5]~DUPLICATE_q\ & (\CPU|PC|DOUT[2]~DUPLICATE_q\ & \CPU|PC|DOUT\(0)))) # (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT[5]~DUPLICATE_q\ & (!\CPU|PC|DOUT[2]~DUPLICATE_q\ & !\CPU|PC|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000010010000000000001000100000010000000010000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	dataf => \CPU|PC|ALT_INV_DOUT\(1),
	combout => \ROM1|memROM~20_combout\);

-- Location: LABCELL_X6_Y4_N18
\ROM1|memROM~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~24_combout\ = ( \CPU|PC|DOUT\(1) & ( (!\CPU|PC|DOUT[5]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(3) & \CPU|PC|DOUT\(2))) ) ) # ( !\CPU|PC|DOUT\(1) & ( (!\CPU|PC|DOUT[5]~DUPLICATE_q\ & (\CPU|PC|DOUT\(3) & !\CPU|PC|DOUT\(2))) # 
-- (\CPU|PC|DOUT[5]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(3) & \CPU|PC|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000110000000011000011000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \CPU|PC|ALT_INV_DOUT\(2),
	dataf => \CPU|PC|ALT_INV_DOUT\(1),
	combout => \ROM1|memROM~24_combout\);

-- Location: LABCELL_X6_Y4_N33
\ROM1|memROM~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~22_combout\ = ( \CPU|PC|DOUT\(1) & ( (!\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT[5]~DUPLICATE_q\) # (\CPU|PC|DOUT[0]~DUPLICATE_q\))) # (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT[5]~DUPLICATE_q\ & \CPU|PC|DOUT[0]~DUPLICATE_q\)))) ) ) # 
-- ( !\CPU|PC|DOUT\(1) & ( (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT[0]~DUPLICATE_q\) # ((!\CPU|PC|DOUT[5]~DUPLICATE_q\ & !\CPU|PC|DOUT\(2))))) # (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT[5]~DUPLICATE_q\ & (!\CPU|PC|DOUT[0]~DUPLICATE_q\ & !\CPU|PC|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110100010100000111010001010000010001110000000001000111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(2),
	dataf => \CPU|PC|ALT_INV_DOUT\(1),
	combout => \ROM1|memROM~22_combout\);

-- Location: LABCELL_X6_Y4_N24
\ROM1|memROM~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~18_combout\ = ( \CPU|PC|DOUT[5]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1))) # (\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(2)))))) ) ) # ( !\CPU|PC|DOUT[5]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(0) 
-- $ (((!\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(2)))))) # (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110110010100000011011001010000010001010100000001000101010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \CPU|PC|ALT_INV_DOUT\(2),
	dataf => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	combout => \ROM1|memROM~18_combout\);

-- Location: MLABCELL_X9_Y4_N54
\CPU|Decoder|Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Decoder|Equal1~2_combout\ = ( \ROM1|memROM~18_combout\ & ( \ROM1|memROM~10_combout\ & ( (!\ROM1|memROM~20_combout\ & (\ROM1|memROM~24_combout\ & (!\ROM1|memROM~22_combout\ & \CPU|PC|DOUT[0]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~20_combout\,
	datab => \ROM1|ALT_INV_memROM~24_combout\,
	datac => \ROM1|ALT_INV_memROM~22_combout\,
	datad => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datae => \ROM1|ALT_INV_memROM~18_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \CPU|Decoder|Equal1~2_combout\);

-- Location: FF_X9_Y4_N1
\CPU|END_RET|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|somaUm|Add0~5_sumout\,
	ena => \CPU|Decoder|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RET|DOUT\(0));

-- Location: LABCELL_X6_Y4_N39
\CPU|MUX4x2_PC|saida_MUX[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX4x2_PC|saida_MUX[0]~1_combout\ = ( \ROM1|memROM~2_combout\ & ( (!\CPU|MUX4x2_PC|Equal2~0_combout\ & (((\CPU|somaUm|Add0~5_sumout\)))) # (\CPU|MUX4x2_PC|Equal2~0_combout\ & (((\CPU|END_RET|DOUT\(0))) # (\CPU|MUX4x2_PC|Equal1~0_combout\))) ) ) # ( 
-- !\ROM1|memROM~2_combout\ & ( (!\CPU|MUX4x2_PC|Equal2~0_combout\ & (((\CPU|somaUm|Add0~5_sumout\)))) # (\CPU|MUX4x2_PC|Equal2~0_combout\ & (!\CPU|MUX4x2_PC|Equal1~0_combout\ & (\CPU|END_RET|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011001110000000101100111000010011110111110001001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX4x2_PC|ALT_INV_Equal1~0_combout\,
	datab => \CPU|MUX4x2_PC|ALT_INV_Equal2~0_combout\,
	datac => \CPU|END_RET|ALT_INV_DOUT\(0),
	datad => \CPU|somaUm|ALT_INV_Add0~5_sumout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \CPU|MUX4x2_PC|saida_MUX[0]~1_combout\);

-- Location: FF_X6_Y4_N40
\CPU|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUX4x2_PC|saida_MUX[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(0));

-- Location: LABCELL_X7_Y4_N0
\ROM1|memROM~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~32_combout\ = ( !\CPU|PC|DOUT[2]~DUPLICATE_q\ & ( \ROM1|memROM~10_combout\ & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT[1]~DUPLICATE_q\ & (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & \CPU|PC|DOUT\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	datae => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \ROM1|memROM~32_combout\);

-- Location: LABCELL_X5_Y4_N9
\ROM1|memROM~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~23_combout\ = ( \ROM1|memROM~22_combout\ & ( \ROM1|memROM~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~22_combout\,
	combout => \ROM1|memROM~23_combout\);

-- Location: LABCELL_X5_Y4_N21
\ROM1|memROM~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~25_combout\ = ( \ROM1|memROM~24_combout\ & ( (\ROM1|memROM~10_combout\ & \CPU|PC|DOUT\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	dataf => \ROM1|ALT_INV_memROM~24_combout\,
	combout => \ROM1|memROM~25_combout\);

-- Location: LABCELL_X5_Y4_N15
\ROM1|memROM~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~21_combout\ = ( \ROM1|memROM~10_combout\ & ( \ROM1|memROM~20_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~20_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \ROM1|memROM~21_combout\);

-- Location: LABCELL_X5_Y4_N12
\CPU|Decoder|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Decoder|Equal1~0_combout\ = ( !\ROM1|memROM~21_combout\ & ( (\ROM1|memROM~23_combout\ & (!\ROM1|memROM~19_combout\ & !\ROM1|memROM~25_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~23_combout\,
	datac => \ROM1|ALT_INV_memROM~19_combout\,
	datad => \ROM1|ALT_INV_memROM~25_combout\,
	dataf => \ROM1|ALT_INV_memROM~21_combout\,
	combout => \CPU|Decoder|Equal1~0_combout\);

-- Location: LABCELL_X7_Y4_N48
\ROM1|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~15_combout\ = (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & (\ROM1|memROM~13_combout\ & (!\CPU|PC|DOUT[8]~DUPLICATE_q\ & \ROM1|memROM~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \ROM1|ALT_INV_memROM~13_combout\,
	datac => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~15_combout\);

-- Location: LABCELL_X7_Y4_N21
\ROM1|memROM~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~29_combout\ = ( \ROM1|memROM~8_combout\ & ( (!\CPU|PC|DOUT[2]~DUPLICATE_q\ & \ROM1|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \ROM1|memROM~29_combout\);

-- Location: LABCELL_X6_Y4_N54
\ROM1|memROM~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~28_combout\ = ( \ROM1|memROM~6_combout\ & ( (!\CPU|PC|DOUT[2]~DUPLICATE_q\ & \ROM1|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \ROM1|memROM~28_combout\);

-- Location: LABCELL_X6_Y4_N3
\ROM1|memROM~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~27_combout\ = ( \ROM1|memROM~4_combout\ & ( \ROM1|memROM~1_combout\ ) ) # ( !\ROM1|memROM~4_combout\ & ( (\ROM1|memROM~3_combout\ & (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & \ROM1|memROM~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \ROM1|memROM~27_combout\);

-- Location: LABCELL_X7_Y4_N18
\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT[2]~DUPLICATE_q\ & !\CPU|PC|DOUT[3]~DUPLICATE_q\)) ) ) # ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & 
-- !\CPU|PC|DOUT[1]~DUPLICATE_q\))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT[2]~DUPLICATE_q\ & ((\CPU|PC|DOUT[1]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001000100001000000100010010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \ROM1|memROM~0_combout\);

-- Location: LABCELL_X6_Y4_N9
\ROM1|memROM~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~26_combout\ = ( \ROM1|memROM~0_combout\ & ( \ROM1|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \ROM1|memROM~26_combout\);

-- Location: MLABCELL_X4_Y4_N30
\CPU|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~1_sumout\ = SUM(( \CPU|REG1|DOUT\(0) ) + ( (!\CPU|PC|DOUT\(8) & (\CPU|Decoder|Equal1~0_combout\ & \ROM1|memROM~26_combout\)) ) + ( !VCC ))
-- \CPU|ULA1|Add0~2\ = CARRY(( \CPU|REG1|DOUT\(0) ) + ( (!\CPU|PC|DOUT\(8) & (\CPU|Decoder|Equal1~0_combout\ & \ROM1|memROM~26_combout\)) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111011111110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \CPU|Decoder|ALT_INV_Equal1~0_combout\,
	datac => \ROM1|ALT_INV_memROM~26_combout\,
	datad => \CPU|REG1|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \CPU|ULA1|Add0~1_sumout\,
	cout => \CPU|ULA1|Add0~2\);

-- Location: MLABCELL_X4_Y4_N15
\CPU|Decoder|Operacao~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Decoder|Operacao~0_combout\ = ( !\ROM1|memROM~25_combout\ & ( (!\ROM1|memROM~21_combout\ & (!\ROM1|memROM~19_combout\ $ (!\ROM1|memROM~23_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010100000000010101010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~21_combout\,
	datac => \ROM1|ALT_INV_memROM~19_combout\,
	datad => \ROM1|ALT_INV_memROM~23_combout\,
	dataf => \ROM1|ALT_INV_memROM~25_combout\,
	combout => \CPU|Decoder|Operacao~0_combout\);

-- Location: LABCELL_X5_Y4_N30
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

-- Location: LABCELL_X5_Y4_N33
\CPU|ULA1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~1_sumout\ = SUM(( \CPU|REG1|DOUT\(0) ) + ( (!\ROM1|memROM~26_combout\) # ((!\CPU|Decoder|Equal1~0_combout\) # (\CPU|PC|DOUT[8]~DUPLICATE_q\)) ) + ( \CPU|ULA1|Add1~34_cout\ ))
-- \CPU|ULA1|Add1~2\ = CARRY(( \CPU|REG1|DOUT\(0) ) + ( (!\ROM1|memROM~26_combout\) # ((!\CPU|Decoder|Equal1~0_combout\) # (\CPU|PC|DOUT[8]~DUPLICATE_q\)) ) + ( \CPU|ULA1|Add1~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000010000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~26_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \CPU|Decoder|ALT_INV_Equal1~0_combout\,
	datad => \CPU|REG1|ALT_INV_DOUT\(0),
	cin => \CPU|ULA1|Add1~34_cout\,
	sumout => \CPU|ULA1|Add1~1_sumout\,
	cout => \CPU|ULA1|Add1~2\);

-- Location: MLABCELL_X4_Y4_N3
\CPU|ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[0]~0_combout\ = ( \CPU|ULA1|Add1~1_sumout\ & ( (!\CPU|Decoder|Operacao~0_combout\) # ((\CPU|Decoder|Equal1~0_combout\ & \ROM1|memROM~2_combout\)) ) ) # ( !\CPU|ULA1|Add1~1_sumout\ & ( (\CPU|Decoder|Equal1~0_combout\ & 
-- (\CPU|Decoder|Operacao~0_combout\ & \ROM1|memROM~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000111001101110011011100110111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_Equal1~0_combout\,
	datab => \CPU|Decoder|ALT_INV_Operacao~0_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~1_sumout\,
	combout => \CPU|ULA1|saida[0]~0_combout\);

-- Location: MLABCELL_X4_Y4_N24
\CPU|ULA1|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Equal1~0_combout\ = ( \ROM1|memROM~21_combout\ & ( (((\ROM1|memROM~23_combout\) # (\ROM1|memROM~19_combout\)) # (\CPU|Decoder|Operacao~0_combout\)) # (\ROM1|memROM~25_combout\) ) ) # ( !\ROM1|memROM~21_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~25_combout\,
	datab => \CPU|Decoder|ALT_INV_Operacao~0_combout\,
	datac => \ROM1|ALT_INV_memROM~19_combout\,
	datad => \ROM1|ALT_INV_memROM~23_combout\,
	dataf => \ROM1|ALT_INV_memROM~21_combout\,
	combout => \CPU|ULA1|Equal1~0_combout\);

-- Location: MLABCELL_X4_Y4_N57
\CPU|Decoder|Habilita_A~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Decoder|Habilita_A~0_combout\ = ( !\ROM1|memROM~25_combout\ & ( (!\ROM1|memROM~23_combout\ & ((\ROM1|memROM~19_combout\) # (\ROM1|memROM~21_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100000000010111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~21_combout\,
	datac => \ROM1|ALT_INV_memROM~19_combout\,
	datad => \ROM1|ALT_INV_memROM~23_combout\,
	dataf => \ROM1|ALT_INV_memROM~25_combout\,
	combout => \CPU|Decoder|Habilita_A~0_combout\);

-- Location: MLABCELL_X4_Y4_N6
\CPU|Decoder|OUTPUT[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Decoder|OUTPUT\(5) = ( \CPU|Decoder|Equal1~0_combout\ ) # ( !\CPU|Decoder|Equal1~0_combout\ & ( \CPU|Decoder|Habilita_A~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|Decoder|ALT_INV_Habilita_A~0_combout\,
	dataf => \CPU|Decoder|ALT_INV_Equal1~0_combout\,
	combout => \CPU|Decoder|OUTPUT\(5));

-- Location: FF_X4_Y4_N31
\CPU|REG1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~1_sumout\,
	asdata => \CPU|ULA1|saida[0]~0_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|Decoder|OUTPUT\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(0));

-- Location: MLABCELL_X4_Y4_N33
\CPU|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~5_sumout\ = SUM(( \CPU|REG1|DOUT\(1) ) + ( (!\CPU|PC|DOUT\(8) & (\CPU|Decoder|Equal1~0_combout\ & \ROM1|memROM~27_combout\)) ) + ( \CPU|ULA1|Add0~2\ ))
-- \CPU|ULA1|Add0~6\ = CARRY(( \CPU|REG1|DOUT\(1) ) + ( (!\CPU|PC|DOUT\(8) & (\CPU|Decoder|Equal1~0_combout\ & \ROM1|memROM~27_combout\)) ) + ( \CPU|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111011111110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \CPU|Decoder|ALT_INV_Equal1~0_combout\,
	datac => \ROM1|ALT_INV_memROM~27_combout\,
	datad => \CPU|REG1|ALT_INV_DOUT\(1),
	cin => \CPU|ULA1|Add0~2\,
	sumout => \CPU|ULA1|Add0~5_sumout\,
	cout => \CPU|ULA1|Add0~6\);

-- Location: LABCELL_X5_Y4_N36
\CPU|ULA1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~5_sumout\ = SUM(( \CPU|REG1|DOUT\(1) ) + ( ((!\CPU|Decoder|Equal1~0_combout\) # (!\ROM1|memROM~27_combout\)) # (\CPU|PC|DOUT[8]~DUPLICATE_q\) ) + ( \CPU|ULA1|Add1~2\ ))
-- \CPU|ULA1|Add1~6\ = CARRY(( \CPU|REG1|DOUT\(1) ) + ( ((!\CPU|Decoder|Equal1~0_combout\) # (!\ROM1|memROM~27_combout\)) # (\CPU|PC|DOUT[8]~DUPLICATE_q\) ) + ( \CPU|ULA1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datab => \CPU|Decoder|ALT_INV_Equal1~0_combout\,
	datac => \ROM1|ALT_INV_memROM~27_combout\,
	datad => \CPU|REG1|ALT_INV_DOUT\(1),
	cin => \CPU|ULA1|Add1~2\,
	sumout => \CPU|ULA1|Add1~5_sumout\,
	cout => \CPU|ULA1|Add1~6\);

-- Location: MLABCELL_X4_Y4_N18
\CPU|ULA1|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[1]~1_combout\ = ( \CPU|ULA1|Add1~5_sumout\ & ( !\CPU|Decoder|Operacao~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|Decoder|ALT_INV_Operacao~0_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~5_sumout\,
	combout => \CPU|ULA1|saida[1]~1_combout\);

-- Location: FF_X4_Y4_N34
\CPU|REG1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~5_sumout\,
	asdata => \CPU|ULA1|saida[1]~1_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|Decoder|OUTPUT\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(1));

-- Location: MLABCELL_X4_Y4_N36
\CPU|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~9_sumout\ = SUM(( \CPU|REG1|DOUT\(2) ) + ( (!\CPU|PC|DOUT\(8) & (\CPU|Decoder|Equal1~0_combout\ & \ROM1|memROM~28_combout\)) ) + ( \CPU|ULA1|Add0~6\ ))
-- \CPU|ULA1|Add0~10\ = CARRY(( \CPU|REG1|DOUT\(2) ) + ( (!\CPU|PC|DOUT\(8) & (\CPU|Decoder|Equal1~0_combout\ & \ROM1|memROM~28_combout\)) ) + ( \CPU|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111011111110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \CPU|Decoder|ALT_INV_Equal1~0_combout\,
	datac => \ROM1|ALT_INV_memROM~28_combout\,
	datad => \CPU|REG1|ALT_INV_DOUT\(2),
	cin => \CPU|ULA1|Add0~6\,
	sumout => \CPU|ULA1|Add0~9_sumout\,
	cout => \CPU|ULA1|Add0~10\);

-- Location: LABCELL_X5_Y4_N39
\CPU|ULA1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~9_sumout\ = SUM(( ((!\CPU|Decoder|Equal1~0_combout\) # (!\ROM1|memROM~28_combout\)) # (\CPU|PC|DOUT[8]~DUPLICATE_q\) ) + ( \CPU|REG1|DOUT\(2) ) + ( \CPU|ULA1|Add1~6\ ))
-- \CPU|ULA1|Add1~10\ = CARRY(( ((!\CPU|Decoder|Equal1~0_combout\) # (!\ROM1|memROM~28_combout\)) # (\CPU|PC|DOUT[8]~DUPLICATE_q\) ) + ( \CPU|REG1|DOUT\(2) ) + ( \CPU|ULA1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datab => \CPU|Decoder|ALT_INV_Equal1~0_combout\,
	datac => \ROM1|ALT_INV_memROM~28_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(2),
	cin => \CPU|ULA1|Add1~6\,
	sumout => \CPU|ULA1|Add1~9_sumout\,
	cout => \CPU|ULA1|Add1~10\);

-- Location: MLABCELL_X4_Y4_N21
\CPU|ULA1|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[2]~2_combout\ = ( \CPU|ULA1|Add1~9_sumout\ & ( (!\CPU|Decoder|Operacao~0_combout\) # ((\ROM1|memROM~7_combout\ & \CPU|Decoder|Equal1~0_combout\)) ) ) # ( !\CPU|ULA1|Add1~9_sumout\ & ( (\CPU|Decoder|Operacao~0_combout\ & 
-- (\ROM1|memROM~7_combout\ & \CPU|Decoder|Equal1~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001111001100110011111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|Decoder|ALT_INV_Operacao~0_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \CPU|Decoder|ALT_INV_Equal1~0_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~9_sumout\,
	combout => \CPU|ULA1|saida[2]~2_combout\);

-- Location: FF_X4_Y4_N37
\CPU|REG1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~9_sumout\,
	asdata => \CPU|ULA1|saida[2]~2_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|Decoder|OUTPUT\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(2));

-- Location: MLABCELL_X4_Y4_N39
\CPU|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~13_sumout\ = SUM(( \CPU|REG1|DOUT\(3) ) + ( (!\CPU|PC|DOUT\(8) & (\CPU|Decoder|Equal1~0_combout\ & \ROM1|memROM~29_combout\)) ) + ( \CPU|ULA1|Add0~10\ ))
-- \CPU|ULA1|Add0~14\ = CARRY(( \CPU|REG1|DOUT\(3) ) + ( (!\CPU|PC|DOUT\(8) & (\CPU|Decoder|Equal1~0_combout\ & \ROM1|memROM~29_combout\)) ) + ( \CPU|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111011111110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \CPU|Decoder|ALT_INV_Equal1~0_combout\,
	datac => \ROM1|ALT_INV_memROM~29_combout\,
	datad => \CPU|REG1|ALT_INV_DOUT\(3),
	cin => \CPU|ULA1|Add0~10\,
	sumout => \CPU|ULA1|Add0~13_sumout\,
	cout => \CPU|ULA1|Add0~14\);

-- Location: LABCELL_X5_Y4_N42
\CPU|ULA1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~13_sumout\ = SUM(( (!\CPU|Decoder|Equal1~0_combout\) # (!\ROM1|memROM~9_combout\) ) + ( \CPU|REG1|DOUT\(3) ) + ( \CPU|ULA1|Add1~10\ ))
-- \CPU|ULA1|Add1~14\ = CARRY(( (!\CPU|Decoder|Equal1~0_combout\) # (!\ROM1|memROM~9_combout\) ) + ( \CPU|REG1|DOUT\(3) ) + ( \CPU|ULA1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|Decoder|ALT_INV_Equal1~0_combout\,
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(3),
	cin => \CPU|ULA1|Add1~10\,
	sumout => \CPU|ULA1|Add1~13_sumout\,
	cout => \CPU|ULA1|Add1~14\);

-- Location: MLABCELL_X4_Y4_N12
\CPU|ULA1|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[3]~3_combout\ = ( \CPU|ULA1|Add1~13_sumout\ & ( (!\CPU|Decoder|Operacao~0_combout\) # ((\ROM1|memROM~9_combout\ & \CPU|Decoder|Equal1~0_combout\)) ) ) # ( !\CPU|ULA1|Add1~13_sumout\ & ( (\CPU|Decoder|Operacao~0_combout\ & 
-- (\ROM1|memROM~9_combout\ & \CPU|Decoder|Equal1~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001111001100110011111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|Decoder|ALT_INV_Operacao~0_combout\,
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \CPU|Decoder|ALT_INV_Equal1~0_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~13_sumout\,
	combout => \CPU|ULA1|saida[3]~3_combout\);

-- Location: FF_X4_Y4_N41
\CPU|REG1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~13_sumout\,
	asdata => \CPU|ULA1|saida[3]~3_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|Decoder|OUTPUT\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(3));

-- Location: MLABCELL_X4_Y4_N42
\CPU|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~17_sumout\ = SUM(( \CPU|REG1|DOUT\(4) ) + ( (\CPU|Decoder|Equal1~0_combout\ & \ROM1|memROM~32_combout\) ) + ( \CPU|ULA1|Add0~14\ ))
-- \CPU|ULA1|Add0~18\ = CARRY(( \CPU|REG1|DOUT\(4) ) + ( (\CPU|Decoder|Equal1~0_combout\ & \ROM1|memROM~32_combout\) ) + ( \CPU|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111001111110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|Decoder|ALT_INV_Equal1~0_combout\,
	datac => \ROM1|ALT_INV_memROM~32_combout\,
	datad => \CPU|REG1|ALT_INV_DOUT\(4),
	cin => \CPU|ULA1|Add0~14\,
	sumout => \CPU|ULA1|Add0~17_sumout\,
	cout => \CPU|ULA1|Add0~18\);

-- Location: LABCELL_X5_Y4_N45
\CPU|ULA1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~17_sumout\ = SUM(( \CPU|REG1|DOUT\(4) ) + ( (!\CPU|Decoder|Equal1~0_combout\) # (!\ROM1|memROM~32_combout\) ) + ( \CPU|ULA1|Add1~14\ ))
-- \CPU|ULA1|Add1~18\ = CARRY(( \CPU|REG1|DOUT\(4) ) + ( (!\CPU|Decoder|Equal1~0_combout\) # (!\ROM1|memROM~32_combout\) ) + ( \CPU|ULA1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|Decoder|ALT_INV_Equal1~0_combout\,
	datac => \ROM1|ALT_INV_memROM~32_combout\,
	datad => \CPU|REG1|ALT_INV_DOUT\(4),
	cin => \CPU|ULA1|Add1~14\,
	sumout => \CPU|ULA1|Add1~17_sumout\,
	cout => \CPU|ULA1|Add1~18\);

-- Location: MLABCELL_X4_Y4_N27
\CPU|ULA1|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[4]~4_combout\ = ( \CPU|ULA1|Add1~17_sumout\ & ( !\CPU|Decoder|Operacao~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|Decoder|ALT_INV_Operacao~0_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~17_sumout\,
	combout => \CPU|ULA1|saida[4]~4_combout\);

-- Location: FF_X4_Y4_N43
\CPU|REG1|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~17_sumout\,
	asdata => \CPU|ULA1|saida[4]~4_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|Decoder|OUTPUT\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(4));

-- Location: MLABCELL_X4_Y4_N45
\CPU|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~21_sumout\ = SUM(( \CPU|REG1|DOUT\(5) ) + ( (\CPU|Decoder|Equal1~0_combout\ & \ROM1|memROM~14_combout\) ) + ( \CPU|ULA1|Add0~18\ ))
-- \CPU|ULA1|Add0~22\ = CARRY(( \CPU|REG1|DOUT\(5) ) + ( (\CPU|Decoder|Equal1~0_combout\ & \ROM1|memROM~14_combout\) ) + ( \CPU|ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111001111110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|Decoder|ALT_INV_Equal1~0_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \CPU|REG1|ALT_INV_DOUT\(5),
	cin => \CPU|ULA1|Add0~18\,
	sumout => \CPU|ULA1|Add0~21_sumout\,
	cout => \CPU|ULA1|Add0~22\);

-- Location: LABCELL_X6_Y4_N6
\ROM1|memROM~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~30_combout\ = ( \ROM1|memROM~11_combout\ & ( (\ROM1|memROM~1_combout\ & ((!\CPU|PC|DOUT[3]~DUPLICATE_q\ & (\ROM1|memROM~13_combout\)) # (\CPU|PC|DOUT[3]~DUPLICATE_q\ & ((\ROM1|memROM~12_combout\))))) ) ) # ( !\ROM1|memROM~11_combout\ & ( 
-- (\ROM1|memROM~1_combout\ & (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & \ROM1|memROM~13_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000101010000010000010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \ROM1|ALT_INV_memROM~13_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \ROM1|memROM~30_combout\);

-- Location: LABCELL_X5_Y4_N48
\CPU|ULA1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~21_sumout\ = SUM(( ((!\CPU|Decoder|Equal1~0_combout\) # (!\ROM1|memROM~30_combout\)) # (\CPU|PC|DOUT[8]~DUPLICATE_q\) ) + ( \CPU|REG1|DOUT\(5) ) + ( \CPU|ULA1|Add1~18\ ))
-- \CPU|ULA1|Add1~22\ = CARRY(( ((!\CPU|Decoder|Equal1~0_combout\) # (!\ROM1|memROM~30_combout\)) # (\CPU|PC|DOUT[8]~DUPLICATE_q\) ) + ( \CPU|REG1|DOUT\(5) ) + ( \CPU|ULA1|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datab => \CPU|Decoder|ALT_INV_Equal1~0_combout\,
	datac => \ROM1|ALT_INV_memROM~30_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(5),
	cin => \CPU|ULA1|Add1~18\,
	sumout => \CPU|ULA1|Add1~21_sumout\,
	cout => \CPU|ULA1|Add1~22\);

-- Location: MLABCELL_X4_Y4_N9
\CPU|ULA1|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[5]~5_combout\ = ( \CPU|ULA1|Add1~21_sumout\ & ( !\CPU|Decoder|Operacao~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|Decoder|ALT_INV_Operacao~0_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~21_sumout\,
	combout => \CPU|ULA1|saida[5]~5_combout\);

-- Location: FF_X4_Y4_N46
\CPU|REG1|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~21_sumout\,
	asdata => \CPU|ULA1|saida[5]~5_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|Decoder|OUTPUT\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(5));

-- Location: MLABCELL_X4_Y4_N48
\CPU|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~25_sumout\ = SUM(( \CPU|REG1|DOUT\(6) ) + ( (\CPU|Decoder|Equal1~0_combout\ & \ROM1|memROM~15_combout\) ) + ( \CPU|ULA1|Add0~22\ ))
-- \CPU|ULA1|Add0~26\ = CARRY(( \CPU|REG1|DOUT\(6) ) + ( (\CPU|Decoder|Equal1~0_combout\ & \ROM1|memROM~15_combout\) ) + ( \CPU|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111001111110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|Decoder|ALT_INV_Equal1~0_combout\,
	datac => \ROM1|ALT_INV_memROM~15_combout\,
	datad => \CPU|REG1|ALT_INV_DOUT\(6),
	cin => \CPU|ULA1|Add0~22\,
	sumout => \CPU|ULA1|Add0~25_sumout\,
	cout => \CPU|ULA1|Add0~26\);

-- Location: LABCELL_X7_Y4_N6
\ROM1|memROM~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~31_combout\ = ( \ROM1|memROM~13_combout\ & ( (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & \ROM1|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \ROM1|memROM~31_combout\);

-- Location: LABCELL_X5_Y4_N51
\CPU|ULA1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~25_sumout\ = SUM(( \CPU|REG1|DOUT\(6) ) + ( ((!\CPU|Decoder|Equal1~0_combout\) # (!\ROM1|memROM~31_combout\)) # (\CPU|PC|DOUT[8]~DUPLICATE_q\) ) + ( \CPU|ULA1|Add1~22\ ))
-- \CPU|ULA1|Add1~26\ = CARRY(( \CPU|REG1|DOUT\(6) ) + ( ((!\CPU|Decoder|Equal1~0_combout\) # (!\ROM1|memROM~31_combout\)) # (\CPU|PC|DOUT[8]~DUPLICATE_q\) ) + ( \CPU|ULA1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datab => \CPU|Decoder|ALT_INV_Equal1~0_combout\,
	datac => \ROM1|ALT_INV_memROM~31_combout\,
	datad => \CPU|REG1|ALT_INV_DOUT\(6),
	cin => \CPU|ULA1|Add1~22\,
	sumout => \CPU|ULA1|Add1~25_sumout\,
	cout => \CPU|ULA1|Add1~26\);

-- Location: MLABCELL_X4_Y4_N0
\CPU|ULA1|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[6]~6_combout\ = ( \CPU|ULA1|Add1~25_sumout\ & ( (!\CPU|Decoder|Operacao~0_combout\) # ((\CPU|Decoder|Equal1~0_combout\ & \ROM1|memROM~15_combout\)) ) ) # ( !\CPU|ULA1|Add1~25_sumout\ & ( (\CPU|Decoder|Equal1~0_combout\ & 
-- (\CPU|Decoder|Operacao~0_combout\ & \ROM1|memROM~15_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000111001101110011011100110111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_Equal1~0_combout\,
	datab => \CPU|Decoder|ALT_INV_Operacao~0_combout\,
	datac => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~25_sumout\,
	combout => \CPU|ULA1|saida[6]~6_combout\);

-- Location: FF_X4_Y4_N49
\CPU|REG1|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~25_sumout\,
	asdata => \CPU|ULA1|saida[6]~6_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|Decoder|OUTPUT\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(6));

-- Location: MLABCELL_X4_Y4_N51
\CPU|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~29_sumout\ = SUM(( \CPU|REG1|DOUT\(7) ) + ( (\ROM1|memROM~32_combout\ & \CPU|Decoder|Equal1~0_combout\) ) + ( \CPU|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110101111101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~32_combout\,
	datac => \CPU|Decoder|ALT_INV_Equal1~0_combout\,
	datad => \CPU|REG1|ALT_INV_DOUT\(7),
	cin => \CPU|ULA1|Add0~26\,
	sumout => \CPU|ULA1|Add0~29_sumout\);

-- Location: MLABCELL_X4_Y4_N54
\CPU|ULA1|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[7]~7_combout\ = ( \CPU|ULA1|Add1~29_sumout\ & ( !\CPU|Decoder|Operacao~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|Decoder|ALT_INV_Operacao~0_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~29_sumout\,
	combout => \CPU|ULA1|saida[7]~7_combout\);

-- Location: FF_X4_Y4_N52
\CPU|REG1|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~29_sumout\,
	asdata => \CPU|ULA1|saida[7]~7_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|Decoder|OUTPUT\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(7));

-- Location: LABCELL_X5_Y4_N54
\CPU|ULA1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~29_sumout\ = SUM(( (!\CPU|Decoder|Equal1~0_combout\) # (!\ROM1|memROM~32_combout\) ) + ( \CPU|REG1|DOUT\(7) ) + ( \CPU|ULA1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REG1|ALT_INV_DOUT\(7),
	datab => \CPU|Decoder|ALT_INV_Equal1~0_combout\,
	datac => \ROM1|ALT_INV_memROM~32_combout\,
	cin => \CPU|ULA1|Add1~26\,
	sumout => \CPU|ULA1|Add1~29_sumout\);

-- Location: LABCELL_X7_Y4_N12
\CPU|Decoder|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Decoder|Equal1~1_combout\ = ( !\ROM1|memROM~18_combout\ & ( \ROM1|memROM~24_combout\ & ( (!\ROM1|memROM~22_combout\ & (\CPU|PC|DOUT[0]~DUPLICATE_q\ & (\ROM1|memROM~10_combout\ & !\ROM1|memROM~20_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~22_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~20_combout\,
	datae => \ROM1|ALT_INV_memROM~18_combout\,
	dataf => \ROM1|ALT_INV_memROM~24_combout\,
	combout => \CPU|Decoder|Equal1~1_combout\);

-- Location: LABCELL_X6_Y4_N42
\CPU|FLAG_IGUAL|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLAG_IGUAL|DOUT~0_combout\ = ( !\CPU|ULA1|Add1~13_sumout\ & ( !\CPU|ULA1|Add1~17_sumout\ & ( (!\CPU|ULA1|Add1~9_sumout\ & (\CPU|Decoder|Equal1~1_combout\ & (!\CPU|ULA1|Add1~5_sumout\ & !\CPU|ULA1|Add1~1_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Add1~9_sumout\,
	datab => \CPU|Decoder|ALT_INV_Equal1~1_combout\,
	datac => \CPU|ULA1|ALT_INV_Add1~5_sumout\,
	datad => \CPU|ULA1|ALT_INV_Add1~1_sumout\,
	datae => \CPU|ULA1|ALT_INV_Add1~13_sumout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~17_sumout\,
	combout => \CPU|FLAG_IGUAL|DOUT~0_combout\);

-- Location: LABCELL_X6_Y4_N48
\CPU|FLAG_IGUAL|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLAG_IGUAL|DOUT~1_combout\ = ( \CPU|FLAG_IGUAL|DOUT~q\ & ( \CPU|FLAG_IGUAL|DOUT~0_combout\ & ( (!\CPU|Decoder|Equal1~1_combout\) # ((!\CPU|ULA1|Add1~29_sumout\ & (!\CPU|ULA1|Add1~21_sumout\ & !\CPU|ULA1|Add1~25_sumout\))) ) ) ) # ( 
-- !\CPU|FLAG_IGUAL|DOUT~q\ & ( \CPU|FLAG_IGUAL|DOUT~0_combout\ & ( (!\CPU|ULA1|Add1~29_sumout\ & (!\CPU|ULA1|Add1~21_sumout\ & !\CPU|ULA1|Add1~25_sumout\)) ) ) ) # ( \CPU|FLAG_IGUAL|DOUT~q\ & ( !\CPU|FLAG_IGUAL|DOUT~0_combout\ & ( 
-- !\CPU|Decoder|Equal1~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000010000000100000001111111110000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Add1~29_sumout\,
	datab => \CPU|ULA1|ALT_INV_Add1~21_sumout\,
	datac => \CPU|ULA1|ALT_INV_Add1~25_sumout\,
	datad => \CPU|Decoder|ALT_INV_Equal1~1_combout\,
	datae => \CPU|FLAG_IGUAL|ALT_INV_DOUT~q\,
	dataf => \CPU|FLAG_IGUAL|ALT_INV_DOUT~0_combout\,
	combout => \CPU|FLAG_IGUAL|DOUT~1_combout\);

-- Location: FF_X6_Y4_N49
\CPU|FLAG_IGUAL|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|FLAG_IGUAL|DOUT~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FLAG_IGUAL|DOUT~q\);

-- Location: LABCELL_X7_Y4_N9
\CPU|MUX4x2_PC|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX4x2_PC|Equal1~0_combout\ = ( \ROM1|memROM~21_combout\ & ( (\ROM1|memROM~23_combout\ & (!\ROM1|memROM~25_combout\ & ((!\ROM1|memROM~19_combout\) # (\CPU|FLAG_IGUAL|DOUT~q\)))) ) ) # ( !\ROM1|memROM~21_combout\ & ( (\ROM1|memROM~19_combout\ & 
-- (!\ROM1|memROM~23_combout\ & \ROM1|memROM~25_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000001011000000000000101100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~19_combout\,
	datab => \CPU|FLAG_IGUAL|ALT_INV_DOUT~q\,
	datac => \ROM1|ALT_INV_memROM~23_combout\,
	datad => \ROM1|ALT_INV_memROM~25_combout\,
	dataf => \ROM1|ALT_INV_memROM~21_combout\,
	combout => \CPU|MUX4x2_PC|Equal1~0_combout\);

-- Location: MLABCELL_X9_Y4_N18
\CPU|somaUm|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|somaUm|Add0~29_sumout\ = SUM(( \CPU|PC|DOUT[6]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|somaUm|Add0~18\ ))
-- \CPU|somaUm|Add0~30\ = CARRY(( \CPU|PC|DOUT[6]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|somaUm|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	cin => \CPU|somaUm|Add0~18\,
	sumout => \CPU|somaUm|Add0~29_sumout\,
	cout => \CPU|somaUm|Add0~30\);

-- Location: FF_X9_Y4_N19
\CPU|END_RET|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|somaUm|Add0~29_sumout\,
	ena => \CPU|Decoder|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RET|DOUT\(6));

-- Location: LABCELL_X5_Y4_N0
\CPU|MUX4x2_PC|saida_MUX[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX4x2_PC|saida_MUX[6]~7_combout\ = ( \CPU|somaUm|Add0~29_sumout\ & ( (!\CPU|MUX4x2_PC|Equal2~0_combout\) # ((!\CPU|MUX4x2_PC|Equal1~0_combout\ & (\CPU|END_RET|DOUT\(6))) # (\CPU|MUX4x2_PC|Equal1~0_combout\ & ((\ROM1|memROM~15_combout\)))) ) ) # ( 
-- !\CPU|somaUm|Add0~29_sumout\ & ( (\CPU|MUX4x2_PC|Equal2~0_combout\ & ((!\CPU|MUX4x2_PC|Equal1~0_combout\ & (\CPU|END_RET|DOUT\(6))) # (\CPU|MUX4x2_PC|Equal1~0_combout\ & ((\ROM1|memROM~15_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010110101110101111111010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX4x2_PC|ALT_INV_Equal2~0_combout\,
	datab => \CPU|MUX4x2_PC|ALT_INV_Equal1~0_combout\,
	datac => \CPU|END_RET|ALT_INV_DOUT\(6),
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \CPU|somaUm|ALT_INV_Add0~29_sumout\,
	combout => \CPU|MUX4x2_PC|saida_MUX[6]~7_combout\);

-- Location: FF_X5_Y4_N2
\CPU|PC|DOUT[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUX4x2_PC|saida_MUX[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[6]~DUPLICATE_q\);

-- Location: FF_X9_Y4_N22
\CPU|END_RET|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|somaUm|Add0~33_sumout\,
	ena => \CPU|Decoder|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RET|DOUT\(7));

-- Location: LABCELL_X5_Y4_N24
\CPU|MUX4x2_PC|saida_MUX[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX4x2_PC|saida_MUX[7]~8_combout\ = ( \CPU|somaUm|Add0~33_sumout\ & ( (!\CPU|MUX4x2_PC|Equal2~0_combout\) # ((!\CPU|MUX4x2_PC|Equal1~0_combout\ & (\CPU|END_RET|DOUT\(7))) # (\CPU|MUX4x2_PC|Equal1~0_combout\ & ((\ROM1|memROM~32_combout\)))) ) ) # ( 
-- !\CPU|somaUm|Add0~33_sumout\ & ( (\CPU|MUX4x2_PC|Equal2~0_combout\ & ((!\CPU|MUX4x2_PC|Equal1~0_combout\ & (\CPU|END_RET|DOUT\(7))) # (\CPU|MUX4x2_PC|Equal1~0_combout\ & ((\ROM1|memROM~32_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000111000001000000011111110100111101111111010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|END_RET|ALT_INV_DOUT\(7),
	datab => \CPU|MUX4x2_PC|ALT_INV_Equal1~0_combout\,
	datac => \CPU|MUX4x2_PC|ALT_INV_Equal2~0_combout\,
	datad => \ROM1|ALT_INV_memROM~32_combout\,
	dataf => \CPU|somaUm|ALT_INV_Add0~33_sumout\,
	combout => \CPU|MUX4x2_PC|saida_MUX[7]~8_combout\);

-- Location: FF_X5_Y4_N26
\CPU|PC|DOUT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUX4x2_PC|saida_MUX[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[7]~DUPLICATE_q\);

-- Location: FF_X5_Y4_N5
\CPU|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUX4x2_PC|saida_MUX[4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(4));

-- Location: LABCELL_X5_Y4_N6
\ROM1|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~10_combout\ = ( !\CPU|PC|DOUT[8]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT[7]~DUPLICATE_q\ & (!\CPU|PC|DOUT[6]~DUPLICATE_q\ & !\CPU|PC|DOUT\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	combout => \ROM1|memROM~10_combout\);

-- Location: LABCELL_X5_Y4_N27
\ROM1|memROM~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~19_combout\ = ( \ROM1|memROM~18_combout\ & ( \ROM1|memROM~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~18_combout\,
	combout => \ROM1|memROM~19_combout\);

-- Location: LABCELL_X7_Y4_N57
\CPU|MUX4x2_PC|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX4x2_PC|Equal2~0_combout\ = ( \ROM1|memROM~21_combout\ & ( (!\ROM1|memROM~19_combout\ & ((!\ROM1|memROM~23_combout\ $ (!\ROM1|memROM~25_combout\)))) # (\ROM1|memROM~19_combout\ & (\CPU|FLAG_IGUAL|DOUT~q\ & (\ROM1|memROM~23_combout\ & 
-- !\ROM1|memROM~25_combout\))) ) ) # ( !\ROM1|memROM~21_combout\ & ( (\ROM1|memROM~19_combout\ & (!\ROM1|memROM~23_combout\ & \ROM1|memROM~25_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000001011101000000000101110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~19_combout\,
	datab => \CPU|FLAG_IGUAL|ALT_INV_DOUT~q\,
	datac => \ROM1|ALT_INV_memROM~23_combout\,
	datad => \ROM1|ALT_INV_memROM~25_combout\,
	dataf => \ROM1|ALT_INV_memROM~21_combout\,
	combout => \CPU|MUX4x2_PC|Equal2~0_combout\);

-- Location: FF_X9_Y4_N14
\CPU|END_RET|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|somaUm|Add0~25_sumout\,
	ena => \CPU|Decoder|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RET|DOUT\(4));

-- Location: LABCELL_X5_Y4_N3
\CPU|MUX4x2_PC|saida_MUX[4]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX4x2_PC|saida_MUX[4]~6_combout\ = ( \CPU|somaUm|Add0~25_sumout\ & ( (!\CPU|MUX4x2_PC|Equal2~0_combout\) # ((!\CPU|MUX4x2_PC|Equal1~0_combout\ & ((\CPU|END_RET|DOUT\(4)))) # (\CPU|MUX4x2_PC|Equal1~0_combout\ & (\ROM1|memROM~32_combout\))) ) ) # ( 
-- !\CPU|somaUm|Add0~25_sumout\ & ( (\CPU|MUX4x2_PC|Equal2~0_combout\ & ((!\CPU|MUX4x2_PC|Equal1~0_combout\ & ((\CPU|END_RET|DOUT\(4)))) # (\CPU|MUX4x2_PC|Equal1~0_combout\ & (\ROM1|memROM~32_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010110101011111011111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX4x2_PC|ALT_INV_Equal2~0_combout\,
	datab => \CPU|MUX4x2_PC|ALT_INV_Equal1~0_combout\,
	datac => \ROM1|ALT_INV_memROM~32_combout\,
	datad => \CPU|END_RET|ALT_INV_DOUT\(4),
	dataf => \CPU|somaUm|ALT_INV_Add0~25_sumout\,
	combout => \CPU|MUX4x2_PC|saida_MUX[4]~6_combout\);

-- Location: FF_X5_Y4_N4
\CPU|PC|DOUT[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUX4x2_PC|saida_MUX[4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[4]~DUPLICATE_q\);

-- Location: FF_X5_Y4_N25
\CPU|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUX4x2_PC|saida_MUX[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(7));

-- Location: FF_X5_Y4_N1
\CPU|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUX4x2_PC|saida_MUX[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(6));

-- Location: LABCELL_X6_Y4_N27
\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = ( !\CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT[4]~DUPLICATE_q\ & !\CPU|PC|DOUT\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	dataf => \CPU|PC|ALT_INV_DOUT\(6),
	combout => \ROM1|memROM~1_combout\);

-- Location: LABCELL_X7_Y4_N30
\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = ( \ROM1|memROM~0_combout\ & ( (\ROM1|memROM~1_combout\ & !\CPU|PC|DOUT[8]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \ROM1|memROM~2_combout\);

-- Location: FF_X4_Y4_N40
\CPU|REG1|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~13_sumout\,
	asdata => \CPU|ULA1|saida[3]~3_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|Decoder|OUTPUT\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT[3]~DUPLICATE_q\);

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

-- Location: IOIBUF_X0_Y21_N4
\FPGA_RESET~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_RESET,
	o => \FPGA_RESET~input_o\);

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

-- Location: LABCELL_X17_Y13_N0
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


