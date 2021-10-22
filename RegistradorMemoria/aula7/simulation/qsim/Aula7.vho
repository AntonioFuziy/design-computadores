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

-- DATE "09/22/2021 16:00:25"

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

ENTITY 	Aula7 IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	LEDR : OUT std_logic_vector(7 DOWNTO 0);
	LEDR8 : OUT std_logic;
	LEDR9 : OUT std_logic;
	saida_ROM : OUT std_logic_vector(12 DOWNTO 0);
	saida_RAM : OUT std_logic_vector(7 DOWNTO 0);
	Teste_Endereco : OUT std_logic_vector(8 DOWNTO 0)
	);
END Aula7;

ARCHITECTURE structure OF Aula7 IS
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
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR8~output_o\ : std_logic;
SIGNAL \LEDR9~output_o\ : std_logic;
SIGNAL \saida_ROM[0]~output_o\ : std_logic;
SIGNAL \saida_ROM[1]~output_o\ : std_logic;
SIGNAL \saida_ROM[2]~output_o\ : std_logic;
SIGNAL \saida_ROM[3]~output_o\ : std_logic;
SIGNAL \saida_ROM[4]~output_o\ : std_logic;
SIGNAL \saida_ROM[5]~output_o\ : std_logic;
SIGNAL \saida_ROM[6]~output_o\ : std_logic;
SIGNAL \saida_ROM[7]~output_o\ : std_logic;
SIGNAL \saida_ROM[8]~output_o\ : std_logic;
SIGNAL \saida_ROM[9]~output_o\ : std_logic;
SIGNAL \saida_ROM[10]~output_o\ : std_logic;
SIGNAL \saida_ROM[11]~output_o\ : std_logic;
SIGNAL \saida_ROM[12]~output_o\ : std_logic;
SIGNAL \saida_RAM[0]~output_o\ : std_logic;
SIGNAL \saida_RAM[1]~output_o\ : std_logic;
SIGNAL \saida_RAM[2]~output_o\ : std_logic;
SIGNAL \saida_RAM[3]~output_o\ : std_logic;
SIGNAL \saida_RAM[4]~output_o\ : std_logic;
SIGNAL \saida_RAM[5]~output_o\ : std_logic;
SIGNAL \saida_RAM[6]~output_o\ : std_logic;
SIGNAL \saida_RAM[7]~output_o\ : std_logic;
SIGNAL \Teste_Endereco[0]~output_o\ : std_logic;
SIGNAL \Teste_Endereco[1]~output_o\ : std_logic;
SIGNAL \Teste_Endereco[2]~output_o\ : std_logic;
SIGNAL \Teste_Endereco[3]~output_o\ : std_logic;
SIGNAL \Teste_Endereco[4]~output_o\ : std_logic;
SIGNAL \Teste_Endereco[5]~output_o\ : std_logic;
SIGNAL \Teste_Endereco[6]~output_o\ : std_logic;
SIGNAL \Teste_Endereco[7]~output_o\ : std_logic;
SIGNAL \Teste_Endereco[8]~output_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \CPU|somaUm|Add0~5_sumout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~15_combout\ : std_logic;
SIGNAL \ROM1|memROM~16_combout\ : std_logic;
SIGNAL \ROM1|memROM~17_combout\ : std_logic;
SIGNAL \ROM1|memROM~18_combout\ : std_logic;
SIGNAL \CPU|Decoder|Equal1~0_combout\ : std_logic;
SIGNAL \CPU|somaUm|Add0~6\ : std_logic;
SIGNAL \CPU|somaUm|Add0~9_sumout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \CPU|somaUm|Add0~10\ : std_logic;
SIGNAL \CPU|somaUm|Add0~13_sumout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \CPU|somaUm|Add0~14\ : std_logic;
SIGNAL \CPU|somaUm|Add0~17_sumout\ : std_logic;
SIGNAL \ROM1|memROM~8_combout\ : std_logic;
SIGNAL \CPU|somaUm|Add0~18\ : std_logic;
SIGNAL \CPU|somaUm|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|somaUm|Add0~22\ : std_logic;
SIGNAL \CPU|somaUm|Add0~25_sumout\ : std_logic;
SIGNAL \ROM1|memROM~9_combout\ : std_logic;
SIGNAL \ROM1|memROM~10_combout\ : std_logic;
SIGNAL \CPU|somaUm|Add0~26\ : std_logic;
SIGNAL \CPU|somaUm|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|somaUm|Add0~30\ : std_logic;
SIGNAL \CPU|somaUm|Add0~33_sumout\ : std_logic;
SIGNAL \CPU|somaUm|Add0~34\ : std_logic;
SIGNAL \CPU|somaUm|Add0~1_sumout\ : std_logic;
SIGNAL \ROM1|memROM~11_combout\ : std_logic;
SIGNAL \ROM1|memROM~12_combout\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \ROM1|memROM~13_combout\ : std_logic;
SIGNAL \ROM1|memROM~14_combout\ : std_logic;
SIGNAL \CPU|Decoder|Equal1~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~19_combout\ : std_logic;
SIGNAL \DECODER_BLOCOS|Equal7~0_combout\ : std_logic;
SIGNAL \DECODER_BLOCOS|Equal7~1_combout\ : std_logic;
SIGNAL \memoriaDados|ram~551_combout\ : std_logic;
SIGNAL \memoriaDados|ram~15_q\ : std_logic;
SIGNAL \memoriaDados|ram~527_combout\ : std_logic;
SIGNAL \memoriaDados|ram~528_combout\ : std_logic;
SIGNAL \memoriaDados|ram~529_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|Decoder|Operacao~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~34_cout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~1_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|Equal1~0_combout\ : std_logic;
SIGNAL \CPU|Decoder|OUTPUT[5]~0_combout\ : std_logic;
SIGNAL \DECODER_ENDERECOS|Equal7~0_combout\ : std_logic;
SIGNAL \DECODER_ENDERECOS|Equal7~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~20_combout\ : std_logic;
SIGNAL \memoriaDados|ram~16_q\ : std_logic;
SIGNAL \memoriaDados|ram~530_combout\ : std_logic;
SIGNAL \memoriaDados|ram~531_combout\ : std_logic;
SIGNAL \memoriaDados|ram~532_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~2\ : std_logic;
SIGNAL \CPU|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~2\ : std_logic;
SIGNAL \CPU|ULA1|Add1~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[1]~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~21_combout\ : std_logic;
SIGNAL \memoriaDados|ram~17_q\ : std_logic;
SIGNAL \memoriaDados|ram~533_combout\ : std_logic;
SIGNAL \memoriaDados|ram~534_combout\ : std_logic;
SIGNAL \memoriaDados|ram~535_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~6\ : std_logic;
SIGNAL \CPU|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~6\ : std_logic;
SIGNAL \CPU|ULA1|Add1~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[2]~2_combout\ : std_logic;
SIGNAL \memoriaDados|ram~18_q\ : std_logic;
SIGNAL \memoriaDados|ram~536_combout\ : std_logic;
SIGNAL \memoriaDados|ram~537_combout\ : std_logic;
SIGNAL \memoriaDados|ram~538_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~10\ : std_logic;
SIGNAL \CPU|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~10\ : std_logic;
SIGNAL \CPU|ULA1|Add1~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[3]~3_combout\ : std_logic;
SIGNAL \memoriaDados|ram~19_q\ : std_logic;
SIGNAL \memoriaDados|ram~539_combout\ : std_logic;
SIGNAL \memoriaDados|ram~540_combout\ : std_logic;
SIGNAL \memoriaDados|ram~541_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~14\ : std_logic;
SIGNAL \CPU|ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~14\ : std_logic;
SIGNAL \CPU|ULA1|Add1~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[4]~4_combout\ : std_logic;
SIGNAL \ROM1|memROM~22_combout\ : std_logic;
SIGNAL \memoriaDados|ram~20_q\ : std_logic;
SIGNAL \memoriaDados|ram~542_combout\ : std_logic;
SIGNAL \memoriaDados|ram~543_combout\ : std_logic;
SIGNAL \memoriaDados|ram~544_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~18\ : std_logic;
SIGNAL \CPU|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~18\ : std_logic;
SIGNAL \CPU|ULA1|Add1~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[5]~5_combout\ : std_logic;
SIGNAL \memoriaDados|ram~21_q\ : std_logic;
SIGNAL \memoriaDados|ram~545_combout\ : std_logic;
SIGNAL \memoriaDados|ram~546_combout\ : std_logic;
SIGNAL \memoriaDados|ram~547_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~22\ : std_logic;
SIGNAL \CPU|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~22\ : std_logic;
SIGNAL \CPU|ULA1|Add1~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[6]~6_combout\ : std_logic;
SIGNAL \memoriaDados|ram~22_q\ : std_logic;
SIGNAL \memoriaDados|ram~548_combout\ : std_logic;
SIGNAL \memoriaDados|ram~549_combout\ : std_logic;
SIGNAL \memoriaDados|ram~550_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~26\ : std_logic;
SIGNAL \CPU|ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~26\ : std_logic;
SIGNAL \CPU|ULA1|Add1~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[7]~7_combout\ : std_logic;
SIGNAL \REGLEDR8|DOUT~0_combout\ : std_logic;
SIGNAL \REGLEDR8|DOUT~1_combout\ : std_logic;
SIGNAL \REGLEDR8|DOUT~q\ : std_logic;
SIGNAL \DECODER_ENDERECOS|Equal7~2_combout\ : std_logic;
SIGNAL \REGLEDR9|DOUT~0_combout\ : std_logic;
SIGNAL \REGLEDR9|DOUT~q\ : std_logic;
SIGNAL \REGLEDR|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|REG1|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|ULA1|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \CPU|REG1|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ROM1|ALT_INV_memROM~22_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~21_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~20_combout\ : std_logic;
SIGNAL \DECODER_BLOCOS|ALT_INV_Equal7~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~19_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~550_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~549_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~548_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~547_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~546_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~545_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~544_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~543_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~542_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~541_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~540_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~539_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~538_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~537_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~536_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~535_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~534_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~533_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~532_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~531_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~530_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \CPU|Decoder|ALT_INV_Operacao~0_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~529_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~528_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~527_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~15_q\ : std_logic;
SIGNAL \CPU|Decoder|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \DECODER_ENDERECOS|ALT_INV_Equal7~2_combout\ : std_logic;
SIGNAL \REGLEDR8|ALT_INV_DOUT~0_combout\ : std_logic;
SIGNAL \DECODER_ENDERECOS|ALT_INV_Equal7~0_combout\ : std_logic;
SIGNAL \DECODER_BLOCOS|ALT_INV_Equal7~0_combout\ : std_logic;
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
SIGNAL \REGLEDR9|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \REGLEDR8|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~17_sumout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
LEDR8 <= ww_LEDR8;
LEDR9 <= ww_LEDR9;
saida_ROM <= ww_saida_ROM;
saida_RAM <= ww_saida_RAM;
Teste_Endereco <= ww_Teste_Endereco;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
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
\CPU|PC|ALT_INV_DOUT\(7) <= NOT \CPU|PC|DOUT\(7);
\CPU|PC|ALT_INV_DOUT\(6) <= NOT \CPU|PC|DOUT\(6);
\CPU|PC|ALT_INV_DOUT\(5) <= NOT \CPU|PC|DOUT\(5);
\CPU|PC|ALT_INV_DOUT\(4) <= NOT \CPU|PC|DOUT\(4);
\CPU|PC|ALT_INV_DOUT\(3) <= NOT \CPU|PC|DOUT\(3);
\CPU|PC|ALT_INV_DOUT\(2) <= NOT \CPU|PC|DOUT\(2);
\CPU|PC|ALT_INV_DOUT\(1) <= NOT \CPU|PC|DOUT\(1);
\CPU|PC|ALT_INV_DOUT\(0) <= NOT \CPU|PC|DOUT\(0);
\CPU|PC|ALT_INV_DOUT\(8) <= NOT \CPU|PC|DOUT\(8);
\ROM1|ALT_INV_memROM~22_combout\ <= NOT \ROM1|memROM~22_combout\;
\ROM1|ALT_INV_memROM~21_combout\ <= NOT \ROM1|memROM~21_combout\;
\ROM1|ALT_INV_memROM~20_combout\ <= NOT \ROM1|memROM~20_combout\;
\DECODER_BLOCOS|ALT_INV_Equal7~1_combout\ <= NOT \DECODER_BLOCOS|Equal7~1_combout\;
\ROM1|ALT_INV_memROM~19_combout\ <= NOT \ROM1|memROM~19_combout\;
\memoriaDados|ALT_INV_ram~550_combout\ <= NOT \memoriaDados|ram~550_combout\;
\memoriaDados|ALT_INV_ram~549_combout\ <= NOT \memoriaDados|ram~549_combout\;
\memoriaDados|ALT_INV_ram~548_combout\ <= NOT \memoriaDados|ram~548_combout\;
\memoriaDados|ALT_INV_ram~22_q\ <= NOT \memoriaDados|ram~22_q\;
\memoriaDados|ALT_INV_ram~547_combout\ <= NOT \memoriaDados|ram~547_combout\;
\memoriaDados|ALT_INV_ram~546_combout\ <= NOT \memoriaDados|ram~546_combout\;
\memoriaDados|ALT_INV_ram~545_combout\ <= NOT \memoriaDados|ram~545_combout\;
\memoriaDados|ALT_INV_ram~21_q\ <= NOT \memoriaDados|ram~21_q\;
\memoriaDados|ALT_INV_ram~544_combout\ <= NOT \memoriaDados|ram~544_combout\;
\memoriaDados|ALT_INV_ram~543_combout\ <= NOT \memoriaDados|ram~543_combout\;
\memoriaDados|ALT_INV_ram~542_combout\ <= NOT \memoriaDados|ram~542_combout\;
\memoriaDados|ALT_INV_ram~20_q\ <= NOT \memoriaDados|ram~20_q\;
\memoriaDados|ALT_INV_ram~541_combout\ <= NOT \memoriaDados|ram~541_combout\;
\memoriaDados|ALT_INV_ram~540_combout\ <= NOT \memoriaDados|ram~540_combout\;
\memoriaDados|ALT_INV_ram~539_combout\ <= NOT \memoriaDados|ram~539_combout\;
\memoriaDados|ALT_INV_ram~19_q\ <= NOT \memoriaDados|ram~19_q\;
\memoriaDados|ALT_INV_ram~538_combout\ <= NOT \memoriaDados|ram~538_combout\;
\memoriaDados|ALT_INV_ram~537_combout\ <= NOT \memoriaDados|ram~537_combout\;
\memoriaDados|ALT_INV_ram~536_combout\ <= NOT \memoriaDados|ram~536_combout\;
\memoriaDados|ALT_INV_ram~18_q\ <= NOT \memoriaDados|ram~18_q\;
\memoriaDados|ALT_INV_ram~535_combout\ <= NOT \memoriaDados|ram~535_combout\;
\memoriaDados|ALT_INV_ram~534_combout\ <= NOT \memoriaDados|ram~534_combout\;
\memoriaDados|ALT_INV_ram~533_combout\ <= NOT \memoriaDados|ram~533_combout\;
\memoriaDados|ALT_INV_ram~17_q\ <= NOT \memoriaDados|ram~17_q\;
\memoriaDados|ALT_INV_ram~532_combout\ <= NOT \memoriaDados|ram~532_combout\;
\memoriaDados|ALT_INV_ram~531_combout\ <= NOT \memoriaDados|ram~531_combout\;
\memoriaDados|ALT_INV_ram~530_combout\ <= NOT \memoriaDados|ram~530_combout\;
\memoriaDados|ALT_INV_ram~16_q\ <= NOT \memoriaDados|ram~16_q\;
\CPU|Decoder|ALT_INV_Operacao~0_combout\ <= NOT \CPU|Decoder|Operacao~0_combout\;
\memoriaDados|ALT_INV_ram~529_combout\ <= NOT \memoriaDados|ram~529_combout\;
\memoriaDados|ALT_INV_ram~528_combout\ <= NOT \memoriaDados|ram~528_combout\;
\memoriaDados|ALT_INV_ram~527_combout\ <= NOT \memoriaDados|ram~527_combout\;
\memoriaDados|ALT_INV_ram~15_q\ <= NOT \memoriaDados|ram~15_q\;
\CPU|Decoder|ALT_INV_Equal1~1_combout\ <= NOT \CPU|Decoder|Equal1~1_combout\;
\DECODER_ENDERECOS|ALT_INV_Equal7~2_combout\ <= NOT \DECODER_ENDERECOS|Equal7~2_combout\;
\REGLEDR8|ALT_INV_DOUT~0_combout\ <= NOT \REGLEDR8|DOUT~0_combout\;
\DECODER_ENDERECOS|ALT_INV_Equal7~0_combout\ <= NOT \DECODER_ENDERECOS|Equal7~0_combout\;
\DECODER_BLOCOS|ALT_INV_Equal7~0_combout\ <= NOT \DECODER_BLOCOS|Equal7~0_combout\;
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
\REGLEDR9|ALT_INV_DOUT~q\ <= NOT \REGLEDR9|DOUT~q\;
\REGLEDR8|ALT_INV_DOUT~q\ <= NOT \REGLEDR8|DOUT~q\;
\CPU|ULA1|ALT_INV_Add1~29_sumout\ <= NOT \CPU|ULA1|Add1~29_sumout\;
\CPU|ULA1|ALT_INV_Add1~25_sumout\ <= NOT \CPU|ULA1|Add1~25_sumout\;
\CPU|ULA1|ALT_INV_Add1~21_sumout\ <= NOT \CPU|ULA1|Add1~21_sumout\;
\CPU|ULA1|ALT_INV_Add1~17_sumout\ <= NOT \CPU|ULA1|Add1~17_sumout\;

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
	o => \LEDR[0]~output_o\);

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
	o => \LEDR[1]~output_o\);

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
	o => \LEDR[2]~output_o\);

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
	o => \LEDR[3]~output_o\);

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
	o => \LEDR[4]~output_o\);

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
	o => \LEDR[5]~output_o\);

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
	o => \LEDR[6]~output_o\);

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
	o => \LEDR[7]~output_o\);

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
	o => \LEDR8~output_o\);

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
	o => \LEDR9~output_o\);

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
	o => \saida_ROM[0]~output_o\);

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
	o => \saida_ROM[1]~output_o\);

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
	o => \saida_ROM[2]~output_o\);

