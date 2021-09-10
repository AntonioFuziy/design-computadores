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

-- DATE "09/10/2021 19:12:48"

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

ENTITY 	Aula5 IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	entradaA : BUFFER std_logic_vector(7 DOWNTO 0);
	SEL_MUX_PC : BUFFER std_logic_vector(1 DOWNTO 0);
	HABILITA : BUFFER std_logic;
	FLAG : BUFFER std_logic;
	SAIDA_REG_FLAG : BUFFER std_logic;
	OPERACAO : BUFFER std_logic_vector(1 DOWNTO 0);
	entradaB : BUFFER std_logic_vector(7 DOWNTO 0);
	TESTE_ENDERECO_MEM : BUFFER std_logic_vector(8 DOWNTO 0)
	);
END Aula5;

ARCHITECTURE structure OF Aula5 IS
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
SIGNAL ww_entradaA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_SEL_MUX_PC : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_HABILITA : std_logic;
SIGNAL ww_FLAG : std_logic;
SIGNAL ww_SAIDA_REG_FLAG : std_logic;
SIGNAL ww_OPERACAO : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_entradaB : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_TESTE_ENDERECO_MEM : std_logic_vector(8 DOWNTO 0);
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \entradaA[0]~output_o\ : std_logic;
SIGNAL \entradaA[1]~output_o\ : std_logic;
SIGNAL \entradaA[2]~output_o\ : std_logic;
SIGNAL \entradaA[3]~output_o\ : std_logic;
SIGNAL \entradaA[4]~output_o\ : std_logic;
SIGNAL \entradaA[5]~output_o\ : std_logic;
SIGNAL \entradaA[6]~output_o\ : std_logic;
SIGNAL \entradaA[7]~output_o\ : std_logic;
SIGNAL \SEL_MUX_PC[0]~output_o\ : std_logic;
SIGNAL \SEL_MUX_PC[1]~output_o\ : std_logic;
SIGNAL \HABILITA~output_o\ : std_logic;
SIGNAL \FLAG~output_o\ : std_logic;
SIGNAL \SAIDA_REG_FLAG~output_o\ : std_logic;
SIGNAL \OPERACAO[0]~output_o\ : std_logic;
SIGNAL \OPERACAO[1]~output_o\ : std_logic;
SIGNAL \entradaB[0]~output_o\ : std_logic;
SIGNAL \entradaB[1]~output_o\ : std_logic;
SIGNAL \entradaB[2]~output_o\ : std_logic;
SIGNAL \entradaB[3]~output_o\ : std_logic;
SIGNAL \entradaB[4]~output_o\ : std_logic;
SIGNAL \entradaB[5]~output_o\ : std_logic;
SIGNAL \entradaB[6]~output_o\ : std_logic;
SIGNAL \entradaB[7]~output_o\ : std_logic;
SIGNAL \TESTE_ENDERECO_MEM[0]~output_o\ : std_logic;
SIGNAL \TESTE_ENDERECO_MEM[1]~output_o\ : std_logic;
SIGNAL \TESTE_ENDERECO_MEM[2]~output_o\ : std_logic;
SIGNAL \TESTE_ENDERECO_MEM[3]~output_o\ : std_logic;
SIGNAL \TESTE_ENDERECO_MEM[4]~output_o\ : std_logic;
SIGNAL \TESTE_ENDERECO_MEM[5]~output_o\ : std_logic;
SIGNAL \TESTE_ENDERECO_MEM[6]~output_o\ : std_logic;
SIGNAL \TESTE_ENDERECO_MEM[7]~output_o\ : std_logic;
SIGNAL \TESTE_ENDERECO_MEM[8]~output_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \ROM1|memROM~12_combout\ : std_logic;
SIGNAL \ROM1|memROM~13_combout\ : std_logic;
SIGNAL \somaUm|Add0~2\ : std_logic;
SIGNAL \somaUm|Add0~6\ : std_logic;
SIGNAL \somaUm|Add0~9_sumout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \Decoder|Equal1~1_combout\ : std_logic;
SIGNAL \MUX4x2_PC|saida_MUX[2]~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~14_combout\ : std_logic;
SIGNAL \ROM1|memROM~15_combout\ : std_logic;
SIGNAL \somaUm|Add0~10\ : std_logic;
SIGNAL \somaUm|Add0~13_sumout\ : std_logic;
SIGNAL \MUX4x2_PC|saida_MUX[3]~4_combout\ : std_logic;
SIGNAL \somaUm|Add0~14\ : std_logic;
SIGNAL \somaUm|Add0~33_sumout\ : std_logic;
SIGNAL \MUX4x2_PC|saida_MUX[4]~9_combout\ : std_logic;
SIGNAL \somaUm|Add0~34\ : std_logic;
SIGNAL \somaUm|Add0~29_sumout\ : std_logic;
SIGNAL \MUX4x2_PC|saida_MUX[5]~8_combout\ : std_logic;
SIGNAL \somaUm|Add0~30\ : std_logic;
SIGNAL \somaUm|Add0~25_sumout\ : std_logic;
SIGNAL \MUX4x2_PC|saida_MUX[6]~7_combout\ : std_logic;
SIGNAL \somaUm|Add0~26\ : std_logic;
SIGNAL \somaUm|Add0~21_sumout\ : std_logic;
SIGNAL \MUX4x2_PC|saida_MUX[7]~6_combout\ : std_logic;
SIGNAL \ROM1|memROM~9_combout\ : std_logic;
SIGNAL \ROM1|memROM~16_combout\ : std_logic;
SIGNAL \ROM1|memROM~17_combout\ : std_logic;
SIGNAL \somaUm|Add0~5_sumout\ : std_logic;
SIGNAL \MUX4x2_PC|saida_MUX[1]~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \ROM1|memROM~8_combout\ : std_logic;
SIGNAL \LOGICA_DESVIO|SelMUX_ROM[1]~0_combout\ : std_logic;
SIGNAL \somaUm|Add0~22\ : std_logic;
SIGNAL \somaUm|Add0~17_sumout\ : std_logic;
SIGNAL \ROM1|memROM~18_combout\ : std_logic;
SIGNAL \MUX4x2_PC|saida_MUX[8]~5_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \Decoder|Operacao~0_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \ULA1|saida[5]~5_combout\ : std_logic;
SIGNAL \Decoder|OUTPUT[5]~0_combout\ : std_logic;
SIGNAL \memoriaDados|ram~161_combout\ : std_logic;
SIGNAL \memoriaDados|ram~22_q\ : std_logic;
SIGNAL \ROM1|memROM~10_combout\ : std_logic;
SIGNAL \ROM1|memROM~11_combout\ : std_logic;
SIGNAL \memoriaDados|ram~155_combout\ : std_logic;
SIGNAL \memoriaDados|ram~156_combout\ : std_logic;
SIGNAL \ROM1|memROM~19_combout\ : std_logic;
SIGNAL \ROM1|memROM~22_combout\ : std_logic;
SIGNAL \ROM1|memROM~21_combout\ : std_logic;
SIGNAL \ROM1|memROM~20_combout\ : std_logic;
SIGNAL \memoriaDados|ram~17_q\ : std_logic;
SIGNAL \memoriaDados|ram~145_combout\ : std_logic;
SIGNAL \memoriaDados|ram~146_combout\ : std_logic;
SIGNAL \ULA1|Add1~34_cout\ : std_logic;
SIGNAL \ULA1|Add1~22\ : std_logic;
SIGNAL \ULA1|Add1~25_sumout\ : std_logic;
SIGNAL \MUX1|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \ULA1|saida[1]~1_combout\ : std_logic;
SIGNAL \memoriaDados|ram~18_q\ : std_logic;
SIGNAL \memoriaDados|ram~147_combout\ : std_logic;
SIGNAL \memoriaDados|ram~148_combout\ : std_logic;
SIGNAL \ULA1|Add1~26\ : std_logic;
SIGNAL \ULA1|Add1~29_sumout\ : std_logic;
SIGNAL \MUX1|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \ULA1|saida[2]~2_combout\ : std_logic;
SIGNAL \memoriaDados|ram~19_q\ : std_logic;
SIGNAL \memoriaDados|ram~149_combout\ : std_logic;
SIGNAL \memoriaDados|ram~150_combout\ : std_logic;
SIGNAL \ULA1|Add1~30\ : std_logic;
SIGNAL \ULA1|Add1~1_sumout\ : std_logic;
SIGNAL \MUX1|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \ULA1|saida[3]~3_combout\ : std_logic;
SIGNAL \memoriaDados|ram~20_q\ : std_logic;
SIGNAL \memoriaDados|ram~151_combout\ : std_logic;
SIGNAL \memoriaDados|ram~152_combout\ : std_logic;
SIGNAL \ULA1|Add1~2\ : std_logic;
SIGNAL \ULA1|Add1~5_sumout\ : std_logic;
SIGNAL \MUX1|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \ULA1|saida[4]~4_combout\ : std_logic;
SIGNAL \memoriaDados|ram~21_q\ : std_logic;
SIGNAL \memoriaDados|ram~153_combout\ : std_logic;
SIGNAL \memoriaDados|ram~154_combout\ : std_logic;
SIGNAL \ULA1|Add1~6\ : std_logic;
SIGNAL \ULA1|Add1~9_sumout\ : std_logic;
SIGNAL \MUX1|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \ULA1|saida[6]~6_combout\ : std_logic;
SIGNAL \memoriaDados|ram~23_q\ : std_logic;
SIGNAL \memoriaDados|ram~157_combout\ : std_logic;
SIGNAL \memoriaDados|ram~158_combout\ : std_logic;
SIGNAL \ULA1|Add1~10\ : std_logic;
SIGNAL \ULA1|Add1~13_sumout\ : std_logic;
SIGNAL \MUX1|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \ULA1|saida[7]~7_combout\ : std_logic;
SIGNAL \memoriaDados|ram~24_q\ : std_logic;
SIGNAL \memoriaDados|ram~159_combout\ : std_logic;
SIGNAL \memoriaDados|ram~160_combout\ : std_logic;
SIGNAL \ULA1|Add1~14\ : std_logic;
SIGNAL \ULA1|Add1~17_sumout\ : std_logic;
SIGNAL \FLAG_IGUAL|DOUT~0_combout\ : std_logic;
SIGNAL \ULA1|Equal2~2_combout\ : std_logic;
SIGNAL \FLAG_IGUAL|DOUT~1_combout\ : std_logic;
SIGNAL \FLAG_IGUAL|DOUT~q\ : std_logic;
SIGNAL \MUX4x2_PC|saida_MUX[7]~0_combout\ : std_logic;
SIGNAL \somaUm|Add0~1_sumout\ : std_logic;
SIGNAL \MUX4x2_PC|saida_MUX[0]~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \Decoder|Equal1~0_combout\ : std_logic;
SIGNAL \ULA1|Add1~21_sumout\ : std_logic;
SIGNAL \MUX1|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \ULA1|Equal2~0_combout\ : std_logic;
SIGNAL \ULA1|Equal2~1_combout\ : std_logic;
SIGNAL \Decoder|OUTPUT[3]~1_combout\ : std_logic;
SIGNAL \Decoder|OUTPUT[4]~2_combout\ : std_logic;
SIGNAL \END_RET|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \REG1|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ROM1|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~146_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~154_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~17_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~153_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~145_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~150_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~152_combout\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~148_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~147_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~151_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~149_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~22_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~21_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~20_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~19_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Equal2~2_combout\ : std_logic;
SIGNAL \FLAG_IGUAL|ALT_INV_DOUT~0_combout\ : std_logic;
SIGNAL \END_RET|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ROM1|ALT_INV_memROM~18_combout\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~160_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~159_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~158_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~157_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~156_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~155_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \Decoder|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \Decoder|ALT_INV_OUTPUT[3]~1_combout\ : std_logic;
SIGNAL \Decoder|ALT_INV_Operacao~0_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \LOGICA_DESVIO|ALT_INV_SelMUX_ROM[1]~0_combout\ : std_logic;
SIGNAL \MUX4x2_PC|ALT_INV_saida_MUX[7]~0_combout\ : std_logic;
SIGNAL \FLAG_IGUAL|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \somaUm|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \somaUm|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \somaUm|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \somaUm|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \somaUm|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \somaUm|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \somaUm|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \somaUm|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \somaUm|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \REG1|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
entradaA <= ww_entradaA;
SEL_MUX_PC <= ww_SEL_MUX_PC;
HABILITA <= ww_HABILITA;
FLAG <= ww_FLAG;
SAIDA_REG_FLAG <= ww_SAIDA_REG_FLAG;
OPERACAO <= ww_OPERACAO;
entradaB <= ww_entradaB;
TESTE_ENDERECO_MEM <= ww_TESTE_ENDERECO_MEM;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ROM1|ALT_INV_memROM~12_combout\ <= NOT \ROM1|memROM~12_combout\;
\MUX1|ALT_INV_saida_MUX[4]~4_combout\ <= NOT \MUX1|saida_MUX[4]~4_combout\;
\memoriaDados|ALT_INV_ram~146_combout\ <= NOT \memoriaDados|ram~146_combout\;
\memoriaDados|ALT_INV_ram~154_combout\ <= NOT \memoriaDados|ram~154_combout\;
\ROM1|ALT_INV_memROM~17_combout\ <= NOT \ROM1|memROM~17_combout\;
\ROM1|ALT_INV_memROM~16_combout\ <= NOT \ROM1|memROM~16_combout\;
\memoriaDados|ALT_INV_ram~153_combout\ <= NOT \memoriaDados|ram~153_combout\;
\memoriaDados|ALT_INV_ram~145_combout\ <= NOT \memoriaDados|ram~145_combout\;
\ROM1|ALT_INV_memROM~15_combout\ <= NOT \ROM1|memROM~15_combout\;
\ROM1|ALT_INV_memROM~14_combout\ <= NOT \ROM1|memROM~14_combout\;
\memoriaDados|ALT_INV_ram~17_q\ <= NOT \memoriaDados|ram~17_q\;
\ROM1|ALT_INV_memROM~13_combout\ <= NOT \ROM1|memROM~13_combout\;
\MUX1|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \MUX1|saida_MUX[0]~0_combout\;
\memoriaDados|ALT_INV_ram~20_q\ <= NOT \memoriaDados|ram~20_q\;
\MUX1|ALT_INV_saida_MUX[2]~2_combout\ <= NOT \MUX1|saida_MUX[2]~2_combout\;
\memoriaDados|ALT_INV_ram~150_combout\ <= NOT \memoriaDados|ram~150_combout\;
\memoriaDados|ALT_INV_ram~19_q\ <= NOT \memoriaDados|ram~19_q\;
\MUX1|ALT_INV_saida_MUX[3]~3_combout\ <= NOT \MUX1|saida_MUX[3]~3_combout\;
\memoriaDados|ALT_INV_ram~152_combout\ <= NOT \memoriaDados|ram~152_combout\;
\MUX1|ALT_INV_saida_MUX[1]~1_combout\ <= NOT \MUX1|saida_MUX[1]~1_combout\;
\memoriaDados|ALT_INV_ram~148_combout\ <= NOT \memoriaDados|ram~148_combout\;
\memoriaDados|ALT_INV_ram~21_q\ <= NOT \memoriaDados|ram~21_q\;
\memoriaDados|ALT_INV_ram~147_combout\ <= NOT \memoriaDados|ram~147_combout\;
\memoriaDados|ALT_INV_ram~151_combout\ <= NOT \memoriaDados|ram~151_combout\;
\memoriaDados|ALT_INV_ram~18_q\ <= NOT \memoriaDados|ram~18_q\;
\memoriaDados|ALT_INV_ram~149_combout\ <= NOT \memoriaDados|ram~149_combout\;
\ROM1|ALT_INV_memROM~11_combout\ <= NOT \ROM1|memROM~11_combout\;
\ROM1|ALT_INV_memROM~22_combout\ <= NOT \ROM1|memROM~22_combout\;
\ROM1|ALT_INV_memROM~21_combout\ <= NOT \ROM1|memROM~21_combout\;
\ROM1|ALT_INV_memROM~20_combout\ <= NOT \ROM1|memROM~20_combout\;
\ROM1|ALT_INV_memROM~19_combout\ <= NOT \ROM1|memROM~19_combout\;
\ULA1|ALT_INV_Equal2~2_combout\ <= NOT \ULA1|Equal2~2_combout\;
\FLAG_IGUAL|ALT_INV_DOUT~0_combout\ <= NOT \FLAG_IGUAL|DOUT~0_combout\;
\END_RET|ALT_INV_DOUT\(4) <= NOT \END_RET|DOUT\(4);
\END_RET|ALT_INV_DOUT\(5) <= NOT \END_RET|DOUT\(5);
\END_RET|ALT_INV_DOUT\(6) <= NOT \END_RET|DOUT\(6);
\END_RET|ALT_INV_DOUT\(7) <= NOT \END_RET|DOUT\(7);
\ROM1|ALT_INV_memROM~18_combout\ <= NOT \ROM1|memROM~18_combout\;
\END_RET|ALT_INV_DOUT\(8) <= NOT \END_RET|DOUT\(8);
\END_RET|ALT_INV_DOUT\(3) <= NOT \END_RET|DOUT\(3);
\END_RET|ALT_INV_DOUT\(2) <= NOT \END_RET|DOUT\(2);
\END_RET|ALT_INV_DOUT\(1) <= NOT \END_RET|DOUT\(1);
\END_RET|ALT_INV_DOUT\(0) <= NOT \END_RET|DOUT\(0);
\MUX1|ALT_INV_saida_MUX[7]~7_combout\ <= NOT \MUX1|saida_MUX[7]~7_combout\;
\memoriaDados|ALT_INV_ram~160_combout\ <= NOT \memoriaDados|ram~160_combout\;
\memoriaDados|ALT_INV_ram~159_combout\ <= NOT \memoriaDados|ram~159_combout\;
\memoriaDados|ALT_INV_ram~24_q\ <= NOT \memoriaDados|ram~24_q\;
\MUX1|ALT_INV_saida_MUX[6]~6_combout\ <= NOT \MUX1|saida_MUX[6]~6_combout\;
\memoriaDados|ALT_INV_ram~158_combout\ <= NOT \memoriaDados|ram~158_combout\;
\memoriaDados|ALT_INV_ram~157_combout\ <= NOT \memoriaDados|ram~157_combout\;
\memoriaDados|ALT_INV_ram~23_q\ <= NOT \memoriaDados|ram~23_q\;
\MUX1|ALT_INV_saida_MUX[5]~5_combout\ <= NOT \MUX1|saida_MUX[5]~5_combout\;
\memoriaDados|ALT_INV_ram~156_combout\ <= NOT \memoriaDados|ram~156_combout\;
\memoriaDados|ALT_INV_ram~155_combout\ <= NOT \memoriaDados|ram~155_combout\;
\memoriaDados|ALT_INV_ram~22_q\ <= NOT \memoriaDados|ram~22_q\;
\ROM1|ALT_INV_memROM~10_combout\ <= NOT \ROM1|memROM~10_combout\;
\ROM1|ALT_INV_memROM~9_combout\ <= NOT \ROM1|memROM~9_combout\;
\Decoder|ALT_INV_Equal1~0_combout\ <= NOT \Decoder|Equal1~0_combout\;
\Decoder|ALT_INV_OUTPUT[3]~1_combout\ <= NOT \Decoder|OUTPUT[3]~1_combout\;
\Decoder|ALT_INV_Operacao~0_combout\ <= NOT \Decoder|Operacao~0_combout\;
\ULA1|ALT_INV_Equal2~0_combout\ <= NOT \ULA1|Equal2~0_combout\;
\LOGICA_DESVIO|ALT_INV_SelMUX_ROM[1]~0_combout\ <= NOT \LOGICA_DESVIO|SelMUX_ROM[1]~0_combout\;
\MUX4x2_PC|ALT_INV_saida_MUX[7]~0_combout\ <= NOT \MUX4x2_PC|saida_MUX[7]~0_combout\;
\FLAG_IGUAL|ALT_INV_DOUT~q\ <= NOT \FLAG_IGUAL|DOUT~q\;
\ROM1|ALT_INV_memROM~8_combout\ <= NOT \ROM1|memROM~8_combout\;
\ROM1|ALT_INV_memROM~7_combout\ <= NOT \ROM1|memROM~7_combout\;
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\ROM1|ALT_INV_memROM~3_combout\ <= NOT \ROM1|memROM~3_combout\;
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\PC|ALT_INV_DOUT\(4) <= NOT \PC|DOUT\(4);
\PC|ALT_INV_DOUT\(5) <= NOT \PC|DOUT\(5);
\PC|ALT_INV_DOUT\(6) <= NOT \PC|DOUT\(6);
\PC|ALT_INV_DOUT\(7) <= NOT \PC|DOUT\(7);
\PC|ALT_INV_DOUT\(8) <= NOT \PC|DOUT\(8);
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\PC|ALT_INV_DOUT\(3) <= NOT \PC|DOUT\(3);
\PC|ALT_INV_DOUT\(2) <= NOT \PC|DOUT\(2);
\PC|ALT_INV_DOUT\(1) <= NOT \PC|DOUT\(1);
\PC|ALT_INV_DOUT\(0) <= NOT \PC|DOUT\(0);
\somaUm|ALT_INV_Add0~33_sumout\ <= NOT \somaUm|Add0~33_sumout\;
\somaUm|ALT_INV_Add0~29_sumout\ <= NOT \somaUm|Add0~29_sumout\;
\somaUm|ALT_INV_Add0~25_sumout\ <= NOT \somaUm|Add0~25_sumout\;
\somaUm|ALT_INV_Add0~21_sumout\ <= NOT \somaUm|Add0~21_sumout\;
\somaUm|ALT_INV_Add0~17_sumout\ <= NOT \somaUm|Add0~17_sumout\;
\somaUm|ALT_INV_Add0~13_sumout\ <= NOT \somaUm|Add0~13_sumout\;
\somaUm|ALT_INV_Add0~9_sumout\ <= NOT \somaUm|Add0~9_sumout\;
\somaUm|ALT_INV_Add0~5_sumout\ <= NOT \somaUm|Add0~5_sumout\;
\somaUm|ALT_INV_Add0~1_sumout\ <= NOT \somaUm|Add0~1_sumout\;
\ULA1|ALT_INV_Add1~29_sumout\ <= NOT \ULA1|Add1~29_sumout\;
\ULA1|ALT_INV_Add1~25_sumout\ <= NOT \ULA1|Add1~25_sumout\;
\ULA1|ALT_INV_Add1~21_sumout\ <= NOT \ULA1|Add1~21_sumout\;
\ULA1|ALT_INV_Add1~17_sumout\ <= NOT \ULA1|Add1~17_sumout\;
\ULA1|ALT_INV_Add1~13_sumout\ <= NOT \ULA1|Add1~13_sumout\;
\ULA1|ALT_INV_Add1~9_sumout\ <= NOT \ULA1|Add1~9_sumout\;
\ULA1|ALT_INV_Add1~5_sumout\ <= NOT \ULA1|Add1~5_sumout\;
\ULA1|ALT_INV_Add1~1_sumout\ <= NOT \ULA1|Add1~1_sumout\;
\REG1|ALT_INV_DOUT\(7) <= NOT \REG1|DOUT\(7);
\REG1|ALT_INV_DOUT\(6) <= NOT \REG1|DOUT\(6);
\REG1|ALT_INV_DOUT\(5) <= NOT \REG1|DOUT\(5);
\REG1|ALT_INV_DOUT\(4) <= NOT \REG1|DOUT\(4);
\REG1|ALT_INV_DOUT\(3) <= NOT \REG1|DOUT\(3);
\REG1|ALT_INV_DOUT\(2) <= NOT \REG1|DOUT\(2);
\REG1|ALT_INV_DOUT\(1) <= NOT \REG1|DOUT\(1);
\REG1|ALT_INV_DOUT\(0) <= NOT \REG1|DOUT\(0);

\entradaA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG1|DOUT\(0),
	devoe => ww_devoe,
	o => \entradaA[0]~output_o\);

\entradaA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG1|DOUT\(1),
	devoe => ww_devoe,
	o => \entradaA[1]~output_o\);

\entradaA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG1|DOUT\(2),
	devoe => ww_devoe,
	o => \entradaA[2]~output_o\);

\entradaA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG1|DOUT\(3),
	devoe => ww_devoe,
	o => \entradaA[3]~output_o\);

\entradaA[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG1|DOUT\(4),
	devoe => ww_devoe,
	o => \entradaA[4]~output_o\);

\entradaA[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG1|DOUT\(5),
	devoe => ww_devoe,
	o => \entradaA[5]~output_o\);

\entradaA[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG1|DOUT\(6),
	devoe => ww_devoe,
	o => \entradaA[6]~output_o\);

\entradaA[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG1|DOUT\(7),
	devoe => ww_devoe,
	o => \entradaA[7]~output_o\);

\SEL_MUX_PC[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX4x2_PC|ALT_INV_saida_MUX[7]~0_combout\,
	devoe => ww_devoe,
	o => \SEL_MUX_PC[0]~output_o\);

\SEL_MUX_PC[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LOGICA_DESVIO|SelMUX_ROM[1]~0_combout\,
	devoe => ww_devoe,
	o => \SEL_MUX_PC[1]~output_o\);