\saida_ROM[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~8_combout\,
	devoe => ww_devoe,
	o => \saida_ROM[3]~output_o\);

\saida_ROM[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~6_combout\,
	devoe => ww_devoe,
	o => \saida_ROM[4]~output_o\);

\saida_ROM[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~10_combout\,
	devoe => ww_devoe,
	o => \saida_ROM[5]~output_o\);

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
	o => \saida_ROM[6]~output_o\);

\saida_ROM[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~10_combout\,
	devoe => ww_devoe,
	o => \saida_ROM[7]~output_o\);

\saida_ROM[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~12_combout\,
	devoe => ww_devoe,
	o => \saida_ROM[8]~output_o\);

\saida_ROM[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~14_combout\,
	devoe => ww_devoe,
	o => \saida_ROM[9]~output_o\);

\saida_ROM[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~16_combout\,
	devoe => ww_devoe,
	o => \saida_ROM[10]~output_o\);

\saida_ROM[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|ALT_INV_memROM~18_combout\,
	devoe => ww_devoe,
	o => \saida_ROM[11]~output_o\);

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
	o => \saida_ROM[12]~output_o\);

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
	o => \saida_RAM[0]~output_o\);

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
	o => \saida_RAM[1]~output_o\);

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
	o => \saida_RAM[2]~output_o\);

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
	o => \saida_RAM[3]~output_o\);

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
	o => \saida_RAM[4]~output_o\);

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
	o => \saida_RAM[5]~output_o\);

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
	o => \saida_RAM[6]~output_o\);

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
	o => \saida_RAM[7]~output_o\);

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
	o => \Teste_Endereco[0]~output_o\);

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
	o => \Teste_Endereco[1]~output_o\);

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
	o => \Teste_Endereco[2]~output_o\);

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
	o => \Teste_Endereco[3]~output_o\);

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
	o => \Teste_Endereco[4]~output_o\);

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
	o => \Teste_Endereco[5]~output_o\);

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
	o => \Teste_Endereco[6]~output_o\);

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
	o => \Teste_Endereco[7]~output_o\);

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
	o => \Teste_Endereco[8]~output_o\);

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