\HABILITA~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder|OUTPUT[5]~0_combout\,
	devoe => ww_devoe,
	o => \HABILITA~output_o\);

\FLAG~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Equal2~1_combout\,
	devoe => ww_devoe,
	o => \FLAG~output_o\);

\SAIDA_REG_FLAG~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FLAG_IGUAL|DOUT~q\,
	devoe => ww_devoe,
	o => \SAIDA_REG_FLAG~output_o\);

\OPERACAO[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder|ALT_INV_OUTPUT[3]~1_combout\,
	devoe => ww_devoe,
	o => \OPERACAO[0]~output_o\);

\OPERACAO[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder|OUTPUT[4]~2_combout\,
	devoe => ww_devoe,
	o => \OPERACAO[1]~output_o\);

\entradaB[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|saida_MUX[0]~0_combout\,
	devoe => ww_devoe,
	o => \entradaB[0]~output_o\);

\entradaB[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|saida_MUX[1]~1_combout\,
	devoe => ww_devoe,
	o => \entradaB[1]~output_o\);

\entradaB[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|saida_MUX[2]~2_combout\,
	devoe => ww_devoe,
	o => \entradaB[2]~output_o\);

\entradaB[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|saida_MUX[3]~3_combout\,
	devoe => ww_devoe,
	o => \entradaB[3]~output_o\);

\entradaB[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|saida_MUX[4]~4_combout\,
	devoe => ww_devoe,
	o => \entradaB[4]~output_o\);

\entradaB[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|saida_MUX[5]~5_combout\,
	devoe => ww_devoe,
	o => \entradaB[5]~output_o\);

\entradaB[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|saida_MUX[6]~6_combout\,
	devoe => ww_devoe,
	o => \entradaB[6]~output_o\);

\entradaB[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|saida_MUX[7]~7_combout\,
	devoe => ww_devoe,
	o => \entradaB[7]~output_o\);

\TESTE_ENDERECO_MEM[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(0),
	devoe => ww_devoe,
	o => \TESTE_ENDERECO_MEM[0]~output_o\);

\TESTE_ENDERECO_MEM[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(1),
	devoe => ww_devoe,
	o => \TESTE_ENDERECO_MEM[1]~output_o\);

\TESTE_ENDERECO_MEM[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(2),
	devoe => ww_devoe,
	o => \TESTE_ENDERECO_MEM[2]~output_o\);

\TESTE_ENDERECO_MEM[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(3),
	devoe => ww_devoe,
	o => \TESTE_ENDERECO_MEM[3]~output_o\);

\TESTE_ENDERECO_MEM[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(4),
	devoe => ww_devoe,
	o => \TESTE_ENDERECO_MEM[4]~output_o\);

\TESTE_ENDERECO_MEM[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(5),
	devoe => ww_devoe,
	o => \TESTE_ENDERECO_MEM[5]~output_o\);

\TESTE_ENDERECO_MEM[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(6),
	devoe => ww_devoe,
	o => \TESTE_ENDERECO_MEM[6]~output_o\);

\TESTE_ENDERECO_MEM[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(7),
	devoe => ww_devoe,
	o => \TESTE_ENDERECO_MEM[7]~output_o\);

\TESTE_ENDERECO_MEM[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(8),
	devoe => ww_devoe,
	o => \TESTE_ENDERECO_MEM[8]~output_o\);

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

\ROM1|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~12_combout\ = (!\PC|DOUT\(0) & (!\PC|DOUT\(2) & (!\PC|DOUT\(1) $ (\PC|DOUT\(3))))) # (\PC|DOUT\(0) & (!\PC|DOUT\(1) & ((!\PC|DOUT\(3)) # (\PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010000100100110001000010010011000100001001001100010000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~12_combout\);

\ROM1|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~13_combout\ = (!\PC|DOUT\(8) & (\ROM1|memROM~9_combout\ & \ROM1|memROM~12_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \ROM1|memROM~13_combout\);

\somaUm|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaUm|Add0~1_sumout\ = SUM(( \PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \somaUm|Add0~2\ = CARRY(( \PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \somaUm|Add0~1_sumout\,
	cout => \somaUm|Add0~2\);

\somaUm|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaUm|Add0~5_sumout\ = SUM(( \PC|DOUT\(1) ) + ( GND ) + ( \somaUm|Add0~2\ ))
-- \somaUm|Add0~6\ = CARRY(( \PC|DOUT\(1) ) + ( GND ) + ( \somaUm|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(1),
	cin => \somaUm|Add0~2\,
	sumout => \somaUm|Add0~5_sumout\,
	cout => \somaUm|Add0~6\);

\somaUm|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaUm|Add0~9_sumout\ = SUM(( \PC|DOUT\(2) ) + ( GND ) + ( \somaUm|Add0~6\ ))
-- \somaUm|Add0~10\ = CARRY(( \PC|DOUT\(2) ) + ( GND ) + ( \somaUm|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(2),
	cin => \somaUm|Add0~6\,
	sumout => \somaUm|Add0~9_sumout\,
	cout => \somaUm|Add0~10\);

\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = (!\PC|DOUT\(3) & (!\PC|DOUT\(2) & (!\PC|DOUT\(0) $ (!\PC|DOUT\(1))))) # (\PC|DOUT\(3) & ((!\PC|DOUT\(0) & (!\PC|DOUT\(1))) # (\PC|DOUT\(0) & ((\PC|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000010001101011000001000110101100000100011010110000010001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~5_combout\);

\ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~7_combout\ = (!\PC|DOUT\(0) & (!\PC|DOUT\(1) & (!\PC|DOUT\(2) & !\PC|DOUT\(3)))) # (\PC|DOUT\(0) & (\PC|DOUT\(1) & ((\PC|DOUT\(3)) # (\PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000100010001100000010001000110000001000100011000000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~7_combout\);

\Decoder|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder|Equal1~1_combout\ = ( \ROM1|memROM~7_combout\ & ( (\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~3_combout\ & !\ROM1|memROM~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \Decoder|Equal1~1_combout\);

\END_RET|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \somaUm|Add0~9_sumout\,
	ena => \Decoder|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \END_RET|DOUT\(2));

\MUX4x2_PC|saida_MUX[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX4x2_PC|saida_MUX[2]~3_combout\ = ( \somaUm|Add0~9_sumout\ & ( (!\LOGICA_DESVIO|SelMUX_ROM[1]~0_combout\ & (((\ROM1|memROM~13_combout\)) # (\MUX4x2_PC|saida_MUX[7]~0_combout\))) # (\LOGICA_DESVIO|SelMUX_ROM[1]~0_combout\ & (((\END_RET|DOUT\(2))))) ) ) 
-- # ( !\somaUm|Add0~9_sumout\ & ( (!\LOGICA_DESVIO|SelMUX_ROM[1]~0_combout\ & (!\MUX4x2_PC|saida_MUX[7]~0_combout\ & (\ROM1|memROM~13_combout\))) # (\LOGICA_DESVIO|SelMUX_ROM[1]~0_combout\ & (((\END_RET|DOUT\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000111011010011000111111100001000001110110100110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX4x2_PC|ALT_INV_saida_MUX[7]~0_combout\,
	datab => \LOGICA_DESVIO|ALT_INV_SelMUX_ROM[1]~0_combout\,
	datac => \ROM1|ALT_INV_memROM~13_combout\,
	datad => \END_RET|ALT_INV_DOUT\(2),
	datae => \somaUm|ALT_INV_Add0~9_sumout\,
	combout => \MUX4x2_PC|saida_MUX[2]~3_combout\);

\PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX4x2_PC|saida_MUX[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(2));

\ROM1|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~14_combout\ = (!\PC|DOUT\(0) & (((!\PC|DOUT\(2) & !\PC|DOUT\(3))))) # (\PC|DOUT\(0) & (!\PC|DOUT\(1) & (\PC|DOUT\(2) & \PC|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000100101000000000010010100000000001001010000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~14_combout\);

\ROM1|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~15_combout\ = (!\PC|DOUT\(8) & (\ROM1|memROM~9_combout\ & \ROM1|memROM~14_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \ROM1|memROM~15_combout\);

\somaUm|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaUm|Add0~13_sumout\ = SUM(( \PC|DOUT\(3) ) + ( GND ) + ( \somaUm|Add0~10\ ))
-- \somaUm|Add0~14\ = CARRY(( \PC|DOUT\(3) ) + ( GND ) + ( \somaUm|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(3),
	cin => \somaUm|Add0~10\,
	sumout => \somaUm|Add0~13_sumout\,
	cout => \somaUm|Add0~14\);

\END_RET|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \somaUm|Add0~13_sumout\,
	ena => \Decoder|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \END_RET|DOUT\(3));

\MUX4x2_PC|saida_MUX[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX4x2_PC|saida_MUX[3]~4_combout\ = ( \somaUm|Add0~13_sumout\ & ( (!\LOGICA_DESVIO|SelMUX_ROM[1]~0_combout\ & (((\ROM1|memROM~15_combout\)) # (\MUX4x2_PC|saida_MUX[7]~0_combout\))) # (\LOGICA_DESVIO|SelMUX_ROM[1]~0_combout\ & (((\END_RET|DOUT\(3))))) ) ) 
-- # ( !\somaUm|Add0~13_sumout\ & ( (!\LOGICA_DESVIO|SelMUX_ROM[1]~0_combout\ & (!\MUX4x2_PC|saida_MUX[7]~0_combout\ & (\ROM1|memROM~15_combout\))) # (\LOGICA_DESVIO|SelMUX_ROM[1]~0_combout\ & (((\END_RET|DOUT\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000111011010011000111111100001000001110110100110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX4x2_PC|ALT_INV_saida_MUX[7]~0_combout\,
	datab => \LOGICA_DESVIO|ALT_INV_SelMUX_ROM[1]~0_combout\,
	datac => \ROM1|ALT_INV_memROM~15_combout\,
	datad => \END_RET|ALT_INV_DOUT\(3),
	datae => \somaUm|ALT_INV_Add0~13_sumout\,
	combout => \MUX4x2_PC|saida_MUX[3]~4_combout\);

\PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX4x2_PC|saida_MUX[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(3));

\somaUm|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaUm|Add0~33_sumout\ = SUM(( \PC|DOUT\(4) ) + ( GND ) + ( \somaUm|Add0~14\ ))
-- \somaUm|Add0~34\ = CARRY(( \PC|DOUT\(4) ) + ( GND ) + ( \somaUm|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(4),
	cin => \somaUm|Add0~14\,
	sumout => \somaUm|Add0~33_sumout\,
	cout => \somaUm|Add0~34\);

\END_RET|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \somaUm|Add0~33_sumout\,
	ena => \Decoder|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \END_RET|DOUT\(4));

\MUX4x2_PC|saida_MUX[4]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX4x2_PC|saida_MUX[4]~9_combout\ = (\MUX4x2_PC|saida_MUX[7]~0_combout\ & ((!\LOGICA_DESVIO|SelMUX_ROM[1]~0_combout\ & ((\somaUm|Add0~33_sumout\))) # (\LOGICA_DESVIO|SelMUX_ROM[1]~0_combout\ & (\END_RET|DOUT\(4)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010100000001010001010000000101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX4x2_PC|ALT_INV_saida_MUX[7]~0_combout\,
	datab => \LOGICA_DESVIO|ALT_INV_SelMUX_ROM[1]~0_combout\,
	datac => \END_RET|ALT_INV_DOUT\(4),
	datad => \somaUm|ALT_INV_Add0~33_sumout\,
	combout => \MUX4x2_PC|saida_MUX[4]~9_combout\);

\PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX4x2_PC|saida_MUX[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(4));

\somaUm|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaUm|Add0~29_sumout\ = SUM(( \PC|DOUT\(5) ) + ( GND ) + ( \somaUm|Add0~34\ ))
-- \somaUm|Add0~30\ = CARRY(( \PC|DOUT\(5) ) + ( GND ) + ( \somaUm|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(5),
	cin => \somaUm|Add0~34\,
	sumout => \somaUm|Add0~29_sumout\,
	cout => \somaUm|Add0~30\);

\END_RET|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \somaUm|Add0~29_sumout\,
	ena => \Decoder|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \END_RET|DOUT\(5));

\MUX4x2_PC|saida_MUX[5]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX4x2_PC|saida_MUX[5]~8_combout\ = (\MUX4x2_PC|saida_MUX[7]~0_combout\ & ((!\LOGICA_DESVIO|SelMUX_ROM[1]~0_combout\ & ((\somaUm|Add0~29_sumout\))) # (\LOGICA_DESVIO|SelMUX_ROM[1]~0_combout\ & (\END_RET|DOUT\(5)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010100000001010001010000000101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX4x2_PC|ALT_INV_saida_MUX[7]~0_combout\,
	datab => \LOGICA_DESVIO|ALT_INV_SelMUX_ROM[1]~0_combout\,
	datac => \END_RET|ALT_INV_DOUT\(5),
	datad => \somaUm|ALT_INV_Add0~29_sumout\,
	combout => \MUX4x2_PC|saida_MUX[5]~8_combout\);

\PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX4x2_PC|saida_MUX[5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(5));

\somaUm|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaUm|Add0~25_sumout\ = SUM(( \PC|DOUT\(6) ) + ( GND ) + ( \somaUm|Add0~30\ ))
-- \somaUm|Add0~26\ = CARRY(( \PC|DOUT\(6) ) + ( GND ) + ( \somaUm|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(6),
	cin => \somaUm|Add0~30\,
	sumout => \somaUm|Add0~25_sumout\,
	cout => \somaUm|Add0~26\);

\END_RET|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \somaUm|Add0~25_sumout\,
	ena => \Decoder|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \END_RET|DOUT\(6));

\MUX4x2_PC|saida_MUX[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX4x2_PC|saida_MUX[6]~7_combout\ = (\MUX4x2_PC|saida_MUX[7]~0_combout\ & ((!\LOGICA_DESVIO|SelMUX_ROM[1]~0_combout\ & ((\somaUm|Add0~25_sumout\))) # (\LOGICA_DESVIO|SelMUX_ROM[1]~0_combout\ & (\END_RET|DOUT\(6)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010100000001010001010000000101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX4x2_PC|ALT_INV_saida_MUX[7]~0_combout\,
	datab => \LOGICA_DESVIO|ALT_INV_SelMUX_ROM[1]~0_combout\,
	datac => \END_RET|ALT_INV_DOUT\(6),
	datad => \somaUm|ALT_INV_Add0~25_sumout\,
	combout => \MUX4x2_PC|saida_MUX[6]~7_combout\);

\PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX4x2_PC|saida_MUX[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(6));

\somaUm|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaUm|Add0~21_sumout\ = SUM(( \PC|DOUT\(7) ) + ( GND ) + ( \somaUm|Add0~26\ ))
-- \somaUm|Add0~22\ = CARRY(( \PC|DOUT\(7) ) + ( GND ) + ( \somaUm|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(7),
	cin => \somaUm|Add0~26\,
	sumout => \somaUm|Add0~21_sumout\,
	cout => \somaUm|Add0~22\);

\END_RET|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \somaUm|Add0~21_sumout\,
	ena => \Decoder|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \END_RET|DOUT\(7));

\MUX4x2_PC|saida_MUX[7]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX4x2_PC|saida_MUX[7]~6_combout\ = (\MUX4x2_PC|saida_MUX[7]~0_combout\ & ((!\LOGICA_DESVIO|SelMUX_ROM[1]~0_combout\ & ((\somaUm|Add0~21_sumout\))) # (\LOGICA_DESVIO|SelMUX_ROM[1]~0_combout\ & (\END_RET|DOUT\(7)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010100000001010001010000000101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX4x2_PC|ALT_INV_saida_MUX[7]~0_combout\,
	datab => \LOGICA_DESVIO|ALT_INV_SelMUX_ROM[1]~0_combout\,
	datac => \END_RET|ALT_INV_DOUT\(7),
	datad => \somaUm|ALT_INV_Add0~21_sumout\,
	combout => \MUX4x2_PC|saida_MUX[7]~6_combout\);

\PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX4x2_PC|saida_MUX[7]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(7));

\ROM1|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~9_combout\ = (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & (!\PC|DOUT\(5) & !\PC|DOUT\(4))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(5),
	datad => \PC|ALT_INV_DOUT\(4),
	combout => \ROM1|memROM~9_combout\);

\ROM1|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~16_combout\ = (!\PC|DOUT\(0) & (!\PC|DOUT\(1) & ((!\PC|DOUT\(2)) # (\PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010001000100000001000100010000000100010001000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~16_combout\);

\ROM1|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~17_combout\ = (!\PC|DOUT\(8) & (\ROM1|memROM~9_combout\ & \ROM1|memROM~16_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~16_combout\,
	combout => \ROM1|memROM~17_combout\);

\END_RET|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \somaUm|Add0~5_sumout\,
	ena => \Decoder|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \END_RET|DOUT\(1));

\MUX4x2_PC|saida_MUX[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX4x2_PC|saida_MUX[1]~2_combout\ = ( \somaUm|Add0~5_sumout\ & ( (!\LOGICA_DESVIO|SelMUX_ROM[1]~0_combout\ & (((\ROM1|memROM~17_combout\)) # (\MUX4x2_PC|saida_MUX[7]~0_combout\))) # (\LOGICA_DESVIO|SelMUX_ROM[1]~0_combout\ & (((\END_RET|DOUT\(1))))) ) ) 
-- # ( !\somaUm|Add0~5_sumout\ & ( (!\LOGICA_DESVIO|SelMUX_ROM[1]~0_combout\ & (!\MUX4x2_PC|saida_MUX[7]~0_combout\ & (\ROM1|memROM~17_combout\))) # (\LOGICA_DESVIO|SelMUX_ROM[1]~0_combout\ & (((\END_RET|DOUT\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000111011010011000111111100001000001110110100110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX4x2_PC|ALT_INV_saida_MUX[7]~0_combout\,
	datab => \LOGICA_DESVIO|ALT_INV_SelMUX_ROM[1]~0_combout\,
	datac => \ROM1|ALT_INV_memROM~17_combout\,
	datad => \END_RET|ALT_INV_DOUT\(1),
	datae => \somaUm|ALT_INV_Add0~5_sumout\,
	combout => \MUX4x2_PC|saida_MUX[1]~2_combout\);

\PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX4x2_PC|saida_MUX[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(1));

\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = (!\PC|DOUT\(3) & (!\PC|DOUT\(0) $ ((!\PC|DOUT\(1))))) # (\PC|DOUT\(3) & ((!\PC|DOUT\(2) & (!\PC|DOUT\(0))) # (\PC|DOUT\(2) & ((!\PC|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010101100011001101010110001100110101011000110011010101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~3_combout\);

\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = (\ROM1|memROM~1_combout\ & \ROM1|memROM~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \ROM1|memROM~4_combout\);

\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = (\ROM1|memROM~1_combout\ & \ROM1|memROM~5_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \ROM1|memROM~6_combout\);

\ROM1|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~8_combout\ = (\ROM1|memROM~1_combout\ & \ROM1|memROM~7_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \ROM1|memROM~8_combout\);

\LOGICA_DESVIO|SelMUX_ROM[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICA_DESVIO|SelMUX_ROM[1]~0_combout\ = (!\ROM1|memROM~2_combout\ & (!\ROM1|memROM~4_combout\ & (\ROM1|memROM~6_combout\ & \ROM1|memROM~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \LOGICA_DESVIO|SelMUX_ROM[1]~0_combout\);

\somaUm|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaUm|Add0~17_sumout\ = SUM(( \PC|DOUT\(8) ) + ( GND ) + ( \somaUm|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(8),
	cin => \somaUm|Add0~22\,
	sumout => \somaUm|Add0~17_sumout\);

\END_RET|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \somaUm|Add0~17_sumout\,
	ena => \Decoder|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \END_RET|DOUT\(8));

\ROM1|memROM~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~18_combout\ = (!\PC|DOUT\(0) & (\PC|DOUT\(1) & (\PC|DOUT\(2) & !\PC|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~18_combout\);

\MUX4x2_PC|saida_MUX[8]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX4x2_PC|saida_MUX[8]~5_combout\ = ( \ROM1|memROM~18_combout\ & ( \somaUm|Add0~17_sumout\ & ( (!\LOGICA_DESVIO|SelMUX_ROM[1]~0_combout\ & (((\MUX4x2_PC|saida_MUX[7]~0_combout\)) # (\ROM1|memROM~1_combout\))) # (\LOGICA_DESVIO|SelMUX_ROM[1]~0_combout\ & 
-- (((\END_RET|DOUT\(8))))) ) ) ) # ( !\ROM1|memROM~18_combout\ & ( \somaUm|Add0~17_sumout\ & ( (!\LOGICA_DESVIO|SelMUX_ROM[1]~0_combout\ & (\MUX4x2_PC|saida_MUX[7]~0_combout\)) # (\LOGICA_DESVIO|SelMUX_ROM[1]~0_combout\ & ((\END_RET|DOUT\(8)))) ) ) ) # ( 
-- \ROM1|memROM~18_combout\ & ( !\somaUm|Add0~17_sumout\ & ( (!\LOGICA_DESVIO|SelMUX_ROM[1]~0_combout\ & (\ROM1|memROM~1_combout\ & (!\MUX4x2_PC|saida_MUX[7]~0_combout\))) # (\LOGICA_DESVIO|SelMUX_ROM[1]~0_combout\ & (((\END_RET|DOUT\(8))))) ) ) ) # ( 
-- !\ROM1|memROM~18_combout\ & ( !\somaUm|Add0~17_sumout\ & ( (\LOGICA_DESVIO|SelMUX_ROM[1]~0_combout\ & \END_RET|DOUT\(8)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111010000000100111100110000001111110111000001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \MUX4x2_PC|ALT_INV_saida_MUX[7]~0_combout\,
	datac => \LOGICA_DESVIO|ALT_INV_SelMUX_ROM[1]~0_combout\,
	datad => \END_RET|ALT_INV_DOUT\(8),
	datae => \ROM1|ALT_INV_memROM~18_combout\,
	dataf => \somaUm|ALT_INV_Add0~17_sumout\,
	combout => \MUX4x2_PC|saida_MUX[8]~5_combout\);

\PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX4x2_PC|saida_MUX[8]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(8));

\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = ( !\PC|DOUT\(4) & ( (!\PC|DOUT\(8) & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\PC|DOUT\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \PC|ALT_INV_DOUT\(5),
	datae => \PC|ALT_INV_DOUT\(4),
	combout => \ROM1|memROM~1_combout\);

\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = (\ROM1|memROM~0_combout\ & \ROM1|memROM~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~2_combout\);

\Decoder|Operacao~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder|Operacao~0_combout\ = (!\ROM1|memROM~8_combout\ & (!\ROM1|memROM~6_combout\ & (!\ROM1|memROM~4_combout\ $ (!\ROM1|memROM~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000010000000001000001000000000100000100000000010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \Decoder|Operacao~0_combout\);

\MUX1|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[5]~5_combout\ = (!\Decoder|Equal1~0_combout\ & \memoriaDados|ram~156_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_Equal1~0_combout\,
	datab => \memoriaDados|ALT_INV_ram~156_combout\,
	combout => \MUX1|saida_MUX[5]~5_combout\);

\ULA1|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[5]~5_combout\ = (!\Decoder|Operacao~0_combout\ & (\ULA1|Add1~9_sumout\)) # (\Decoder|Operacao~0_combout\ & ((\MUX1|saida_MUX[5]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add1~9_sumout\,
	datab => \Decoder|ALT_INV_Operacao~0_combout\,
	datac => \MUX1|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \ULA1|saida[5]~5_combout\);

\Decoder|OUTPUT[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder|OUTPUT[5]~0_combout\ = (!\ROM1|memROM~8_combout\ & (!\ROM1|memROM~4_combout\ $ (((!\ROM1|memROM~6_combout\ & !\ROM1|memROM~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100010001000001010001000100000101000100010000010100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \Decoder|OUTPUT[5]~0_combout\);

\REG1|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => VCC,
	asdata => \ULA1|saida[5]~5_combout\,
	sload => VCC,
	ena => \Decoder|OUTPUT[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(5));

\memoriaDados|ram~161\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~161_combout\ = ( \ROM1|memROM~1_combout\ & ( (!\PC|DOUT\(3) & (\PC|DOUT\(2) & (\PC|DOUT\(1) & !\PC|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \PC|ALT_INV_DOUT\(2),
	datac => \PC|ALT_INV_DOUT\(1),
	datad => \PC|ALT_INV_DOUT\(0),
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \memoriaDados|ram~161_combout\);

\memoriaDados|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(5),
	ena => \memoriaDados|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~22_q\);

\ROM1|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~10_combout\ = (!\PC|DOUT\(1) & ((!\PC|DOUT\(3) & (\PC|DOUT\(0))) # (\PC|DOUT\(3) & ((\PC|DOUT\(2)))))) # (\PC|DOUT\(1) & (!\PC|DOUT\(0) & (!\PC|DOUT\(2) & !\PC|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110010000001100011001000000110001100100000011000110010000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~10_combout\);

\ROM1|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~11_combout\ = (!\PC|DOUT\(8) & (\ROM1|memROM~9_combout\ & \ROM1|memROM~10_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \ROM1|memROM~11_combout\);

\memoriaDados|ram~155\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~155_combout\ = ( !\ROM1|memROM~11_combout\ & ( !\ROM1|memROM~17_combout\ & ( \memoriaDados|ram~22_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~22_q\,
	datae => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \memoriaDados|ram~155_combout\);

\memoriaDados|ram~156\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~156_combout\ = ( !\ROM1|memROM~13_combout\ & ( !\ROM1|memROM~15_combout\ & ( \memoriaDados|ram~155_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~155_combout\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \memoriaDados|ram~156_combout\);

\ROM1|memROM~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~19_combout\ = (!\ROM1|memROM~9_combout\) # (!\ROM1|memROM~14_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111011101110111011101110111011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~9_combout\,
	datab => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \ROM1|memROM~19_combout\);

\ROM1|memROM~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~22_combout\ = (!\ROM1|memROM~9_combout\) # (!\ROM1|memROM~12_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111011101110111011101110111011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~9_combout\,
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \ROM1|memROM~22_combout\);

\ROM1|memROM~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~21_combout\ = (!\ROM1|memROM~9_combout\) # (!\ROM1|memROM~16_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111011101110111011101110111011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~9_combout\,
	datab => \ROM1|ALT_INV_memROM~16_combout\,
	combout => \ROM1|memROM~21_combout\);

\ROM1|memROM~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~20_combout\ = (\ROM1|memROM~9_combout\ & \ROM1|memROM~10_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~9_combout\,
	datab => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \ROM1|memROM~20_combout\);

\memoriaDados|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(0),
	ena => \memoriaDados|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~17_q\);

\memoriaDados|ram~145\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~145_combout\ = ( !\ROM1|memROM~13_combout\ & ( !\ROM1|memROM~15_combout\ & ( \memoriaDados|ram~17_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~17_q\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \memoriaDados|ram~145_combout\);

\memoriaDados|ram~146\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~146_combout\ = ( !\ROM1|memROM~11_combout\ & ( !\ROM1|memROM~17_combout\ & ( \memoriaDados|ram~145_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~145_combout\,
	datae => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \memoriaDados|ram~146_combout\);

\ULA1|Add1~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~34_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \ULA1|Add1~34_cout\);

\ULA1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~21_sumout\ = SUM(( (!\Decoder|Equal1~0_combout\ & (((!\memoriaDados|ram~146_combout\)))) # (\Decoder|Equal1~0_combout\ & (((!\ROM1|memROM~20_combout\)) # (\PC|DOUT\(8)))) ) + ( \REG1|DOUT\(0) ) + ( \ULA1|Add1~34_cout\ ))
-- \ULA1|Add1~22\ = CARRY(( (!\Decoder|Equal1~0_combout\ & (((!\memoriaDados|ram~146_combout\)))) # (\Decoder|Equal1~0_combout\ & (((!\ROM1|memROM~20_combout\)) # (\PC|DOUT\(8)))) ) + ( \REG1|DOUT\(0) ) + ( \ULA1|Add1~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_Equal1~0_combout\,
	datab => \PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~20_combout\,
	datad => \memoriaDados|ALT_INV_ram~146_combout\,
	dataf => \REG1|ALT_INV_DOUT\(0),
	cin => \ULA1|Add1~34_cout\,
	sumout => \ULA1|Add1~21_sumout\,
	cout => \ULA1|Add1~22\);

\ULA1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~25_sumout\ = SUM(( (!\Decoder|Equal1~0_combout\ & (((!\memoriaDados|ram~148_combout\)))) # (\Decoder|Equal1~0_combout\ & (((\ROM1|memROM~21_combout\)) # (\PC|DOUT\(8)))) ) + ( \REG1|DOUT\(1) ) + ( \ULA1|Add1~22\ ))
-- \ULA1|Add1~26\ = CARRY(( (!\Decoder|Equal1~0_combout\ & (((!\memoriaDados|ram~148_combout\)))) # (\Decoder|Equal1~0_combout\ & (((\ROM1|memROM~21_combout\)) # (\PC|DOUT\(8)))) ) + ( \REG1|DOUT\(1) ) + ( \ULA1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001011111100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_Equal1~0_combout\,
	datab => \PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~21_combout\,
	datad => \memoriaDados|ALT_INV_ram~148_combout\,
	dataf => \REG1|ALT_INV_DOUT\(1),
	cin => \ULA1|Add1~22\,
	sumout => \ULA1|Add1~25_sumout\,
	cout => \ULA1|Add1~26\);

\MUX1|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[1]~1_combout\ = (!\Decoder|Equal1~0_combout\ & ((\memoriaDados|ram~148_combout\))) # (\Decoder|Equal1~0_combout\ & (\ROM1|memROM~17_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_Equal1~0_combout\,
	datab => \ROM1|ALT_INV_memROM~17_combout\,
	datac => \memoriaDados|ALT_INV_ram~148_combout\,
	combout => \MUX1|saida_MUX[1]~1_combout\);

\ULA1|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[1]~1_combout\ = (!\Decoder|Operacao~0_combout\ & (\ULA1|Add1~25_sumout\)) # (\Decoder|Operacao~0_combout\ & ((\MUX1|saida_MUX[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add1~25_sumout\,
	datab => \Decoder|ALT_INV_Operacao~0_combout\,
	datac => \MUX1|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \ULA1|saida[1]~1_combout\);

\REG1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => VCC,
	asdata => \ULA1|saida[1]~1_combout\,
	sload => VCC,
	ena => \Decoder|OUTPUT[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(1));

\memoriaDados|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(1),
	ena => \memoriaDados|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~18_q\);

\memoriaDados|ram~147\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~147_combout\ = ( !\ROM1|memROM~11_combout\ & ( !\ROM1|memROM~17_combout\ & ( \memoriaDados|ram~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~18_q\,
	datae => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \memoriaDados|ram~147_combout\);

\memoriaDados|ram~148\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~148_combout\ = ( !\ROM1|memROM~13_combout\ & ( !\ROM1|memROM~15_combout\ & ( \memoriaDados|ram~147_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~147_combout\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \memoriaDados|ram~148_combout\);

\ULA1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~29_sumout\ = SUM(( (!\Decoder|Equal1~0_combout\ & (((!\memoriaDados|ram~150_combout\)))) # (\Decoder|Equal1~0_combout\ & (((\ROM1|memROM~22_combout\)) # (\PC|DOUT\(8)))) ) + ( \REG1|DOUT\(2) ) + ( \ULA1|Add1~26\ ))
-- \ULA1|Add1~30\ = CARRY(( (!\Decoder|Equal1~0_combout\ & (((!\memoriaDados|ram~150_combout\)))) # (\Decoder|Equal1~0_combout\ & (((\ROM1|memROM~22_combout\)) # (\PC|DOUT\(8)))) ) + ( \REG1|DOUT\(2) ) + ( \ULA1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001011111100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_Equal1~0_combout\,
	datab => \PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~22_combout\,
	datad => \memoriaDados|ALT_INV_ram~150_combout\,
	dataf => \REG1|ALT_INV_DOUT\(2),
	cin => \ULA1|Add1~26\,
	sumout => \ULA1|Add1~29_sumout\,
	cout => \ULA1|Add1~30\);

\MUX1|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[2]~2_combout\ = (!\Decoder|Equal1~0_combout\ & ((\memoriaDados|ram~150_combout\))) # (\Decoder|Equal1~0_combout\ & (\ROM1|memROM~13_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_Equal1~0_combout\,
	datab => \ROM1|ALT_INV_memROM~13_combout\,
	datac => \memoriaDados|ALT_INV_ram~150_combout\,
	combout => \MUX1|saida_MUX[2]~2_combout\);

\ULA1|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[2]~2_combout\ = (!\Decoder|Operacao~0_combout\ & (\ULA1|Add1~29_sumout\)) # (\Decoder|Operacao~0_combout\ & ((\MUX1|saida_MUX[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add1~29_sumout\,
	datab => \Decoder|ALT_INV_Operacao~0_combout\,
	datac => \MUX1|ALT_INV_saida_MUX[2]~2_combout\,
	combout => \ULA1|saida[2]~2_combout\);

\REG1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => VCC,
	asdata => \ULA1|saida[2]~2_combout\,
	sload => VCC,
	ena => \Decoder|OUTPUT[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(2));

\memoriaDados|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(2),
	ena => \memoriaDados|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~19_q\);

\memoriaDados|ram~149\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~149_combout\ = ( !\ROM1|memROM~13_combout\ & ( !\ROM1|memROM~15_combout\ & ( \memoriaDados|ram~19_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~19_q\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \memoriaDados|ram~149_combout\);

\memoriaDados|ram~150\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~150_combout\ = ( !\ROM1|memROM~11_combout\ & ( !\ROM1|memROM~17_combout\ & ( \memoriaDados|ram~149_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~149_combout\,
	datae => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \memoriaDados|ram~150_combout\);

\ULA1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~1_sumout\ = SUM(( (!\Decoder|Equal1~0_combout\ & (((!\memoriaDados|ram~152_combout\)))) # (\Decoder|Equal1~0_combout\ & (((\ROM1|memROM~19_combout\)) # (\PC|DOUT\(8)))) ) + ( \REG1|DOUT\(3) ) + ( \ULA1|Add1~30\ ))
-- \ULA1|Add1~2\ = CARRY(( (!\Decoder|Equal1~0_combout\ & (((!\memoriaDados|ram~152_combout\)))) # (\Decoder|Equal1~0_combout\ & (((\ROM1|memROM~19_combout\)) # (\PC|DOUT\(8)))) ) + ( \REG1|DOUT\(3) ) + ( \ULA1|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001011111100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_Equal1~0_combout\,
	datab => \PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~19_combout\,
	datad => \memoriaDados|ALT_INV_ram~152_combout\,
	dataf => \REG1|ALT_INV_DOUT\(3),
	cin => \ULA1|Add1~30\,
	sumout => \ULA1|Add1~1_sumout\,
	cout => \ULA1|Add1~2\);

\MUX1|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[3]~3_combout\ = (!\Decoder|Equal1~0_combout\ & ((\memoriaDados|ram~152_combout\))) # (\Decoder|Equal1~0_combout\ & (\ROM1|memROM~15_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_Equal1~0_combout\,
	datab => \ROM1|ALT_INV_memROM~15_combout\,
	datac => \memoriaDados|ALT_INV_ram~152_combout\,
	combout => \MUX1|saida_MUX[3]~3_combout\);

\ULA1|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[3]~3_combout\ = (!\Decoder|Operacao~0_combout\ & (\ULA1|Add1~1_sumout\)) # (\Decoder|Operacao~0_combout\ & ((\MUX1|saida_MUX[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add1~1_sumout\,
	datab => \Decoder|ALT_INV_Operacao~0_combout\,
	datac => \MUX1|ALT_INV_saida_MUX[3]~3_combout\,
	combout => \ULA1|saida[3]~3_combout\);

\REG1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => VCC,
	asdata => \ULA1|saida[3]~3_combout\,
	sload => VCC,
	ena => \Decoder|OUTPUT[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(3));

\memoriaDados|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(3),
	ena => \memoriaDados|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~20_q\);

\memoriaDados|ram~151\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~151_combout\ = ( !\ROM1|memROM~11_combout\ & ( !\ROM1|memROM~17_combout\ & ( \memoriaDados|ram~20_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~20_q\,
	datae => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \memoriaDados|ram~151_combout\);

\memoriaDados|ram~152\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~152_combout\ = ( !\ROM1|memROM~13_combout\ & ( !\ROM1|memROM~15_combout\ & ( \memoriaDados|ram~151_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~151_combout\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \memoriaDados|ram~152_combout\);

\ULA1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~5_sumout\ = SUM(( (!\memoriaDados|ram~154_combout\) # (\Decoder|Equal1~0_combout\) ) + ( \REG1|DOUT\(4) ) + ( \ULA1|Add1~2\ ))
-- \ULA1|Add1~6\ = CARRY(( (!\memoriaDados|ram~154_combout\) # (\Decoder|Equal1~0_combout\) ) + ( \REG1|DOUT\(4) ) + ( \ULA1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_Equal1~0_combout\,
	datad => \memoriaDados|ALT_INV_ram~154_combout\,
	dataf => \REG1|ALT_INV_DOUT\(4),
	cin => \ULA1|Add1~2\,
	sumout => \ULA1|Add1~5_sumout\,
	cout => \ULA1|Add1~6\);

\MUX1|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[4]~4_combout\ = (!\Decoder|Equal1~0_combout\ & \memoriaDados|ram~154_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_Equal1~0_combout\,
	datab => \memoriaDados|ALT_INV_ram~154_combout\,
	combout => \MUX1|saida_MUX[4]~4_combout\);

\ULA1|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[4]~4_combout\ = (!\Decoder|Operacao~0_combout\ & (\ULA1|Add1~5_sumout\)) # (\Decoder|Operacao~0_combout\ & ((\MUX1|saida_MUX[4]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add1~5_sumout\,
	datab => \Decoder|ALT_INV_Operacao~0_combout\,
	datac => \MUX1|ALT_INV_saida_MUX[4]~4_combout\,
	combout => \ULA1|saida[4]~4_combout\);

\REG1|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => VCC,
	asdata => \ULA1|saida[4]~4_combout\,
	sload => VCC,
	ena => \Decoder|OUTPUT[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(4));

\memoriaDados|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(4),
	ena => \memoriaDados|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~21_q\);

\memoriaDados|ram~153\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~153_combout\ = ( !\ROM1|memROM~13_combout\ & ( !\ROM1|memROM~15_combout\ & ( \memoriaDados|ram~21_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~21_q\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \memoriaDados|ram~153_combout\);

\memoriaDados|ram~154\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~154_combout\ = ( !\ROM1|memROM~11_combout\ & ( !\ROM1|memROM~17_combout\ & ( \memoriaDados|ram~153_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~153_combout\,
	datae => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \memoriaDados|ram~154_combout\);

\ULA1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~9_sumout\ = SUM(( (!\memoriaDados|ram~156_combout\) # (\Decoder|Equal1~0_combout\) ) + ( \REG1|DOUT\(5) ) + ( \ULA1|Add1~6\ ))
-- \ULA1|Add1~10\ = CARRY(( (!\memoriaDados|ram~156_combout\) # (\Decoder|Equal1~0_combout\) ) + ( \REG1|DOUT\(5) ) + ( \ULA1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_Equal1~0_combout\,
	datad => \memoriaDados|ALT_INV_ram~156_combout\,
	dataf => \REG1|ALT_INV_DOUT\(5),
	cin => \ULA1|Add1~6\,
	sumout => \ULA1|Add1~9_sumout\,
	cout => \ULA1|Add1~10\);

\MUX1|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[6]~6_combout\ = (!\Decoder|Equal1~0_combout\ & \memoriaDados|ram~158_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_Equal1~0_combout\,
	datab => \memoriaDados|ALT_INV_ram~158_combout\,
	combout => \MUX1|saida_MUX[6]~6_combout\);

\ULA1|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[6]~6_combout\ = (!\Decoder|Operacao~0_combout\ & (\ULA1|Add1~13_sumout\)) # (\Decoder|Operacao~0_combout\ & ((\MUX1|saida_MUX[6]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add1~13_sumout\,
	datab => \Decoder|ALT_INV_Operacao~0_combout\,
	datac => \MUX1|ALT_INV_saida_MUX[6]~6_combout\,
	combout => \ULA1|saida[6]~6_combout\);

\REG1|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => VCC,
	asdata => \ULA1|saida[6]~6_combout\,
	sload => VCC,
	ena => \Decoder|OUTPUT[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(6));

\memoriaDados|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(6),
	ena => \memoriaDados|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~23_q\);

\memoriaDados|ram~157\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~157_combout\ = ( !\ROM1|memROM~13_combout\ & ( !\ROM1|memROM~15_combout\ & ( \memoriaDados|ram~23_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~23_q\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \memoriaDados|ram~157_combout\);

\memoriaDados|ram~158\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~158_combout\ = ( !\ROM1|memROM~11_combout\ & ( !\ROM1|memROM~17_combout\ & ( \memoriaDados|ram~157_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~157_combout\,
	datae => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \memoriaDados|ram~158_combout\);

\ULA1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~13_sumout\ = SUM(( (!\memoriaDados|ram~158_combout\) # (\Decoder|Equal1~0_combout\) ) + ( \REG1|DOUT\(6) ) + ( \ULA1|Add1~10\ ))
-- \ULA1|Add1~14\ = CARRY(( (!\memoriaDados|ram~158_combout\) # (\Decoder|Equal1~0_combout\) ) + ( \REG1|DOUT\(6) ) + ( \ULA1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_Equal1~0_combout\,
	datad => \memoriaDados|ALT_INV_ram~158_combout\,
	dataf => \REG1|ALT_INV_DOUT\(6),
	cin => \ULA1|Add1~10\,
	sumout => \ULA1|Add1~13_sumout\,
	cout => \ULA1|Add1~14\);

\MUX1|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[7]~7_combout\ = (!\Decoder|Equal1~0_combout\ & \memoriaDados|ram~160_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_Equal1~0_combout\,
	datab => \memoriaDados|ALT_INV_ram~160_combout\,
	combout => \MUX1|saida_MUX[7]~7_combout\);

\ULA1|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[7]~7_combout\ = (!\Decoder|Operacao~0_combout\ & (\ULA1|Add1~17_sumout\)) # (\Decoder|Operacao~0_combout\ & ((\MUX1|saida_MUX[7]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add1~17_sumout\,
	datab => \Decoder|ALT_INV_Operacao~0_combout\,
	datac => \MUX1|ALT_INV_saida_MUX[7]~7_combout\,
	combout => \ULA1|saida[7]~7_combout\);

\REG1|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => VCC,
	asdata => \ULA1|saida[7]~7_combout\,
	sload => VCC,
	ena => \Decoder|OUTPUT[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(7));

\memoriaDados|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(7),
	ena => \memoriaDados|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~24_q\);

\memoriaDados|ram~159\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~159_combout\ = ( !\ROM1|memROM~11_combout\ & ( !\ROM1|memROM~17_combout\ & ( \memoriaDados|ram~24_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~24_q\,
	datae => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \memoriaDados|ram~159_combout\);

\memoriaDados|ram~160\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~160_combout\ = ( !\ROM1|memROM~13_combout\ & ( !\ROM1|memROM~15_combout\ & ( \memoriaDados|ram~159_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~159_combout\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \memoriaDados|ram~160_combout\);

\ULA1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~17_sumout\ = SUM(( (!\memoriaDados|ram~160_combout\) # (\Decoder|Equal1~0_combout\) ) + ( \REG1|DOUT\(7) ) + ( \ULA1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_Equal1~0_combout\,
	datad => \memoriaDados|ALT_INV_ram~160_combout\,
	dataf => \REG1|ALT_INV_DOUT\(7),
	cin => \ULA1|Add1~14\,
	sumout => \ULA1|Add1~17_sumout\);

\FLAG_IGUAL|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FLAG_IGUAL|DOUT~0_combout\ = (!\ROM1|memROM~2_combout\ & (!\ROM1|memROM~4_combout\ & (!\ROM1|memROM~6_combout\ & \ROM1|memROM~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \FLAG_IGUAL|DOUT~0_combout\);

\ULA1|Equal2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Equal2~2_combout\ = ( !\ULA1|Add1~5_sumout\ & ( (!\ULA1|Add1~21_sumout\ & (!\ULA1|Add1~25_sumout\ & (!\ULA1|Add1~29_sumout\ & !\ULA1|Add1~1_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add1~21_sumout\,
	datab => \ULA1|ALT_INV_Add1~25_sumout\,
	datac => \ULA1|ALT_INV_Add1~29_sumout\,
	datad => \ULA1|ALT_INV_Add1~1_sumout\,
	datae => \ULA1|ALT_INV_Add1~5_sumout\,
	combout => \ULA1|Equal2~2_combout\);

\FLAG_IGUAL|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \FLAG_IGUAL|DOUT~1_combout\ = ( \FLAG_IGUAL|DOUT~0_combout\ & ( \ULA1|Equal2~2_combout\ & ( (!\ULA1|Add1~9_sumout\ & (!\ULA1|Add1~13_sumout\ & !\ULA1|Add1~17_sumout\)) ) ) ) # ( !\FLAG_IGUAL|DOUT~0_combout\ & ( \ULA1|Equal2~2_combout\ & ( 
-- \FLAG_IGUAL|DOUT~q\ ) ) ) # ( !\FLAG_IGUAL|DOUT~0_combout\ & ( !\ULA1|Equal2~2_combout\ & ( \FLAG_IGUAL|DOUT~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000001010101010101011100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FLAG_IGUAL|ALT_INV_DOUT~q\,
	datab => \ULA1|ALT_INV_Add1~9_sumout\,
	datac => \ULA1|ALT_INV_Add1~13_sumout\,
	datad => \ULA1|ALT_INV_Add1~17_sumout\,
	datae => \FLAG_IGUAL|ALT_INV_DOUT~0_combout\,
	dataf => \ULA1|ALT_INV_Equal2~2_combout\,
	combout => \FLAG_IGUAL|DOUT~1_combout\);

\FLAG_IGUAL|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FLAG_IGUAL|DOUT~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FLAG_IGUAL|DOUT~q\);

\MUX4x2_PC|saida_MUX[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX4x2_PC|saida_MUX[7]~0_combout\ = ( \FLAG_IGUAL|DOUT~q\ & ( (!\ROM1|memROM~4_combout\ & ((!\ROM1|memROM~2_combout\) # ((!\ROM1|memROM~8_combout\) # (\ROM1|memROM~6_combout\)))) # (\ROM1|memROM~4_combout\ & (((!\ROM1|memROM~6_combout\) # 
-- (\ROM1|memROM~8_combout\)))) ) ) # ( !\FLAG_IGUAL|DOUT~q\ & ( (!\ROM1|memROM~2_combout\ & ((!\ROM1|memROM~4_combout\) # ((!\ROM1|memROM~6_combout\) # (\ROM1|memROM~8_combout\)))) # (\ROM1|memROM~2_combout\ & (((!\ROM1|memROM~8_combout\) # 
-- (\ROM1|memROM~6_combout\)) # (\ROM1|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110110111111111111001011111111111101101111111111110010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	datae => \FLAG_IGUAL|ALT_INV_DOUT~q\,
	combout => \MUX4x2_PC|saida_MUX[7]~0_combout\);

\END_RET|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \somaUm|Add0~1_sumout\,
	ena => \Decoder|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \END_RET|DOUT\(0));

\MUX4x2_PC|saida_MUX[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX4x2_PC|saida_MUX[0]~1_combout\ = ( \somaUm|Add0~1_sumout\ & ( (!\LOGICA_DESVIO|SelMUX_ROM[1]~0_combout\ & (((\ROM1|memROM~11_combout\)) # (\MUX4x2_PC|saida_MUX[7]~0_combout\))) # (\LOGICA_DESVIO|SelMUX_ROM[1]~0_combout\ & (((\END_RET|DOUT\(0))))) ) ) 
-- # ( !\somaUm|Add0~1_sumout\ & ( (!\LOGICA_DESVIO|SelMUX_ROM[1]~0_combout\ & (!\MUX4x2_PC|saida_MUX[7]~0_combout\ & (\ROM1|memROM~11_combout\))) # (\LOGICA_DESVIO|SelMUX_ROM[1]~0_combout\ & (((\END_RET|DOUT\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000111011010011000111111100001000001110110100110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX4x2_PC|ALT_INV_saida_MUX[7]~0_combout\,
	datab => \LOGICA_DESVIO|ALT_INV_SelMUX_ROM[1]~0_combout\,
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	datad => \END_RET|ALT_INV_DOUT\(0),
	datae => \somaUm|ALT_INV_Add0~1_sumout\,
	combout => \MUX4x2_PC|saida_MUX[0]~1_combout\);

\PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX4x2_PC|saida_MUX[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(0));

\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = (!\PC|DOUT\(0) & (!\PC|DOUT\(3) $ (((!\PC|DOUT\(1) & \PC|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001000001000101000100000100010100010000010001010001000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~0_combout\);

\Decoder|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder|Equal1~0_combout\ = ( !\ROM1|memROM~7_combout\ & ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & (\ROM1|memROM~3_combout\ & !\ROM1|memROM~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \Decoder|Equal1~0_combout\);

\MUX1|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[0]~0_combout\ = (!\Decoder|Equal1~0_combout\ & ((\memoriaDados|ram~146_combout\))) # (\Decoder|Equal1~0_combout\ & (\ROM1|memROM~11_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_Equal1~0_combout\,
	datab => \ROM1|ALT_INV_memROM~11_combout\,
	datac => \memoriaDados|ALT_INV_ram~146_combout\,
	combout => \MUX1|saida_MUX[0]~0_combout\);

\ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[0]~0_combout\ = (!\Decoder|Operacao~0_combout\ & (\ULA1|Add1~21_sumout\)) # (\Decoder|Operacao~0_combout\ & ((\MUX1|saida_MUX[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add1~21_sumout\,
	datab => \Decoder|ALT_INV_Operacao~0_combout\,
	datac => \MUX1|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA1|saida[0]~0_combout\);

\REG1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => VCC,
	asdata => \ULA1|saida[0]~0_combout\,
	sload => VCC,
	ena => \Decoder|OUTPUT[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(0));

\ULA1|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Equal2~0_combout\ = (!\ULA1|Add1~21_sumout\ & (!\ULA1|Add1~25_sumout\ & !\ULA1|Add1~29_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add1~21_sumout\,
	datab => \ULA1|ALT_INV_Add1~25_sumout\,
	datac => \ULA1|ALT_INV_Add1~29_sumout\,
	combout => \ULA1|Equal2~0_combout\);

\ULA1|Equal2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Equal2~1_combout\ = ( !\ULA1|Add1~17_sumout\ & ( \ULA1|Equal2~0_combout\ & ( (!\ULA1|Add1~1_sumout\ & (!\ULA1|Add1~5_sumout\ & (!\ULA1|Add1~9_sumout\ & !\ULA1|Add1~13_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add1~1_sumout\,
	datab => \ULA1|ALT_INV_Add1~5_sumout\,
	datac => \ULA1|ALT_INV_Add1~9_sumout\,
	datad => \ULA1|ALT_INV_Add1~13_sumout\,
	datae => \ULA1|ALT_INV_Add1~17_sumout\,
	dataf => \ULA1|ALT_INV_Equal2~0_combout\,
	combout => \ULA1|Equal2~1_combout\);

\Decoder|OUTPUT[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder|OUTPUT[3]~1_combout\ = ( \Decoder|Operacao~0_combout\ ) # ( !\Decoder|Operacao~0_combout\ & ( (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~4_combout\ & (\ROM1|memROM~6_combout\ & !\ROM1|memROM~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000111111111111111100000100000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	datae => \Decoder|ALT_INV_Operacao~0_combout\,
	combout => \Decoder|OUTPUT[3]~1_combout\);

\Decoder|OUTPUT[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder|OUTPUT[4]~2_combout\ = ( \Decoder|Operacao~0_combout\ ) # ( !\Decoder|Operacao~0_combout\ & ( ((!\ROM1|memROM~6_combout\) # (\ROM1|memROM~8_combout\)) # (\ROM1|memROM~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111111111111111111111111111110011111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	datae => \Decoder|ALT_INV_Operacao~0_combout\,
	combout => \Decoder|OUTPUT[4]~2_combout\);

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

ww_entradaA(0) <= \entradaA[0]~output_o\;

ww_entradaA(1) <= \entradaA[1]~output_o\;

ww_entradaA(2) <= \entradaA[2]~output_o\;

ww_entradaA(3) <= \entradaA[3]~output_o\;

ww_entradaA(4) <= \entradaA[4]~output_o\;

ww_entradaA(5) <= \entradaA[5]~output_o\;

ww_entradaA(6) <= \entradaA[6]~output_o\;

ww_entradaA(7) <= \entradaA[7]~output_o\;

ww_SEL_MUX_PC(0) <= \SEL_MUX_PC[0]~output_o\;

ww_SEL_MUX_PC(1) <= \SEL_MUX_PC[1]~output_o\;

ww_HABILITA <= \HABILITA~output_o\;

ww_FLAG <= \FLAG~output_o\;

ww_SAIDA_REG_FLAG <= \SAIDA_REG_FLAG~output_o\;

ww_OPERACAO(0) <= \OPERACAO[0]~output_o\;

ww_OPERACAO(1) <= \OPERACAO[1]~output_o\;

ww_entradaB(0) <= \entradaB[0]~output_o\;

ww_entradaB(1) <= \entradaB[1]~output_o\;

ww_entradaB(2) <= \entradaB[2]~output_o\;

ww_entradaB(3) <= \entradaB[3]~output_o\;

ww_entradaB(4) <= \entradaB[4]~output_o\;

ww_entradaB(5) <= \entradaB[5]~output_o\;

ww_entradaB(6) <= \entradaB[6]~output_o\;

ww_entradaB(7) <= \entradaB[7]~output_o\;

ww_TESTE_ENDERECO_MEM(0) <= \TESTE_ENDERECO_MEM[0]~output_o\;

ww_TESTE_ENDERECO_MEM(1) <= \TESTE_ENDERECO_MEM[1]~output_o\;

ww_TESTE_ENDERECO_MEM(2) <= \TESTE_ENDERECO_MEM[2]~output_o\;

ww_TESTE_ENDERECO_MEM(3) <= \TESTE_ENDERECO_MEM[3]~output_o\;

ww_TESTE_ENDERECO_MEM(4) <= \TESTE_ENDERECO_MEM[4]~output_o\;

ww_TESTE_ENDERECO_MEM(5) <= \TESTE_ENDERECO_MEM[5]~output_o\;

ww_TESTE_ENDERECO_MEM(6) <= \TESTE_ENDERECO_MEM[6]~output_o\;

ww_TESTE_ENDERECO_MEM(7) <= \TESTE_ENDERECO_MEM[7]~output_o\;

ww_TESTE_ENDERECO_MEM(8) <= \TESTE_ENDERECO_MEM[8]~output_o\;
END structure;