\CPU|somaUm|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|somaUm|Add0~5_sumout\ = SUM(( \CPU|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \CPU|somaUm|Add0~6\ = CARRY(( \CPU|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \CPU|somaUm|Add0~5_sumout\,
	cout => \CPU|somaUm|Add0~6\);

\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = (!\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(0))) # (\CPU|PC|DOUT\(1) & ((\CPU|PC|DOUT\(3)))))) # (\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010110110000100001011011000010000101101100001000010110110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~0_combout\);

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

\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = (!\CPU|PC|DOUT\(8) & (\ROM1|memROM~0_combout\ & \ROM1|memROM~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~2_combout\);

\ROM1|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~15_combout\ = (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(0) $ (\CPU|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000010000001000000001000000100000000100000010000000010000",
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
-- \ROM1|memROM~16_combout\ = (\ROM1|memROM~7_combout\ & \ROM1|memROM~15_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~7_combout\,
	datab => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \ROM1|memROM~16_combout\);

\ROM1|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~17_combout\ = (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) $ (!\CPU|PC|DOUT\(2))))) # (\CPU|PC|DOUT\(3) & (((\CPU|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000001111001010000000111100101000000011110010100000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~17_combout\);

\ROM1|memROM~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~18_combout\ = (!\ROM1|memROM~7_combout\) # (\ROM1|memROM~17_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~7_combout\,
	datab => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \ROM1|memROM~18_combout\);

\CPU|Decoder|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Decoder|Equal1~0_combout\ = (!\ROM1|memROM~14_combout\ & (\ROM1|memROM~16_combout\ & !\ROM1|memROM~18_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~14_combout\,
	datab => \ROM1|ALT_INV_memROM~16_combout\,
	datac => \ROM1|ALT_INV_memROM~18_combout\,
	combout => \CPU|Decoder|Equal1~0_combout\);

\CPU|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|somaUm|Add0~5_sumout\,
	asdata => \ROM1|memROM~2_combout\,
	sload => \CPU|Decoder|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(0));

\CPU|somaUm|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|somaUm|Add0~9_sumout\ = SUM(( \CPU|PC|DOUT\(1) ) + ( GND ) + ( \CPU|somaUm|Add0~6\ ))
-- \CPU|somaUm|Add0~10\ = CARRY(( \CPU|PC|DOUT\(1) ) + ( GND ) + ( \CPU|somaUm|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	cin => \CPU|somaUm|Add0~6\,
	sumout => \CPU|somaUm|Add0~9_sumout\,
	cout => \CPU|somaUm|Add0~10\);

\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = (!\CPU|PC|DOUT\(2) & (((\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011110000000000101111000000000010111100000000001011110000",
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
-- \ROM1|memROM~4_combout\ = (!\CPU|PC|DOUT\(8) & (\ROM1|memROM~1_combout\ & \ROM1|memROM~3_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
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
	d => \CPU|somaUm|Add0~9_sumout\,
	asdata => \ROM1|memROM~4_combout\,
	sload => \CPU|Decoder|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(1));

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

\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = (!\CPU|PC|DOUT\(0) & (((!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110100000000000011010000000000001101000000000000110100000",
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
-- \ROM1|memROM~6_combout\ = (!\CPU|PC|DOUT\(8) & (\ROM1|memROM~1_combout\ & \ROM1|memROM~5_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \ROM1|memROM~6_combout\);

\CPU|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|somaUm|Add0~13_sumout\,
	asdata => \ROM1|memROM~6_combout\,
	sload => \CPU|Decoder|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(2));

\CPU|somaUm|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|somaUm|Add0~17_sumout\ = SUM(( \CPU|PC|DOUT\(3) ) + ( GND ) + ( \CPU|somaUm|Add0~14\ ))
-- \CPU|somaUm|Add0~18\ = CARRY(( \CPU|PC|DOUT\(3) ) + ( GND ) + ( \CPU|somaUm|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	cin => \CPU|somaUm|Add0~14\,
	sumout => \CPU|somaUm|Add0~17_sumout\,
	cout => \CPU|somaUm|Add0~18\);

\ROM1|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~8_combout\ = (!\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(3) & \ROM1|memROM~7_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(2),
	datab => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \ROM1|memROM~8_combout\);

\CPU|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|somaUm|Add0~17_sumout\,
	asdata => \ROM1|memROM~8_combout\,
	sload => \CPU|Decoder|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(3));

\CPU|somaUm|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|somaUm|Add0~21_sumout\ = SUM(( \CPU|PC|DOUT\(4) ) + ( GND ) + ( \CPU|somaUm|Add0~18\ ))
-- \CPU|somaUm|Add0~22\ = CARRY(( \CPU|PC|DOUT\(4) ) + ( GND ) + ( \CPU|somaUm|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	cin => \CPU|somaUm|Add0~18\,
	sumout => \CPU|somaUm|Add0~21_sumout\,
	cout => \CPU|somaUm|Add0~22\);

\CPU|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|somaUm|Add0~21_sumout\,
	asdata => \ROM1|memROM~6_combout\,
	sload => \CPU|Decoder|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(4));

\CPU|somaUm|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|somaUm|Add0~25_sumout\ = SUM(( \CPU|PC|DOUT\(5) ) + ( GND ) + ( \CPU|somaUm|Add0~22\ ))
-- \CPU|somaUm|Add0~26\ = CARRY(( \CPU|PC|DOUT\(5) ) + ( GND ) + ( \CPU|somaUm|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	cin => \CPU|somaUm|Add0~22\,
	sumout => \CPU|somaUm|Add0~25_sumout\,
	cout => \CPU|somaUm|Add0~26\);

\ROM1|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~9_combout\ = (!\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(0)) # (!\CPU|PC|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100000000000001110000000000000111000000000000011100000",
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
-- \ROM1|memROM~10_combout\ = (!\CPU|PC|DOUT\(8) & (\ROM1|memROM~1_combout\ & \ROM1|memROM~9_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \ROM1|memROM~10_combout\);

\CPU|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|somaUm|Add0~25_sumout\,
	asdata => \ROM1|memROM~10_combout\,
	sload => \CPU|Decoder|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(5));

\CPU|somaUm|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|somaUm|Add0~29_sumout\ = SUM(( \CPU|PC|DOUT\(6) ) + ( GND ) + ( \CPU|somaUm|Add0~26\ ))
-- \CPU|somaUm|Add0~30\ = CARRY(( \CPU|PC|DOUT\(6) ) + ( GND ) + ( \CPU|somaUm|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(6),
	cin => \CPU|somaUm|Add0~26\,
	sumout => \CPU|somaUm|Add0~29_sumout\,
	cout => \CPU|somaUm|Add0~30\);

\CPU|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|somaUm|Add0~29_sumout\,
	asdata => \ROM1|memROM~6_combout\,
	sload => \CPU|Decoder|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(6));

\CPU|somaUm|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|somaUm|Add0~33_sumout\ = SUM(( \CPU|PC|DOUT\(7) ) + ( GND ) + ( \CPU|somaUm|Add0~30\ ))
-- \CPU|somaUm|Add0~34\ = CARRY(( \CPU|PC|DOUT\(7) ) + ( GND ) + ( \CPU|somaUm|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	cin => \CPU|somaUm|Add0~30\,
	sumout => \CPU|somaUm|Add0~33_sumout\,
	cout => \CPU|somaUm|Add0~34\);

\CPU|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|somaUm|Add0~33_sumout\,
	asdata => \ROM1|memROM~10_combout\,
	sload => \CPU|Decoder|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(7));

\CPU|somaUm|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|somaUm|Add0~1_sumout\ = SUM(( \CPU|PC|DOUT\(8) ) + ( GND ) + ( \CPU|somaUm|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(8),
	cin => \CPU|somaUm|Add0~34\,
	sumout => \CPU|somaUm|Add0~1_sumout\);

\ROM1|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~11_combout\ = (!\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(2) $ (!\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111010100000010011101010000001001110101000000100111010100000",
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
-- \ROM1|memROM~12_combout\ = (\ROM1|memROM~7_combout\ & \ROM1|memROM~11_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~7_combout\,
	datab => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \ROM1|memROM~12_combout\);

\CPU|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|somaUm|Add0~1_sumout\,
	asdata => \ROM1|memROM~12_combout\,
	sload => \CPU|Decoder|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(8));

\ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~7_combout\ = ( !\CPU|PC|DOUT\(7) & ( (!\CPU|PC|DOUT\(8) & (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(5) & !\CPU|PC|DOUT\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \CPU|PC|ALT_INV_DOUT\(5),
	datad => \CPU|PC|ALT_INV_DOUT\(6),
	datae => \CPU|PC|ALT_INV_DOUT\(7),
	combout => \ROM1|memROM~7_combout\);

\ROM1|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~13_combout\ = (!\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(2) $ (!\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(1)) # (!\CPU|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111010100000010111101010000001011110101000000101111010100000",
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
-- \ROM1|memROM~14_combout\ = (\ROM1|memROM~7_combout\ & \ROM1|memROM~13_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~7_combout\,
	datab => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \ROM1|memROM~14_combout\);

\CPU|Decoder|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Decoder|Equal1~1_combout\ = (!\ROM1|memROM~14_combout\ & (!\ROM1|memROM~16_combout\ & !\ROM1|memROM~18_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~14_combout\,
	datab => \ROM1|ALT_INV_memROM~16_combout\,
	datac => \ROM1|ALT_INV_memROM~18_combout\,
	combout => \CPU|Decoder|Equal1~1_combout\);

\ROM1|memROM~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~19_combout\ = (!\ROM1|memROM~0_combout\) # (!\ROM1|memROM~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111011101110111011101110111011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~19_combout\);

\DECODER_BLOCOS|Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_BLOCOS|Equal7~0_combout\ = ( \ROM1|memROM~13_combout\ & ( !\ROM1|memROM~15_combout\ & ( (!\CPU|PC|DOUT\(8) & (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~5_combout\ & !\ROM1|memROM~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~9_combout\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \DECODER_BLOCOS|Equal7~0_combout\);

\DECODER_BLOCOS|Equal7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_BLOCOS|Equal7~1_combout\ = (!\ROM1|memROM~12_combout\ & (!\ROM1|memROM~18_combout\ & \DECODER_BLOCOS|Equal7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~12_combout\,
	datab => \ROM1|ALT_INV_memROM~18_combout\,
	datac => \DECODER_BLOCOS|ALT_INV_Equal7~0_combout\,
	combout => \DECODER_BLOCOS|Equal7~1_combout\);

\memoriaDados|ram~551\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~551_combout\ = ( !\ROM1|memROM~2_combout\ & ( \DECODER_BLOCOS|Equal7~1_combout\ & ( (!\ROM1|memROM~10_combout\ & (!\ROM1|memROM~8_combout\ & (!\ROM1|memROM~6_combout\ & !\ROM1|memROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~10_combout\,
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \DECODER_BLOCOS|ALT_INV_Equal7~1_combout\,
	combout => \memoriaDados|ram~551_combout\);

\memoriaDados|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(0),
	ena => \memoriaDados|ram~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~15_q\);

\memoriaDados|ram~527\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~527_combout\ = ( !\ROM1|memROM~10_combout\ & ( !\ROM1|memROM~4_combout\ & ( \memoriaDados|ram~15_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~15_q\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \memoriaDados|ram~527_combout\);

\memoriaDados|ram~528\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~528_combout\ = ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~8_combout\ & ( \memoriaDados|ram~527_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \memoriaDados|ALT_INV_ram~527_combout\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \memoriaDados|ram~528_combout\);

\memoriaDados|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~529_combout\ = (!\ROM1|memROM~6_combout\ & \memoriaDados|ram~528_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \memoriaDados|ALT_INV_ram~528_combout\,
	combout => \memoriaDados|ram~529_combout\);

\CPU|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~1_sumout\ = SUM(( (!\CPU|Decoder|Equal1~1_combout\ & (((\memoriaDados|ram~529_combout\)))) # (\CPU|Decoder|Equal1~1_combout\ & (!\CPU|PC|DOUT\(8) & (!\ROM1|memROM~19_combout\))) ) + ( \CPU|REG1|DOUT\(0) ) + ( !VCC ))
-- \CPU|ULA1|Add0~2\ = CARRY(( (!\CPU|Decoder|Equal1~1_combout\ & (((\memoriaDados|ram~529_combout\)))) # (\CPU|Decoder|Equal1~1_combout\ & (!\CPU|PC|DOUT\(8) & (!\ROM1|memROM~19_combout\))) ) + ( \CPU|REG1|DOUT\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000100000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_Equal1~1_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~19_combout\,
	datad => \memoriaDados|ALT_INV_ram~529_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \CPU|ULA1|Add0~1_sumout\,
	cout => \CPU|ULA1|Add0~2\);

\CPU|Decoder|Operacao~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Decoder|Operacao~0_combout\ = (!\ROM1|memROM~16_combout\ & (!\ROM1|memROM~14_combout\ $ (\ROM1|memROM~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010010000100100001001000010010000100100001001000010010000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~14_combout\,
	datab => \ROM1|ALT_INV_memROM~16_combout\,
	datac => \ROM1|ALT_INV_memROM~18_combout\,
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
-- \CPU|ULA1|Add1~1_sumout\ = SUM(( (!\CPU|Decoder|Equal1~1_combout\ & (((!\memoriaDados|ram~529_combout\)))) # (\CPU|Decoder|Equal1~1_combout\ & (((\ROM1|memROM~19_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( \CPU|REG1|DOUT\(0) ) + ( \CPU|ULA1|Add1~34_cout\ ))
-- \CPU|ULA1|Add1~2\ = CARRY(( (!\CPU|Decoder|Equal1~1_combout\ & (((!\memoriaDados|ram~529_combout\)))) # (\CPU|Decoder|Equal1~1_combout\ & (((\ROM1|memROM~19_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( \CPU|REG1|DOUT\(0) ) + ( \CPU|ULA1|Add1~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001011111100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_Equal1~1_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~19_combout\,
	datad => \memoriaDados|ALT_INV_ram~529_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(0),
	cin => \CPU|ULA1|Add1~34_cout\,
	sumout => \CPU|ULA1|Add1~1_sumout\,
	cout => \CPU|ULA1|Add1~2\);

\CPU|ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[0]~0_combout\ = ( \CPU|ULA1|Add1~1_sumout\ & ( (!\CPU|Decoder|Operacao~0_combout\) # ((!\CPU|Decoder|Equal1~1_combout\ & ((\memoriaDados|ram~529_combout\))) # (\CPU|Decoder|Equal1~1_combout\ & (\ROM1|memROM~2_combout\))) ) ) # ( 
-- !\CPU|ULA1|Add1~1_sumout\ & ( (\CPU|Decoder|Operacao~0_combout\ & ((!\CPU|Decoder|Equal1~1_combout\ & ((\memoriaDados|ram~529_combout\))) # (\CPU|Decoder|Equal1~1_combout\ & (\ROM1|memROM~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011101111111110001110100000000000111011111111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \CPU|Decoder|ALT_INV_Equal1~1_combout\,
	datac => \memoriaDados|ALT_INV_ram~529_combout\,
	datad => \CPU|Decoder|ALT_INV_Operacao~0_combout\,
	datae => \CPU|ULA1|ALT_INV_Add1~1_sumout\,
	combout => \CPU|ULA1|saida[0]~0_combout\);

\CPU|ULA1|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Equal1~0_combout\ = ((!\ROM1|memROM~16_combout\) # (!\ROM1|memROM~18_combout\)) # (\ROM1|memROM~14_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110111111101111111011111110111111101111111011111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~14_combout\,
	datab => \ROM1|ALT_INV_memROM~16_combout\,
	datac => \ROM1|ALT_INV_memROM~18_combout\,
	combout => \CPU|ULA1|Equal1~0_combout\);

\CPU|Decoder|OUTPUT[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Decoder|OUTPUT[5]~0_combout\ = (\ROM1|memROM~7_combout\ & (!\ROM1|memROM~17_combout\ $ (((\ROM1|memROM~15_combout\) # (\ROM1|memROM~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000010101010000000001010101000000000101010100000000010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~7_combout\,
	datab => \ROM1|ALT_INV_memROM~13_combout\,
	datac => \ROM1|ALT_INV_memROM~15_combout\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
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

\DECODER_ENDERECOS|Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_ENDERECOS|Equal7~0_combout\ = (!\CPU|PC|DOUT\(8) & (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~5_combout\ & \ROM1|memROM~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \DECODER_ENDERECOS|Equal7~0_combout\);

\DECODER_ENDERECOS|Equal7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_ENDERECOS|Equal7~1_combout\ = ( \DECODER_ENDERECOS|Equal7~0_combout\ & ( (!\ROM1|memROM~2_combout\ & (!\ROM1|memROM~4_combout\ & (!\ROM1|memROM~18_combout\ & \DECODER_BLOCOS|Equal7~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~18_combout\,
	datad => \DECODER_BLOCOS|ALT_INV_Equal7~0_combout\,
	datae => \DECODER_ENDERECOS|ALT_INV_Equal7~0_combout\,
	combout => \DECODER_ENDERECOS|Equal7~1_combout\);

\REGLEDR|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(0),
	ena => \DECODER_ENDERECOS|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLEDR|DOUT\(0));

\ROM1|memROM~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~20_combout\ = (\ROM1|memROM~1_combout\ & \ROM1|memROM~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \ROM1|memROM~20_combout\);

\memoriaDados|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(1),
	ena => \memoriaDados|ram~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~16_q\);

\memoriaDados|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~530_combout\ = ( !\ROM1|memROM~10_combout\ & ( !\ROM1|memROM~4_combout\ & ( \memoriaDados|ram~16_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~16_q\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \memoriaDados|ram~530_combout\);

\memoriaDados|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~531_combout\ = ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~8_combout\ & ( \memoriaDados|ram~530_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \memoriaDados|ALT_INV_ram~530_combout\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \memoriaDados|ram~531_combout\);

\memoriaDados|ram~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~532_combout\ = (!\ROM1|memROM~6_combout\ & \memoriaDados|ram~531_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \memoriaDados|ALT_INV_ram~531_combout\,
	combout => \memoriaDados|ram~532_combout\);

\CPU|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~5_sumout\ = SUM(( (!\CPU|Decoder|Equal1~1_combout\ & (((\memoriaDados|ram~532_combout\)))) # (\CPU|Decoder|Equal1~1_combout\ & (!\CPU|PC|DOUT\(8) & (\ROM1|memROM~20_combout\))) ) + ( \CPU|REG1|DOUT\(1) ) + ( \CPU|ULA1|Add0~2\ ))
-- \CPU|ULA1|Add0~6\ = CARRY(( (!\CPU|Decoder|Equal1~1_combout\ & (((\memoriaDados|ram~532_combout\)))) # (\CPU|Decoder|Equal1~1_combout\ & (!\CPU|PC|DOUT\(8) & (\ROM1|memROM~20_combout\))) ) + ( \CPU|REG1|DOUT\(1) ) + ( \CPU|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_Equal1~1_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~20_combout\,
	datad => \memoriaDados|ALT_INV_ram~532_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(1),
	cin => \CPU|ULA1|Add0~2\,
	sumout => \CPU|ULA1|Add0~5_sumout\,
	cout => \CPU|ULA1|Add0~6\);

\CPU|ULA1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~5_sumout\ = SUM(( (!\CPU|Decoder|Equal1~1_combout\ & (((!\memoriaDados|ram~532_combout\)))) # (\CPU|Decoder|Equal1~1_combout\ & (((!\ROM1|memROM~20_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( \CPU|REG1|DOUT\(1) ) + ( \CPU|ULA1|Add1~2\ ))
-- \CPU|ULA1|Add1~6\ = CARRY(( (!\CPU|Decoder|Equal1~1_combout\ & (((!\memoriaDados|ram~532_combout\)))) # (\CPU|Decoder|Equal1~1_combout\ & (((!\ROM1|memROM~20_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( \CPU|REG1|DOUT\(1) ) + ( \CPU|ULA1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_Equal1~1_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~20_combout\,
	datad => \memoriaDados|ALT_INV_ram~532_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(1),
	cin => \CPU|ULA1|Add1~2\,
	sumout => \CPU|ULA1|Add1~5_sumout\,
	cout => \CPU|ULA1|Add1~6\);

\CPU|ULA1|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[1]~1_combout\ = ( \CPU|ULA1|Add1~5_sumout\ & ( (!\CPU|Decoder|Operacao~0_combout\) # ((!\CPU|Decoder|Equal1~1_combout\ & ((\memoriaDados|ram~532_combout\))) # (\CPU|Decoder|Equal1~1_combout\ & (\ROM1|memROM~4_combout\))) ) ) # ( 
-- !\CPU|ULA1|Add1~5_sumout\ & ( (\CPU|Decoder|Operacao~0_combout\ & ((!\CPU|Decoder|Equal1~1_combout\ & ((\memoriaDados|ram~532_combout\))) # (\CPU|Decoder|Equal1~1_combout\ & (\ROM1|memROM~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101111100011111110100000001000011011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \CPU|Decoder|ALT_INV_Equal1~1_combout\,
	datac => \CPU|Decoder|ALT_INV_Operacao~0_combout\,
	datad => \memoriaDados|ALT_INV_ram~532_combout\,
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

\REGLEDR|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(1),
	ena => \DECODER_ENDERECOS|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLEDR|DOUT\(1));

\ROM1|memROM~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~21_combout\ = (\ROM1|memROM~1_combout\ & \ROM1|memROM~5_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \ROM1|memROM~21_combout\);

\memoriaDados|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(2),
	ena => \memoriaDados|ram~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~17_q\);

\memoriaDados|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~533_combout\ = ( !\ROM1|memROM~10_combout\ & ( !\ROM1|memROM~4_combout\ & ( \memoriaDados|ram~17_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~17_q\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \memoriaDados|ram~533_combout\);

\memoriaDados|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~534_combout\ = ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~8_combout\ & ( \memoriaDados|ram~533_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \memoriaDados|ALT_INV_ram~533_combout\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \memoriaDados|ram~534_combout\);

\memoriaDados|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~535_combout\ = (!\ROM1|memROM~6_combout\ & \memoriaDados|ram~534_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \memoriaDados|ALT_INV_ram~534_combout\,
	combout => \memoriaDados|ram~535_combout\);

\CPU|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~9_sumout\ = SUM(( (!\CPU|Decoder|Equal1~1_combout\ & (((\memoriaDados|ram~535_combout\)))) # (\CPU|Decoder|Equal1~1_combout\ & (!\CPU|PC|DOUT\(8) & (\ROM1|memROM~21_combout\))) ) + ( \CPU|REG1|DOUT\(2) ) + ( \CPU|ULA1|Add0~6\ ))
-- \CPU|ULA1|Add0~10\ = CARRY(( (!\CPU|Decoder|Equal1~1_combout\ & (((\memoriaDados|ram~535_combout\)))) # (\CPU|Decoder|Equal1~1_combout\ & (!\CPU|PC|DOUT\(8) & (\ROM1|memROM~21_combout\))) ) + ( \CPU|REG1|DOUT\(2) ) + ( \CPU|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_Equal1~1_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~21_combout\,
	datad => \memoriaDados|ALT_INV_ram~535_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(2),
	cin => \CPU|ULA1|Add0~6\,
	sumout => \CPU|ULA1|Add0~9_sumout\,
	cout => \CPU|ULA1|Add0~10\);

\CPU|ULA1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~9_sumout\ = SUM(( (!\CPU|Decoder|Equal1~1_combout\ & (((!\memoriaDados|ram~535_combout\)))) # (\CPU|Decoder|Equal1~1_combout\ & (((!\ROM1|memROM~21_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( \CPU|REG1|DOUT\(2) ) + ( \CPU|ULA1|Add1~6\ ))
-- \CPU|ULA1|Add1~10\ = CARRY(( (!\CPU|Decoder|Equal1~1_combout\ & (((!\memoriaDados|ram~535_combout\)))) # (\CPU|Decoder|Equal1~1_combout\ & (((!\ROM1|memROM~21_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( \CPU|REG1|DOUT\(2) ) + ( \CPU|ULA1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_Equal1~1_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~21_combout\,
	datad => \memoriaDados|ALT_INV_ram~535_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(2),
	cin => \CPU|ULA1|Add1~6\,
	sumout => \CPU|ULA1|Add1~9_sumout\,
	cout => \CPU|ULA1|Add1~10\);

\CPU|ULA1|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[2]~2_combout\ = ( \CPU|ULA1|Add1~9_sumout\ & ( (!\CPU|Decoder|Operacao~0_combout\) # ((!\CPU|Decoder|Equal1~1_combout\ & ((\memoriaDados|ram~535_combout\))) # (\CPU|Decoder|Equal1~1_combout\ & (\ROM1|memROM~6_combout\))) ) ) # ( 
-- !\CPU|ULA1|Add1~9_sumout\ & ( (\CPU|Decoder|Operacao~0_combout\ & ((!\CPU|Decoder|Equal1~1_combout\ & ((\memoriaDados|ram~535_combout\))) # (\CPU|Decoder|Equal1~1_combout\ & (\ROM1|memROM~6_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101111100011111110100000001000011011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datab => \CPU|Decoder|ALT_INV_Equal1~1_combout\,
	datac => \CPU|Decoder|ALT_INV_Operacao~0_combout\,
	datad => \memoriaDados|ALT_INV_ram~535_combout\,
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

\REGLEDR|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(2),
	ena => \DECODER_ENDERECOS|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLEDR|DOUT\(2));

\memoriaDados|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(3),
	ena => \memoriaDados|ram~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~18_q\);

\memoriaDados|ram~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~536_combout\ = ( !\ROM1|memROM~10_combout\ & ( !\ROM1|memROM~4_combout\ & ( \memoriaDados|ram~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~18_q\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \memoriaDados|ram~536_combout\);

\memoriaDados|ram~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~537_combout\ = ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~8_combout\ & ( \memoriaDados|ram~536_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \memoriaDados|ALT_INV_ram~536_combout\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \memoriaDados|ram~537_combout\);

\memoriaDados|ram~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~538_combout\ = (!\ROM1|memROM~6_combout\ & \memoriaDados|ram~537_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \memoriaDados|ALT_INV_ram~537_combout\,
	combout => \memoriaDados|ram~538_combout\);

\CPU|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~13_sumout\ = SUM(( (!\CPU|Decoder|Equal1~1_combout\ & ((\memoriaDados|ram~538_combout\))) # (\CPU|Decoder|Equal1~1_combout\ & (\ROM1|memROM~8_combout\)) ) + ( \CPU|REG1|DOUT\(3) ) + ( \CPU|ULA1|Add0~10\ ))
-- \CPU|ULA1|Add0~14\ = CARRY(( (!\CPU|Decoder|Equal1~1_combout\ & ((\memoriaDados|ram~538_combout\))) # (\CPU|Decoder|Equal1~1_combout\ & (\ROM1|memROM~8_combout\)) ) + ( \CPU|REG1|DOUT\(3) ) + ( \CPU|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_Equal1~1_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \memoriaDados|ALT_INV_ram~538_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(3),
	cin => \CPU|ULA1|Add0~10\,
	sumout => \CPU|ULA1|Add0~13_sumout\,
	cout => \CPU|ULA1|Add0~14\);

\CPU|ULA1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~13_sumout\ = SUM(( (!\CPU|Decoder|Equal1~1_combout\ & ((!\memoriaDados|ram~538_combout\))) # (\CPU|Decoder|Equal1~1_combout\ & (!\ROM1|memROM~8_combout\)) ) + ( \CPU|REG1|DOUT\(3) ) + ( \CPU|ULA1|Add1~10\ ))
-- \CPU|ULA1|Add1~14\ = CARRY(( (!\CPU|Decoder|Equal1~1_combout\ & ((!\memoriaDados|ram~538_combout\))) # (\CPU|Decoder|Equal1~1_combout\ & (!\ROM1|memROM~8_combout\)) ) + ( \CPU|REG1|DOUT\(3) ) + ( \CPU|ULA1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_Equal1~1_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \memoriaDados|ALT_INV_ram~538_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(3),
	cin => \CPU|ULA1|Add1~10\,
	sumout => \CPU|ULA1|Add1~13_sumout\,
	cout => \CPU|ULA1|Add1~14\);

\CPU|ULA1|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[3]~3_combout\ = ( \CPU|ULA1|Add1~13_sumout\ & ( (!\CPU|Decoder|Operacao~0_combout\) # ((!\CPU|Decoder|Equal1~1_combout\ & ((\memoriaDados|ram~538_combout\))) # (\CPU|Decoder|Equal1~1_combout\ & (\ROM1|memROM~8_combout\))) ) ) # ( 
-- !\CPU|ULA1|Add1~13_sumout\ & ( (\CPU|Decoder|Operacao~0_combout\ & ((!\CPU|Decoder|Equal1~1_combout\ & ((\memoriaDados|ram~538_combout\))) # (\CPU|Decoder|Equal1~1_combout\ & (\ROM1|memROM~8_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001011111100011111101100000001000010111111000111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_Equal1~1_combout\,
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \CPU|Decoder|ALT_INV_Operacao~0_combout\,
	datad => \memoriaDados|ALT_INV_ram~538_combout\,
	datae => \CPU|ULA1|ALT_INV_Add1~13_sumout\,
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

\REGLEDR|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(3),
	ena => \DECODER_ENDERECOS|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLEDR|DOUT\(3));

\memoriaDados|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(4),
	ena => \memoriaDados|ram~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~19_q\);

\memoriaDados|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~539_combout\ = ( !\ROM1|memROM~10_combout\ & ( !\ROM1|memROM~4_combout\ & ( \memoriaDados|ram~19_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~19_q\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \memoriaDados|ram~539_combout\);

\memoriaDados|ram~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~540_combout\ = ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~8_combout\ & ( \memoriaDados|ram~539_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \memoriaDados|ALT_INV_ram~539_combout\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \memoriaDados|ram~540_combout\);

\memoriaDados|ram~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~541_combout\ = (!\ROM1|memROM~6_combout\ & \memoriaDados|ram~540_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \memoriaDados|ALT_INV_ram~540_combout\,
	combout => \memoriaDados|ram~541_combout\);

\CPU|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~17_sumout\ = SUM(( (!\CPU|Decoder|Equal1~1_combout\ & (((\memoriaDados|ram~541_combout\)))) # (\CPU|Decoder|Equal1~1_combout\ & (!\CPU|PC|DOUT\(8) & (\ROM1|memROM~21_combout\))) ) + ( \CPU|REG1|DOUT\(4) ) + ( \CPU|ULA1|Add0~14\ ))
-- \CPU|ULA1|Add0~18\ = CARRY(( (!\CPU|Decoder|Equal1~1_combout\ & (((\memoriaDados|ram~541_combout\)))) # (\CPU|Decoder|Equal1~1_combout\ & (!\CPU|PC|DOUT\(8) & (\ROM1|memROM~21_combout\))) ) + ( \CPU|REG1|DOUT\(4) ) + ( \CPU|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_Equal1~1_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~21_combout\,
	datad => \memoriaDados|ALT_INV_ram~541_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(4),
	cin => \CPU|ULA1|Add0~14\,
	sumout => \CPU|ULA1|Add0~17_sumout\,
	cout => \CPU|ULA1|Add0~18\);

\CPU|ULA1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~17_sumout\ = SUM(( (!\CPU|Decoder|Equal1~1_combout\ & (((!\memoriaDados|ram~541_combout\)))) # (\CPU|Decoder|Equal1~1_combout\ & (((!\ROM1|memROM~21_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( \CPU|REG1|DOUT\(4) ) + ( \CPU|ULA1|Add1~14\ ))
-- \CPU|ULA1|Add1~18\ = CARRY(( (!\CPU|Decoder|Equal1~1_combout\ & (((!\memoriaDados|ram~541_combout\)))) # (\CPU|Decoder|Equal1~1_combout\ & (((!\ROM1|memROM~21_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( \CPU|REG1|DOUT\(4) ) + ( \CPU|ULA1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_Equal1~1_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~21_combout\,
	datad => \memoriaDados|ALT_INV_ram~541_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(4),
	cin => \CPU|ULA1|Add1~14\,
	sumout => \CPU|ULA1|Add1~17_sumout\,
	cout => \CPU|ULA1|Add1~18\);

\CPU|ULA1|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[4]~4_combout\ = ( \CPU|ULA1|Add1~17_sumout\ & ( (!\CPU|Decoder|Operacao~0_combout\) # ((!\CPU|Decoder|Equal1~1_combout\ & ((\memoriaDados|ram~541_combout\))) # (\CPU|Decoder|Equal1~1_combout\ & (\ROM1|memROM~6_combout\))) ) ) # ( 
-- !\CPU|ULA1|Add1~17_sumout\ & ( (\CPU|Decoder|Operacao~0_combout\ & ((!\CPU|Decoder|Equal1~1_combout\ & ((\memoriaDados|ram~541_combout\))) # (\CPU|Decoder|Equal1~1_combout\ & (\ROM1|memROM~6_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101111100011111110100000001000011011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datab => \CPU|Decoder|ALT_INV_Equal1~1_combout\,
	datac => \CPU|Decoder|ALT_INV_Operacao~0_combout\,
	datad => \memoriaDados|ALT_INV_ram~541_combout\,
	datae => \CPU|ULA1|ALT_INV_Add1~17_sumout\,
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

\REGLEDR|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(4),
	ena => \DECODER_ENDERECOS|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLEDR|DOUT\(4));

\ROM1|memROM~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~22_combout\ = (\ROM1|memROM~1_combout\ & \ROM1|memROM~9_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \ROM1|memROM~22_combout\);

\memoriaDados|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(5),
	ena => \memoriaDados|ram~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~20_q\);

\memoriaDados|ram~542\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~542_combout\ = ( !\ROM1|memROM~10_combout\ & ( !\ROM1|memROM~4_combout\ & ( \memoriaDados|ram~20_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~20_q\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \memoriaDados|ram~542_combout\);

\memoriaDados|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~543_combout\ = ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~8_combout\ & ( \memoriaDados|ram~542_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \memoriaDados|ALT_INV_ram~542_combout\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \memoriaDados|ram~543_combout\);

\memoriaDados|ram~544\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~544_combout\ = (!\ROM1|memROM~6_combout\ & \memoriaDados|ram~543_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \memoriaDados|ALT_INV_ram~543_combout\,
	combout => \memoriaDados|ram~544_combout\);

\CPU|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~21_sumout\ = SUM(( (!\CPU|Decoder|Equal1~1_combout\ & (((\memoriaDados|ram~544_combout\)))) # (\CPU|Decoder|Equal1~1_combout\ & (!\CPU|PC|DOUT\(8) & (\ROM1|memROM~22_combout\))) ) + ( \CPU|REG1|DOUT\(5) ) + ( \CPU|ULA1|Add0~18\ ))
-- \CPU|ULA1|Add0~22\ = CARRY(( (!\CPU|Decoder|Equal1~1_combout\ & (((\memoriaDados|ram~544_combout\)))) # (\CPU|Decoder|Equal1~1_combout\ & (!\CPU|PC|DOUT\(8) & (\ROM1|memROM~22_combout\))) ) + ( \CPU|REG1|DOUT\(5) ) + ( \CPU|ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_Equal1~1_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~22_combout\,
	datad => \memoriaDados|ALT_INV_ram~544_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(5),
	cin => \CPU|ULA1|Add0~18\,
	sumout => \CPU|ULA1|Add0~21_sumout\,
	cout => \CPU|ULA1|Add0~22\);

\CPU|ULA1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~21_sumout\ = SUM(( (!\CPU|Decoder|Equal1~1_combout\ & (((!\memoriaDados|ram~544_combout\)))) # (\CPU|Decoder|Equal1~1_combout\ & (((!\ROM1|memROM~22_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( \CPU|REG1|DOUT\(5) ) + ( \CPU|ULA1|Add1~18\ ))
-- \CPU|ULA1|Add1~22\ = CARRY(( (!\CPU|Decoder|Equal1~1_combout\ & (((!\memoriaDados|ram~544_combout\)))) # (\CPU|Decoder|Equal1~1_combout\ & (((!\ROM1|memROM~22_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( \CPU|REG1|DOUT\(5) ) + ( \CPU|ULA1|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_Equal1~1_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~22_combout\,
	datad => \memoriaDados|ALT_INV_ram~544_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(5),
	cin => \CPU|ULA1|Add1~18\,
	sumout => \CPU|ULA1|Add1~21_sumout\,
	cout => \CPU|ULA1|Add1~22\);

\CPU|ULA1|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[5]~5_combout\ = ( \CPU|ULA1|Add1~21_sumout\ & ( (!\CPU|Decoder|Operacao~0_combout\) # ((!\CPU|Decoder|Equal1~1_combout\ & ((\memoriaDados|ram~544_combout\))) # (\CPU|Decoder|Equal1~1_combout\ & (\ROM1|memROM~10_combout\))) ) ) # ( 
-- !\CPU|ULA1|Add1~21_sumout\ & ( (\CPU|Decoder|Operacao~0_combout\ & ((!\CPU|Decoder|Equal1~1_combout\ & ((\memoriaDados|ram~544_combout\))) # (\CPU|Decoder|Equal1~1_combout\ & (\ROM1|memROM~10_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101111100011111110100000001000011011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~10_combout\,
	datab => \CPU|Decoder|ALT_INV_Equal1~1_combout\,
	datac => \CPU|Decoder|ALT_INV_Operacao~0_combout\,
	datad => \memoriaDados|ALT_INV_ram~544_combout\,
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

\REGLEDR|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(5),
	ena => \DECODER_ENDERECOS|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLEDR|DOUT\(5));

\memoriaDados|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(6),
	ena => \memoriaDados|ram~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~21_q\);

\memoriaDados|ram~545\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~545_combout\ = ( !\ROM1|memROM~10_combout\ & ( !\ROM1|memROM~4_combout\ & ( \memoriaDados|ram~21_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~21_q\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \memoriaDados|ram~545_combout\);

\memoriaDados|ram~546\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~546_combout\ = ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~8_combout\ & ( \memoriaDados|ram~545_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \memoriaDados|ALT_INV_ram~545_combout\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \memoriaDados|ram~546_combout\);

\memoriaDados|ram~547\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~547_combout\ = (!\ROM1|memROM~6_combout\ & \memoriaDados|ram~546_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \memoriaDados|ALT_INV_ram~546_combout\,
	combout => \memoriaDados|ram~547_combout\);

\CPU|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~25_sumout\ = SUM(( (!\CPU|Decoder|Equal1~1_combout\ & (((\memoriaDados|ram~547_combout\)))) # (\CPU|Decoder|Equal1~1_combout\ & (!\CPU|PC|DOUT\(8) & (\ROM1|memROM~21_combout\))) ) + ( \CPU|REG1|DOUT\(6) ) + ( \CPU|ULA1|Add0~22\ ))
-- \CPU|ULA1|Add0~26\ = CARRY(( (!\CPU|Decoder|Equal1~1_combout\ & (((\memoriaDados|ram~547_combout\)))) # (\CPU|Decoder|Equal1~1_combout\ & (!\CPU|PC|DOUT\(8) & (\ROM1|memROM~21_combout\))) ) + ( \CPU|REG1|DOUT\(6) ) + ( \CPU|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_Equal1~1_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~21_combout\,
	datad => \memoriaDados|ALT_INV_ram~547_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(6),
	cin => \CPU|ULA1|Add0~22\,
	sumout => \CPU|ULA1|Add0~25_sumout\,
	cout => \CPU|ULA1|Add0~26\);

\CPU|ULA1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~25_sumout\ = SUM(( (!\CPU|Decoder|Equal1~1_combout\ & (((!\memoriaDados|ram~547_combout\)))) # (\CPU|Decoder|Equal1~1_combout\ & (((!\ROM1|memROM~21_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( \CPU|REG1|DOUT\(6) ) + ( \CPU|ULA1|Add1~22\ ))
-- \CPU|ULA1|Add1~26\ = CARRY(( (!\CPU|Decoder|Equal1~1_combout\ & (((!\memoriaDados|ram~547_combout\)))) # (\CPU|Decoder|Equal1~1_combout\ & (((!\ROM1|memROM~21_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( \CPU|REG1|DOUT\(6) ) + ( \CPU|ULA1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_Equal1~1_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~21_combout\,
	datad => \memoriaDados|ALT_INV_ram~547_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(6),
	cin => \CPU|ULA1|Add1~22\,
	sumout => \CPU|ULA1|Add1~25_sumout\,
	cout => \CPU|ULA1|Add1~26\);

\CPU|ULA1|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[6]~6_combout\ = ( \CPU|ULA1|Add1~25_sumout\ & ( (!\CPU|Decoder|Operacao~0_combout\) # ((!\CPU|Decoder|Equal1~1_combout\ & ((\memoriaDados|ram~547_combout\))) # (\CPU|Decoder|Equal1~1_combout\ & (\ROM1|memROM~6_combout\))) ) ) # ( 
-- !\CPU|ULA1|Add1~25_sumout\ & ( (\CPU|Decoder|Operacao~0_combout\ & ((!\CPU|Decoder|Equal1~1_combout\ & ((\memoriaDados|ram~547_combout\))) # (\CPU|Decoder|Equal1~1_combout\ & (\ROM1|memROM~6_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101111100011111110100000001000011011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datab => \CPU|Decoder|ALT_INV_Equal1~1_combout\,
	datac => \CPU|Decoder|ALT_INV_Operacao~0_combout\,
	datad => \memoriaDados|ALT_INV_ram~547_combout\,
	datae => \CPU|ULA1|ALT_INV_Add1~25_sumout\,
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

\REGLEDR|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(6),
	ena => \DECODER_ENDERECOS|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLEDR|DOUT\(6));

\memoriaDados|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(7),
	ena => \memoriaDados|ram~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~22_q\);

\memoriaDados|ram~548\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~548_combout\ = ( !\ROM1|memROM~8_combout\ & ( !\ROM1|memROM~4_combout\ & ( \memoriaDados|ram~22_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~22_q\,
	datae => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \memoriaDados|ram~548_combout\);

\memoriaDados|ram~549\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~549_combout\ = ( !\ROM1|memROM~10_combout\ & ( !\ROM1|memROM~2_combout\ & ( \memoriaDados|ram~548_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \memoriaDados|ALT_INV_ram~548_combout\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \memoriaDados|ram~549_combout\);

\memoriaDados|ram~550\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~550_combout\ = (!\ROM1|memROM~6_combout\ & \memoriaDados|ram~549_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \memoriaDados|ALT_INV_ram~549_combout\,
	combout => \memoriaDados|ram~550_combout\);

\CPU|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~29_sumout\ = SUM(( (!\CPU|Decoder|Equal1~1_combout\ & (((\memoriaDados|ram~550_combout\)))) # (\CPU|Decoder|Equal1~1_combout\ & (!\CPU|PC|DOUT\(8) & (\ROM1|memROM~22_combout\))) ) + ( \CPU|REG1|DOUT\(7) ) + ( \CPU|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_Equal1~1_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~22_combout\,
	datad => \memoriaDados|ALT_INV_ram~550_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(7),
	cin => \CPU|ULA1|Add0~26\,
	sumout => \CPU|ULA1|Add0~29_sumout\);

\CPU|ULA1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~29_sumout\ = SUM(( (!\CPU|Decoder|Equal1~1_combout\ & (((!\memoriaDados|ram~550_combout\)))) # (\CPU|Decoder|Equal1~1_combout\ & (((!\ROM1|memROM~22_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( \CPU|REG1|DOUT\(7) ) + ( \CPU|ULA1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_Equal1~1_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~22_combout\,
	datad => \memoriaDados|ALT_INV_ram~550_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(7),
	cin => \CPU|ULA1|Add1~26\,
	sumout => \CPU|ULA1|Add1~29_sumout\);

\CPU|ULA1|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[7]~7_combout\ = ( \CPU|ULA1|Add1~29_sumout\ & ( (!\CPU|Decoder|Operacao~0_combout\) # ((!\CPU|Decoder|Equal1~1_combout\ & ((\memoriaDados|ram~550_combout\))) # (\CPU|Decoder|Equal1~1_combout\ & (\ROM1|memROM~10_combout\))) ) ) # ( 
-- !\CPU|ULA1|Add1~29_sumout\ & ( (\CPU|Decoder|Operacao~0_combout\ & ((!\CPU|Decoder|Equal1~1_combout\ & ((\memoriaDados|ram~550_combout\))) # (\CPU|Decoder|Equal1~1_combout\ & (\ROM1|memROM~10_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101111100011111110100000001000011011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~10_combout\,
	datab => \CPU|Decoder|ALT_INV_Equal1~1_combout\,
	datac => \CPU|Decoder|ALT_INV_Operacao~0_combout\,
	datad => \memoriaDados|ALT_INV_ram~550_combout\,
	datae => \CPU|ULA1|ALT_INV_Add1~29_sumout\,
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

\REGLEDR|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(7),
	ena => \DECODER_ENDERECOS|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLEDR|DOUT\(7));

\REGLEDR8|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGLEDR8|DOUT~0_combout\ = (!\CPU|PC|DOUT\(8) & (\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & !\ROM1|memROM~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \REGLEDR8|DOUT~0_combout\);

\REGLEDR8|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGLEDR8|DOUT~1_combout\ = ( \DECODER_ENDERECOS|Equal7~0_combout\ & ( \REGLEDR8|DOUT~0_combout\ & ( (!\ROM1|memROM~18_combout\ & ((!\DECODER_BLOCOS|Equal7~0_combout\ & (\REGLEDR8|DOUT~q\)) # (\DECODER_BLOCOS|Equal7~0_combout\ & ((\CPU|REG1|DOUT\(0)))))) 
-- # (\ROM1|memROM~18_combout\ & (\REGLEDR8|DOUT~q\)) ) ) ) # ( !\DECODER_ENDERECOS|Equal7~0_combout\ & ( \REGLEDR8|DOUT~0_combout\ & ( \REGLEDR8|DOUT~q\ ) ) ) # ( \DECODER_ENDERECOS|Equal7~0_combout\ & ( !\REGLEDR8|DOUT~0_combout\ & ( \REGLEDR8|DOUT~q\ ) ) 
-- ) # ( !\DECODER_ENDERECOS|Equal7~0_combout\ & ( !\REGLEDR8|DOUT~0_combout\ & ( \REGLEDR8|DOUT~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGLEDR8|ALT_INV_DOUT~q\,
	datab => \ROM1|ALT_INV_memROM~18_combout\,
	datac => \CPU|REG1|ALT_INV_DOUT\(0),
	datad => \DECODER_BLOCOS|ALT_INV_Equal7~0_combout\,
	datae => \DECODER_ENDERECOS|ALT_INV_Equal7~0_combout\,
	dataf => \REGLEDR8|ALT_INV_DOUT~0_combout\,
	combout => \REGLEDR8|DOUT~1_combout\);

\REGLEDR8|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGLEDR8|DOUT~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLEDR8|DOUT~q\);

\DECODER_ENDERECOS|Equal7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_ENDERECOS|Equal7~2_combout\ = (!\ROM1|memROM~2_combout\ & (!\ROM1|memROM~18_combout\ & (\DECODER_BLOCOS|Equal7~0_combout\ & \DECODER_ENDERECOS|Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~18_combout\,
	datac => \DECODER_BLOCOS|ALT_INV_Equal7~0_combout\,
	datad => \DECODER_ENDERECOS|ALT_INV_Equal7~0_combout\,
	combout => \DECODER_ENDERECOS|Equal7~2_combout\);

\REGLEDR9|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGLEDR9|DOUT~0_combout\ = (!\ROM1|memROM~4_combout\ & (\REGLEDR9|DOUT~q\)) # (\ROM1|memROM~4_combout\ & ((!\DECODER_ENDERECOS|Equal7~2_combout\ & (\REGLEDR9|DOUT~q\)) # (\DECODER_ENDERECOS|Equal7~2_combout\ & ((\CPU|REG1|DOUT\(0))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101000111010101010100011101010101010001110101010101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGLEDR9|ALT_INV_DOUT~q\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \CPU|REG1|ALT_INV_DOUT\(0),
	datad => \DECODER_ENDERECOS|ALT_INV_Equal7~2_combout\,
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

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR8 <= \LEDR8~output_o\;

ww_LEDR9 <= \LEDR9~output_o\;

ww_saida_ROM(0) <= \saida_ROM[0]~output_o\;

ww_saida_ROM(1) <= \saida_ROM[1]~output_o\;

ww_saida_ROM(2) <= \saida_ROM[2]~output_o\;

ww_saida_ROM(3) <= \saida_ROM[3]~output_o\;

ww_saida_ROM(4) <= \saida_ROM[4]~output_o\;

ww_saida_ROM(5) <= \saida_ROM[5]~output_o\;

ww_saida_ROM(6) <= \saida_ROM[6]~output_o\;

ww_saida_ROM(7) <= \saida_ROM[7]~output_o\;

ww_saida_ROM(8) <= \saida_ROM[8]~output_o\;

ww_saida_ROM(9) <= \saida_ROM[9]~output_o\;

ww_saida_ROM(10) <= \saida_ROM[10]~output_o\;

ww_saida_ROM(11) <= \saida_ROM[11]~output_o\;

ww_saida_ROM(12) <= \saida_ROM[12]~output_o\;

ww_saida_RAM(0) <= \saida_RAM[0]~output_o\;

ww_saida_RAM(1) <= \saida_RAM[1]~output_o\;

ww_saida_RAM(2) <= \saida_RAM[2]~output_o\;

ww_saida_RAM(3) <= \saida_RAM[3]~output_o\;

ww_saida_RAM(4) <= \saida_RAM[4]~output_o\;

ww_saida_RAM(5) <= \saida_RAM[5]~output_o\;

ww_saida_RAM(6) <= \saida_RAM[6]~output_o\;

ww_saida_RAM(7) <= \saida_RAM[7]~output_o\;

ww_Teste_Endereco(0) <= \Teste_Endereco[0]~output_o\;

ww_Teste_Endereco(1) <= \Teste_Endereco[1]~output_o\;

ww_Teste_Endereco(2) <= \Teste_Endereco[2]~output_o\;

ww_Teste_Endereco(3) <= \Teste_Endereco[3]~output_o\;

ww_Teste_Endereco(4) <= \Teste_Endereco[4]~output_o\;

ww_Teste_Endereco(5) <= \Teste_Endereco[5]~output_o\;

ww_Teste_Endereco(6) <= \Teste_Endereco[6]~output_o\;

ww_Teste_Endereco(7) <= \Teste_Endereco[7]~output_o\;

ww_Teste_Endereco(8) <= \Teste_Endereco[8]~output_o\;
END structure;


