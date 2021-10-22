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

-- DATE "09/03/2021 00:01:19"

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

ENTITY 	Aula_4 IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(9 DOWNTO 0);
	SEL_MUX : BUFFER std_logic;
	HABILITA : BUFFER std_logic;
	OPERACAO : BUFFER std_logic_vector(1 DOWNTO 0);
	SAIDA_MUX : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END Aula_4;

ARCHITECTURE structure OF Aula_4 IS
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
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_SEL_MUX : std_logic;
SIGNAL ww_HABILITA : std_logic;
SIGNAL ww_OPERACAO : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_SAIDA_MUX : std_logic_vector(7 DOWNTO 0);
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
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \SEL_MUX~output_o\ : std_logic;
SIGNAL \HABILITA~output_o\ : std_logic;
SIGNAL \OPERACAO[0]~output_o\ : std_logic;
SIGNAL \OPERACAO[1]~output_o\ : std_logic;
SIGNAL \SAIDA_MUX[0]~output_o\ : std_logic;
SIGNAL \SAIDA_MUX[1]~output_o\ : std_logic;
SIGNAL \SAIDA_MUX[2]~output_o\ : std_logic;
SIGNAL \SAIDA_MUX[3]~output_o\ : std_logic;
SIGNAL \SAIDA_MUX[4]~output_o\ : std_logic;
SIGNAL \SAIDA_MUX[5]~output_o\ : std_logic;
SIGNAL \SAIDA_MUX[6]~output_o\ : std_logic;
SIGNAL \SAIDA_MUX[7]~output_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \PC|DOUT[0]~0_combout\ : std_logic;
SIGNAL \somaUm|Add0~1_sumout\ : std_logic;
SIGNAL \somaUm|Add0~2\ : std_logic;
SIGNAL \somaUm|Add0~5_sumout\ : std_logic;
SIGNAL \somaUm|Add0~6\ : std_logic;
SIGNAL \somaUm|Add0~9_sumout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \somaUm|Add0~10\ : std_logic;
SIGNAL \somaUm|Add0~29_sumout\ : std_logic;
SIGNAL \somaUm|Add0~30\ : std_logic;
SIGNAL \somaUm|Add0~25_sumout\ : std_logic;
SIGNAL \somaUm|Add0~26\ : std_logic;
SIGNAL \somaUm|Add0~21_sumout\ : std_logic;
SIGNAL \somaUm|Add0~22\ : std_logic;
SIGNAL \somaUm|Add0~17_sumout\ : std_logic;
SIGNAL \somaUm|Add0~18\ : std_logic;
SIGNAL \somaUm|Add0~13_sumout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \Decoder|Equal1~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \Decoder|Equal1~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \memoriaDados|process_0~0_combout\ : std_logic;
SIGNAL \memoriaDados|ram~145_combout\ : std_logic;
SIGNAL \memoriaDados|ram~57_q\ : std_logic;
SIGNAL \memoriaDados|ram~146_combout\ : std_logic;
SIGNAL \memoriaDados|ram~73_q\ : std_logic;
SIGNAL \memoriaDados|ram~148_combout\ : std_logic;
SIGNAL \memoriaDados|ram~65_q\ : std_logic;
SIGNAL \memoriaDados|ram~149_combout\ : std_logic;
SIGNAL \memoriaDados|ram~25_q\ : std_logic;
SIGNAL \memoriaDados|ram~150_combout\ : std_logic;
SIGNAL \memoriaDados|ram~41_q\ : std_logic;
SIGNAL \memoriaDados|ram~152_combout\ : std_logic;
SIGNAL \memoriaDados|ram~33_q\ : std_logic;
SIGNAL \memoriaDados|ram~151_combout\ : std_logic;
SIGNAL \memoriaDados|ram~17_q\ : std_logic;
SIGNAL \memoriaDados|ram~113_combout\ : std_logic;
SIGNAL \memoriaDados|ram~147_combout\ : std_logic;
SIGNAL \memoriaDados|ram~49_q\ : std_logic;
SIGNAL \memoriaDados|ram~81_combout\ : std_logic;
SIGNAL \ULA1|Add0~34_cout\ : std_logic;
SIGNAL \ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \MUX1|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \Decoder|OUTPUT[3]~1_combout\ : std_logic;
SIGNAL \Decoder|OUTPUT[4]~0_combout\ : std_logic;
SIGNAL \memoriaDados|ram~58_q\ : std_logic;
SIGNAL \memoriaDados|ram~74_q\ : std_logic;
SIGNAL \memoriaDados|ram~66_q\ : std_logic;
SIGNAL \memoriaDados|ram~26_q\ : std_logic;
SIGNAL \memoriaDados|ram~42_q\ : std_logic;
SIGNAL \memoriaDados|ram~34_q\ : std_logic;
SIGNAL \memoriaDados|ram~18_q\ : std_logic;
SIGNAL \memoriaDados|ram~117_combout\ : std_logic;
SIGNAL \memoriaDados|ram~50_q\ : std_logic;
SIGNAL \memoriaDados|ram~85_combout\ : std_logic;
SIGNAL \ULA1|Add0~2\ : std_logic;
SIGNAL \ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \MUX1|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \memoriaDados|ram~59_q\ : std_logic;
SIGNAL \memoriaDados|ram~75_q\ : std_logic;
SIGNAL \memoriaDados|ram~67_q\ : std_logic;
SIGNAL \memoriaDados|ram~27_q\ : std_logic;
SIGNAL \memoriaDados|ram~43_q\ : std_logic;
SIGNAL \memoriaDados|ram~35_q\ : std_logic;
SIGNAL \memoriaDados|ram~19_q\ : std_logic;
SIGNAL \memoriaDados|ram~121_combout\ : std_logic;
SIGNAL \memoriaDados|ram~51_q\ : std_logic;
SIGNAL \memoriaDados|ram~89_combout\ : std_logic;
SIGNAL \ULA1|Add0~6\ : std_logic;
SIGNAL \ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \MUX1|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \memoriaDados|ram~60_q\ : std_logic;
SIGNAL \memoriaDados|ram~76_q\ : std_logic;
SIGNAL \memoriaDados|ram~68_q\ : std_logic;
SIGNAL \memoriaDados|ram~28_q\ : std_logic;
SIGNAL \memoriaDados|ram~44_q\ : std_logic;
SIGNAL \memoriaDados|ram~36_q\ : std_logic;
SIGNAL \memoriaDados|ram~20_q\ : std_logic;
SIGNAL \memoriaDados|ram~125_combout\ : std_logic;
SIGNAL \memoriaDados|ram~52_q\ : std_logic;
SIGNAL \memoriaDados|ram~93_combout\ : std_logic;
SIGNAL \ULA1|Add0~10\ : std_logic;
SIGNAL \ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \MUX1|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \memoriaDados|ram~61_q\ : std_logic;
SIGNAL \memoriaDados|ram~77_q\ : std_logic;
SIGNAL \memoriaDados|ram~69_q\ : std_logic;
SIGNAL \memoriaDados|ram~29_q\ : std_logic;
SIGNAL \memoriaDados|ram~45_q\ : std_logic;
SIGNAL \memoriaDados|ram~37_q\ : std_logic;
SIGNAL \memoriaDados|ram~21_q\ : std_logic;
SIGNAL \memoriaDados|ram~129_combout\ : std_logic;
SIGNAL \memoriaDados|ram~53_q\ : std_logic;
SIGNAL \memoriaDados|ram~97_combout\ : std_logic;
SIGNAL \ULA1|Add0~14\ : std_logic;
SIGNAL \ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \MUX1|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \memoriaDados|ram~62_q\ : std_logic;
SIGNAL \memoriaDados|ram~78_q\ : std_logic;
SIGNAL \memoriaDados|ram~70_q\ : std_logic;
SIGNAL \memoriaDados|ram~30_q\ : std_logic;
SIGNAL \memoriaDados|ram~46_q\ : std_logic;
SIGNAL \memoriaDados|ram~38_q\ : std_logic;
SIGNAL \memoriaDados|ram~22_q\ : std_logic;
SIGNAL \memoriaDados|ram~133_combout\ : std_logic;
SIGNAL \memoriaDados|ram~54_q\ : std_logic;
SIGNAL \memoriaDados|ram~101_combout\ : std_logic;
SIGNAL \ULA1|Add0~18\ : std_logic;
SIGNAL \ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \MUX1|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \memoriaDados|ram~63_q\ : std_logic;
SIGNAL \memoriaDados|ram~79_q\ : std_logic;
SIGNAL \memoriaDados|ram~71_q\ : std_logic;
SIGNAL \memoriaDados|ram~31_q\ : std_logic;
SIGNAL \memoriaDados|ram~47_q\ : std_logic;
SIGNAL \memoriaDados|ram~39_q\ : std_logic;
SIGNAL \memoriaDados|ram~23_q\ : std_logic;
SIGNAL \memoriaDados|ram~137_combout\ : std_logic;
SIGNAL \memoriaDados|ram~55_q\ : std_logic;
SIGNAL \memoriaDados|ram~105_combout\ : std_logic;
SIGNAL \ULA1|Add0~22\ : std_logic;
SIGNAL \ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \MUX1|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \memoriaDados|ram~64_q\ : std_logic;
SIGNAL \memoriaDados|ram~80_q\ : std_logic;
SIGNAL \memoriaDados|ram~72_q\ : std_logic;
SIGNAL \memoriaDados|ram~32_q\ : std_logic;
SIGNAL \memoriaDados|ram~48_q\ : std_logic;
SIGNAL \memoriaDados|ram~40_q\ : std_logic;
SIGNAL \memoriaDados|ram~24_q\ : std_logic;
SIGNAL \memoriaDados|ram~141_combout\ : std_logic;
SIGNAL \memoriaDados|ram~56_q\ : std_logic;
SIGNAL \memoriaDados|ram~109_combout\ : std_logic;
SIGNAL \ULA1|Add0~26\ : std_logic;
SIGNAL \ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \MUX1|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \REG1|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \memoriaDados|ALT_INV_ram~77_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~61_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~68_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~52_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~76_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~60_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~67_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~51_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~75_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~59_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~66_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~50_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~74_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~58_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~65_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~49_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~73_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~57_q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \Decoder|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \Decoder|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~141_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~137_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~133_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~129_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~125_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~121_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~117_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~113_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~109_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~105_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~101_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~97_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~93_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~89_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~85_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~81_combout\ : std_logic;
SIGNAL \REG1|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \memoriaDados|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~40_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~48_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~39_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~47_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~46_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~45_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~44_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~43_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~42_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~41_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~72_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~56_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~80_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~64_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~71_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~55_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~79_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~63_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~70_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~54_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~78_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~62_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~69_q\ : std_logic;
SIGNAL \memoriaDados|ALT_INV_ram~53_q\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
SEL_MUX <= ww_SEL_MUX;
HABILITA <= ww_HABILITA;
OPERACAO <= ww_OPERACAO;
SAIDA_MUX <= ww_SAIDA_MUX;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\memoriaDados|ALT_INV_ram~77_q\ <= NOT \memoriaDados|ram~77_q\;
\memoriaDados|ALT_INV_ram~61_q\ <= NOT \memoriaDados|ram~61_q\;
\memoriaDados|ALT_INV_ram~68_q\ <= NOT \memoriaDados|ram~68_q\;
\memoriaDados|ALT_INV_ram~52_q\ <= NOT \memoriaDados|ram~52_q\;
\memoriaDados|ALT_INV_ram~76_q\ <= NOT \memoriaDados|ram~76_q\;
\memoriaDados|ALT_INV_ram~60_q\ <= NOT \memoriaDados|ram~60_q\;
\memoriaDados|ALT_INV_ram~67_q\ <= NOT \memoriaDados|ram~67_q\;
\memoriaDados|ALT_INV_ram~51_q\ <= NOT \memoriaDados|ram~51_q\;
\memoriaDados|ALT_INV_ram~75_q\ <= NOT \memoriaDados|ram~75_q\;
\memoriaDados|ALT_INV_ram~59_q\ <= NOT \memoriaDados|ram~59_q\;
\memoriaDados|ALT_INV_ram~66_q\ <= NOT \memoriaDados|ram~66_q\;
\memoriaDados|ALT_INV_ram~50_q\ <= NOT \memoriaDados|ram~50_q\;
\memoriaDados|ALT_INV_ram~74_q\ <= NOT \memoriaDados|ram~74_q\;
\memoriaDados|ALT_INV_ram~58_q\ <= NOT \memoriaDados|ram~58_q\;
\memoriaDados|ALT_INV_ram~65_q\ <= NOT \memoriaDados|ram~65_q\;
\memoriaDados|ALT_INV_ram~49_q\ <= NOT \memoriaDados|ram~49_q\;
\memoriaDados|ALT_INV_ram~73_q\ <= NOT \memoriaDados|ram~73_q\;
\memoriaDados|ALT_INV_ram~57_q\ <= NOT \memoriaDados|ram~57_q\;
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\Decoder|ALT_INV_Equal1~1_combout\ <= NOT \Decoder|Equal1~1_combout\;
\Decoder|ALT_INV_Equal1~0_combout\ <= NOT \Decoder|Equal1~0_combout\;
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
\memoriaDados|ALT_INV_ram~141_combout\ <= NOT \memoriaDados|ram~141_combout\;
\memoriaDados|ALT_INV_ram~137_combout\ <= NOT \memoriaDados|ram~137_combout\;
\memoriaDados|ALT_INV_ram~133_combout\ <= NOT \memoriaDados|ram~133_combout\;
\memoriaDados|ALT_INV_ram~129_combout\ <= NOT \memoriaDados|ram~129_combout\;
\memoriaDados|ALT_INV_ram~125_combout\ <= NOT \memoriaDados|ram~125_combout\;
\memoriaDados|ALT_INV_ram~121_combout\ <= NOT \memoriaDados|ram~121_combout\;
\memoriaDados|ALT_INV_ram~117_combout\ <= NOT \memoriaDados|ram~117_combout\;
\memoriaDados|ALT_INV_ram~113_combout\ <= NOT \memoriaDados|ram~113_combout\;
\memoriaDados|ALT_INV_ram~109_combout\ <= NOT \memoriaDados|ram~109_combout\;
\memoriaDados|ALT_INV_ram~105_combout\ <= NOT \memoriaDados|ram~105_combout\;
\memoriaDados|ALT_INV_ram~101_combout\ <= NOT \memoriaDados|ram~101_combout\;
\memoriaDados|ALT_INV_ram~97_combout\ <= NOT \memoriaDados|ram~97_combout\;
\memoriaDados|ALT_INV_ram~93_combout\ <= NOT \memoriaDados|ram~93_combout\;
\memoriaDados|ALT_INV_ram~89_combout\ <= NOT \memoriaDados|ram~89_combout\;
\memoriaDados|ALT_INV_ram~85_combout\ <= NOT \memoriaDados|ram~85_combout\;
\memoriaDados|ALT_INV_ram~81_combout\ <= NOT \memoriaDados|ram~81_combout\;
\REG1|ALT_INV_DOUT\(7) <= NOT \REG1|DOUT\(7);
\REG1|ALT_INV_DOUT\(6) <= NOT \REG1|DOUT\(6);
\REG1|ALT_INV_DOUT\(5) <= NOT \REG1|DOUT\(5);
\REG1|ALT_INV_DOUT\(4) <= NOT \REG1|DOUT\(4);
\REG1|ALT_INV_DOUT\(3) <= NOT \REG1|DOUT\(3);
\REG1|ALT_INV_DOUT\(2) <= NOT \REG1|DOUT\(2);
\REG1|ALT_INV_DOUT\(1) <= NOT \REG1|DOUT\(1);
\REG1|ALT_INV_DOUT\(0) <= NOT \REG1|DOUT\(0);
\memoriaDados|ALT_INV_process_0~0_combout\ <= NOT \memoriaDados|process_0~0_combout\;
\ROM1|ALT_INV_memROM~7_combout\ <= NOT \ROM1|memROM~7_combout\;
\memoriaDados|ALT_INV_ram~40_q\ <= NOT \memoriaDados|ram~40_q\;
\memoriaDados|ALT_INV_ram~24_q\ <= NOT \memoriaDados|ram~24_q\;
\memoriaDados|ALT_INV_ram~48_q\ <= NOT \memoriaDados|ram~48_q\;
\memoriaDados|ALT_INV_ram~32_q\ <= NOT \memoriaDados|ram~32_q\;
\memoriaDados|ALT_INV_ram~39_q\ <= NOT \memoriaDados|ram~39_q\;
\memoriaDados|ALT_INV_ram~23_q\ <= NOT \memoriaDados|ram~23_q\;
\memoriaDados|ALT_INV_ram~47_q\ <= NOT \memoriaDados|ram~47_q\;
\memoriaDados|ALT_INV_ram~31_q\ <= NOT \memoriaDados|ram~31_q\;
\memoriaDados|ALT_INV_ram~38_q\ <= NOT \memoriaDados|ram~38_q\;
\memoriaDados|ALT_INV_ram~22_q\ <= NOT \memoriaDados|ram~22_q\;
\memoriaDados|ALT_INV_ram~46_q\ <= NOT \memoriaDados|ram~46_q\;
\memoriaDados|ALT_INV_ram~30_q\ <= NOT \memoriaDados|ram~30_q\;
\memoriaDados|ALT_INV_ram~37_q\ <= NOT \memoriaDados|ram~37_q\;
\memoriaDados|ALT_INV_ram~21_q\ <= NOT \memoriaDados|ram~21_q\;
\memoriaDados|ALT_INV_ram~45_q\ <= NOT \memoriaDados|ram~45_q\;
\memoriaDados|ALT_INV_ram~29_q\ <= NOT \memoriaDados|ram~29_q\;
\memoriaDados|ALT_INV_ram~36_q\ <= NOT \memoriaDados|ram~36_q\;
\memoriaDados|ALT_INV_ram~20_q\ <= NOT \memoriaDados|ram~20_q\;
\memoriaDados|ALT_INV_ram~44_q\ <= NOT \memoriaDados|ram~44_q\;
\memoriaDados|ALT_INV_ram~28_q\ <= NOT \memoriaDados|ram~28_q\;
\memoriaDados|ALT_INV_ram~35_q\ <= NOT \memoriaDados|ram~35_q\;
\memoriaDados|ALT_INV_ram~19_q\ <= NOT \memoriaDados|ram~19_q\;
\memoriaDados|ALT_INV_ram~43_q\ <= NOT \memoriaDados|ram~43_q\;
\memoriaDados|ALT_INV_ram~27_q\ <= NOT \memoriaDados|ram~27_q\;
\memoriaDados|ALT_INV_ram~34_q\ <= NOT \memoriaDados|ram~34_q\;
\memoriaDados|ALT_INV_ram~18_q\ <= NOT \memoriaDados|ram~18_q\;
\memoriaDados|ALT_INV_ram~42_q\ <= NOT \memoriaDados|ram~42_q\;
\memoriaDados|ALT_INV_ram~26_q\ <= NOT \memoriaDados|ram~26_q\;
\memoriaDados|ALT_INV_ram~33_q\ <= NOT \memoriaDados|ram~33_q\;
\memoriaDados|ALT_INV_ram~17_q\ <= NOT \memoriaDados|ram~17_q\;
\memoriaDados|ALT_INV_ram~41_q\ <= NOT \memoriaDados|ram~41_q\;
\memoriaDados|ALT_INV_ram~25_q\ <= NOT \memoriaDados|ram~25_q\;
\memoriaDados|ALT_INV_ram~72_q\ <= NOT \memoriaDados|ram~72_q\;
\memoriaDados|ALT_INV_ram~56_q\ <= NOT \memoriaDados|ram~56_q\;
\memoriaDados|ALT_INV_ram~80_q\ <= NOT \memoriaDados|ram~80_q\;
\memoriaDados|ALT_INV_ram~64_q\ <= NOT \memoriaDados|ram~64_q\;
\memoriaDados|ALT_INV_ram~71_q\ <= NOT \memoriaDados|ram~71_q\;
\memoriaDados|ALT_INV_ram~55_q\ <= NOT \memoriaDados|ram~55_q\;
\memoriaDados|ALT_INV_ram~79_q\ <= NOT \memoriaDados|ram~79_q\;
\memoriaDados|ALT_INV_ram~63_q\ <= NOT \memoriaDados|ram~63_q\;
\memoriaDados|ALT_INV_ram~70_q\ <= NOT \memoriaDados|ram~70_q\;
\memoriaDados|ALT_INV_ram~54_q\ <= NOT \memoriaDados|ram~54_q\;
\memoriaDados|ALT_INV_ram~78_q\ <= NOT \memoriaDados|ram~78_q\;
\memoriaDados|ALT_INV_ram~62_q\ <= NOT \memoriaDados|ram~62_q\;
\memoriaDados|ALT_INV_ram~69_q\ <= NOT \memoriaDados|ram~69_q\;
\memoriaDados|ALT_INV_ram~53_q\ <= NOT \memoriaDados|ram~53_q\;

\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG1|DOUT\(0),
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
	i => \REG1|DOUT\(1),
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
	i => \REG1|DOUT\(2),
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
	i => \REG1|DOUT\(3),
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
	i => \REG1|DOUT\(4),
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
	i => \REG1|DOUT\(5),
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
	i => \REG1|DOUT\(6),
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
	i => \REG1|DOUT\(7),
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

\SEL_MUX~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder|Equal1~0_combout\,
	devoe => ww_devoe,
	o => \SEL_MUX~output_o\);

\HABILITA~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder|OUTPUT[4]~0_combout\,
	devoe => ww_devoe,
	o => \HABILITA~output_o\);

\OPERACAO[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder|Equal1~1_combout\,
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
	i => \Decoder|OUTPUT[3]~1_combout\,
	devoe => ww_devoe,
	o => \OPERACAO[1]~output_o\);

\SAIDA_MUX[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|saida_MUX[0]~0_combout\,
	devoe => ww_devoe,
	o => \SAIDA_MUX[0]~output_o\);

\SAIDA_MUX[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|saida_MUX[1]~1_combout\,
	devoe => ww_devoe,
	o => \SAIDA_MUX[1]~output_o\);

\SAIDA_MUX[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|saida_MUX[2]~2_combout\,
	devoe => ww_devoe,
	o => \SAIDA_MUX[2]~output_o\);

\SAIDA_MUX[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|saida_MUX[3]~3_combout\,
	devoe => ww_devoe,
	o => \SAIDA_MUX[3]~output_o\);

\SAIDA_MUX[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|saida_MUX[4]~4_combout\,
	devoe => ww_devoe,
	o => \SAIDA_MUX[4]~output_o\);

\SAIDA_MUX[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|saida_MUX[5]~5_combout\,
	devoe => ww_devoe,
	o => \SAIDA_MUX[5]~output_o\);

\SAIDA_MUX[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|saida_MUX[6]~6_combout\,
	devoe => ww_devoe,
	o => \SAIDA_MUX[6]~output_o\);

\SAIDA_MUX[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|saida_MUX[7]~7_combout\,
	devoe => ww_devoe,
	o => \SAIDA_MUX[7]~output_o\);

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

\PC|DOUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC|DOUT[0]~0_combout\ = !\PC|DOUT\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	combout => \PC|DOUT[0]~0_combout\);

\PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \PC|DOUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(0));

\somaUm|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaUm|Add0~1_sumout\ = SUM(( \PC|DOUT\(0) ) + ( \PC|DOUT\(1) ) + ( !VCC ))
-- \somaUm|Add0~2\ = CARRY(( \PC|DOUT\(0) ) + ( \PC|DOUT\(1) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(0),
	dataf => \PC|ALT_INV_DOUT\(1),
	cin => GND,
	sumout => \somaUm|Add0~1_sumout\,
	cout => \somaUm|Add0~2\);

\PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \somaUm|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(1));

\somaUm|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaUm|Add0~5_sumout\ = SUM(( \PC|DOUT\(2) ) + ( GND ) + ( \somaUm|Add0~2\ ))
-- \somaUm|Add0~6\ = CARRY(( \PC|DOUT\(2) ) + ( GND ) + ( \somaUm|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(2),
	cin => \somaUm|Add0~2\,
	sumout => \somaUm|Add0~5_sumout\,
	cout => \somaUm|Add0~6\);

\PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \somaUm|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(2));

\somaUm|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaUm|Add0~9_sumout\ = SUM(( \PC|DOUT\(3) ) + ( GND ) + ( \somaUm|Add0~6\ ))
-- \somaUm|Add0~10\ = CARRY(( \PC|DOUT\(3) ) + ( GND ) + ( \somaUm|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(3),
	cin => \somaUm|Add0~6\,
	sumout => \somaUm|Add0~9_sumout\,
	cout => \somaUm|Add0~10\);

\PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \somaUm|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(3));

\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = (!\PC|DOUT\(3) & ((!\PC|DOUT\(0) & (!\PC|DOUT\(1) $ (!\PC|DOUT\(2)))) # (\PC|DOUT\(0) & (\PC|DOUT\(1) & \PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100100000000001010010000000000101001000000000010100100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~0_combout\);

\somaUm|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaUm|Add0~29_sumout\ = SUM(( \PC|DOUT\(4) ) + ( GND ) + ( \somaUm|Add0~10\ ))
-- \somaUm|Add0~30\ = CARRY(( \PC|DOUT\(4) ) + ( GND ) + ( \somaUm|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(4),
	cin => \somaUm|Add0~10\,
	sumout => \somaUm|Add0~29_sumout\,
	cout => \somaUm|Add0~30\);

\PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \somaUm|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(4));

\somaUm|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaUm|Add0~25_sumout\ = SUM(( \PC|DOUT\(5) ) + ( GND ) + ( \somaUm|Add0~30\ ))
-- \somaUm|Add0~26\ = CARRY(( \PC|DOUT\(5) ) + ( GND ) + ( \somaUm|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(5),
	cin => \somaUm|Add0~30\,
	sumout => \somaUm|Add0~25_sumout\,
	cout => \somaUm|Add0~26\);

\PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \somaUm|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(5));

\somaUm|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaUm|Add0~21_sumout\ = SUM(( \PC|DOUT\(6) ) + ( GND ) + ( \somaUm|Add0~26\ ))
-- \somaUm|Add0~22\ = CARRY(( \PC|DOUT\(6) ) + ( GND ) + ( \somaUm|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(6),
	cin => \somaUm|Add0~26\,
	sumout => \somaUm|Add0~21_sumout\,
	cout => \somaUm|Add0~22\);

\PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \somaUm|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(6));

\somaUm|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaUm|Add0~17_sumout\ = SUM(( \PC|DOUT\(7) ) + ( GND ) + ( \somaUm|Add0~22\ ))
-- \somaUm|Add0~18\ = CARRY(( \PC|DOUT\(7) ) + ( GND ) + ( \somaUm|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(7),
	cin => \somaUm|Add0~22\,
	sumout => \somaUm|Add0~17_sumout\,
	cout => \somaUm|Add0~18\);

\PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \somaUm|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(7));

\somaUm|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaUm|Add0~13_sumout\ = SUM(( \PC|DOUT\(8) ) + ( GND ) + ( \somaUm|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(8),
	cin => \somaUm|Add0~18\,
	sumout => \somaUm|Add0~13_sumout\);

\PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \somaUm|Add0~13_sumout\,
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
-- \ROM1|memROM~2_combout\ = (\PC|DOUT\(2) & (!\PC|DOUT\(3) & ((\PC|DOUT\(1)) # (\PC|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000000000001110000000000000111000000000000011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~2_combout\);

\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = (!\PC|DOUT\(3) & (!\PC|DOUT\(2) $ (((!\PC|DOUT\(0) & !\PC|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100000000000011110000000000001111000000000000111100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~3_combout\);

\Decoder|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder|Equal1~0_combout\ = (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~2_combout\ & \ROM1|memROM~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \Decoder|Equal1~0_combout\);

\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = ( \ROM1|memROM~1_combout\ & ( (\PC|DOUT\(1) & (!\PC|DOUT\(3) & ((!\PC|DOUT\(2)) # (\PC|DOUT\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100010000000000000000000000000011000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~4_combout\);

\Decoder|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder|Equal1~1_combout\ = (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & (\ROM1|memROM~2_combout\ & !\ROM1|memROM~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \Decoder|Equal1~1_combout\);

\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = (\PC|DOUT\(0) & (!\PC|DOUT\(2) & (!\PC|DOUT\(3) & \ROM1|memROM~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(2),
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~6_combout\);

\ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~7_combout\ = (\PC|DOUT\(2) & (!\PC|DOUT\(3) & ((!\PC|DOUT\(0)) # (!\PC|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000000000000011100000000000001110000000000000111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~7_combout\);

\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = ( !\PC|DOUT\(4) & ( \ROM1|memROM~7_combout\ & ( (!\PC|DOUT\(8) & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\PC|DOUT\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \PC|ALT_INV_DOUT\(5),
	datae => \PC|ALT_INV_DOUT\(4),
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \ROM1|memROM~5_combout\);

\memoriaDados|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|process_0~0_combout\ = ( \ROM1|memROM~1_combout\ & ( (!\PC|DOUT\(3) & (!\PC|DOUT\(0) & (!\PC|DOUT\(2) $ (!\PC|DOUT\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001010000000000000000000000000000010100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \PC|ALT_INV_DOUT\(2),
	datac => \PC|ALT_INV_DOUT\(1),
	datad => \PC|ALT_INV_DOUT\(0),
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \memoriaDados|process_0~0_combout\);

\memoriaDados|ram~145\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~145_combout\ = (\ROM1|memROM~4_combout\ & (\ROM1|memROM~6_combout\ & (!\ROM1|memROM~5_combout\ & \memoriaDados|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \memoriaDados|ALT_INV_process_0~0_combout\,
	combout => \memoriaDados|ram~145_combout\);

\memoriaDados|ram~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(0),
	ena => \memoriaDados|ram~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~57_q\);

\memoriaDados|ram~146\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~146_combout\ = (\ROM1|memROM~4_combout\ & (\ROM1|memROM~6_combout\ & (\ROM1|memROM~5_combout\ & \memoriaDados|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \memoriaDados|ALT_INV_process_0~0_combout\,
	combout => \memoriaDados|ram~146_combout\);

\memoriaDados|ram~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(0),
	ena => \memoriaDados|ram~146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~73_q\);

\memoriaDados|ram~148\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~148_combout\ = (!\ROM1|memROM~4_combout\ & (\ROM1|memROM~6_combout\ & (\ROM1|memROM~5_combout\ & \memoriaDados|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \memoriaDados|ALT_INV_process_0~0_combout\,
	combout => \memoriaDados|ram~148_combout\);

\memoriaDados|ram~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(0),
	ena => \memoriaDados|ram~148_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~65_q\);

\memoriaDados|ram~149\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~149_combout\ = (\ROM1|memROM~4_combout\ & (!\ROM1|memROM~6_combout\ & (!\ROM1|memROM~5_combout\ & \memoriaDados|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \memoriaDados|ALT_INV_process_0~0_combout\,
	combout => \memoriaDados|ram~149_combout\);

\memoriaDados|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(0),
	ena => \memoriaDados|ram~149_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~25_q\);

\memoriaDados|ram~150\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~150_combout\ = (\ROM1|memROM~4_combout\ & (!\ROM1|memROM~6_combout\ & (\ROM1|memROM~5_combout\ & \memoriaDados|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \memoriaDados|ALT_INV_process_0~0_combout\,
	combout => \memoriaDados|ram~150_combout\);

\memoriaDados|ram~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(0),
	ena => \memoriaDados|ram~150_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~41_q\);

\memoriaDados|ram~152\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~152_combout\ = (!\ROM1|memROM~4_combout\ & (!\ROM1|memROM~6_combout\ & (\ROM1|memROM~5_combout\ & \memoriaDados|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \memoriaDados|ALT_INV_process_0~0_combout\,
	combout => \memoriaDados|ram~152_combout\);

\memoriaDados|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(0),
	ena => \memoriaDados|ram~152_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~33_q\);

\memoriaDados|ram~151\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~151_combout\ = (!\ROM1|memROM~4_combout\ & (!\ROM1|memROM~6_combout\ & (!\ROM1|memROM~5_combout\ & \memoriaDados|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \memoriaDados|ALT_INV_process_0~0_combout\,
	combout => \memoriaDados|ram~151_combout\);

\memoriaDados|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(0),
	ena => \memoriaDados|ram~151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~17_q\);

\memoriaDados|ram~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~113_combout\ = ( !\ROM1|memROM~5_combout\ & ( ((!\ROM1|memROM~4_combout\ & (((\memoriaDados|ram~17_q\ & !\ROM1|memROM~6_combout\)))) # (\ROM1|memROM~4_combout\ & (((\ROM1|memROM~6_combout\)) # (\memoriaDados|ram~25_q\)))) ) ) # ( 
-- \ROM1|memROM~5_combout\ & ( ((!\ROM1|memROM~4_combout\ & (((\memoriaDados|ram~33_q\ & !\ROM1|memROM~6_combout\)))) # (\ROM1|memROM~4_combout\ & (((\ROM1|memROM~6_combout\)) # (\memoriaDados|ram~41_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~25_q\,
	datab => \memoriaDados|ALT_INV_ram~41_q\,
	datac => \memoriaDados|ALT_INV_ram~33_q\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	datag => \memoriaDados|ALT_INV_ram~17_q\,
	combout => \memoriaDados|ram~113_combout\);

\memoriaDados|ram~147\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~147_combout\ = (!\ROM1|memROM~4_combout\ & (\ROM1|memROM~6_combout\ & (!\ROM1|memROM~5_combout\ & \memoriaDados|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \memoriaDados|ALT_INV_process_0~0_combout\,
	combout => \memoriaDados|ram~147_combout\);

\memoriaDados|ram~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(0),
	ena => \memoriaDados|ram~147_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~49_q\);

\memoriaDados|ram~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~81_combout\ = ( !\ROM1|memROM~5_combout\ & ( ((!\ROM1|memROM~6_combout\ & (((\memoriaDados|ram~113_combout\)))) # (\ROM1|memROM~6_combout\ & ((!\memoriaDados|ram~113_combout\ & ((\memoriaDados|ram~49_q\))) # 
-- (\memoriaDados|ram~113_combout\ & (\memoriaDados|ram~57_q\))))) ) ) # ( \ROM1|memROM~5_combout\ & ( ((!\ROM1|memROM~6_combout\ & (((\memoriaDados|ram~113_combout\)))) # (\ROM1|memROM~6_combout\ & ((!\memoriaDados|ram~113_combout\ & 
-- ((\memoriaDados|ram~65_q\))) # (\memoriaDados|ram~113_combout\ & (\memoriaDados|ram~73_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~57_q\,
	datab => \memoriaDados|ALT_INV_ram~73_q\,
	datac => \memoriaDados|ALT_INV_ram~65_q\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \memoriaDados|ALT_INV_ram~113_combout\,
	datag => \memoriaDados|ALT_INV_ram~49_q\,
	combout => \memoriaDados|ram~81_combout\);

\ULA1|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~34_cout\ = CARRY(( !\Decoder|Equal1~1_combout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Decoder|ALT_INV_Equal1~1_combout\,
	cin => GND,
	cout => \ULA1|Add0~34_cout\);

\ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~1_sumout\ = SUM(( !\Decoder|Equal1~1_combout\ $ (((!\Decoder|Equal1~0_combout\ & ((\memoriaDados|ram~81_combout\))) # (\Decoder|Equal1~0_combout\ & (\ROM1|memROM~4_combout\)))) ) + ( \REG1|DOUT\(0) ) + ( \ULA1|Add0~34_cout\ ))
-- \ULA1|Add0~2\ = CARRY(( !\Decoder|Equal1~1_combout\ $ (((!\Decoder|Equal1~0_combout\ & ((\memoriaDados|ram~81_combout\))) # (\Decoder|Equal1~0_combout\ & (\ROM1|memROM~4_combout\)))) ) + ( \REG1|DOUT\(0) ) + ( \ULA1|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110000101001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_Equal1~0_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \Decoder|ALT_INV_Equal1~1_combout\,
	datad => \memoriaDados|ALT_INV_ram~81_combout\,
	dataf => \REG1|ALT_INV_DOUT\(0),
	cin => \ULA1|Add0~34_cout\,
	sumout => \ULA1|Add0~1_sumout\,
	cout => \ULA1|Add0~2\);

\MUX1|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[0]~0_combout\ = (!\Decoder|Equal1~0_combout\ & ((\memoriaDados|ram~81_combout\))) # (\Decoder|Equal1~0_combout\ & (\ROM1|memROM~4_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_Equal1~0_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \memoriaDados|ALT_INV_ram~81_combout\,
	combout => \MUX1|saida_MUX[0]~0_combout\);

\Decoder|OUTPUT[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder|OUTPUT[3]~1_combout\ = (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~2_combout\ & (!\ROM1|memROM~0_combout\ $ (!\ROM1|memROM~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000100000000100000010000000010000001000000001000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \Decoder|OUTPUT[3]~1_combout\);

\Decoder|OUTPUT[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder|OUTPUT[4]~0_combout\ = (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~3_combout\ $ (((!\ROM1|memROM~0_combout\ & !\ROM1|memROM~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100100000000100110010000000010011001000000001001100100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \Decoder|OUTPUT[4]~0_combout\);

\REG1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|Add0~1_sumout\,
	asdata => \MUX1|saida_MUX[0]~0_combout\,
	sload => \Decoder|OUTPUT[3]~1_combout\,
	ena => \Decoder|OUTPUT[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(0));

\memoriaDados|ram~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(1),
	ena => \memoriaDados|ram~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~58_q\);

\memoriaDados|ram~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(1),
	ena => \memoriaDados|ram~146_combout\,
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
	d => \REG1|DOUT\(1),
	ena => \memoriaDados|ram~148_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~66_q\);

\memoriaDados|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(1),
	ena => \memoriaDados|ram~149_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~26_q\);

\memoriaDados|ram~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(1),
	ena => \memoriaDados|ram~150_combout\,
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
	d => \REG1|DOUT\(1),
	ena => \memoriaDados|ram~152_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~34_q\);

\memoriaDados|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(1),
	ena => \memoriaDados|ram~151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~18_q\);

\memoriaDados|ram~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~117_combout\ = ( !\ROM1|memROM~5_combout\ & ( ((!\ROM1|memROM~4_combout\ & (((\memoriaDados|ram~18_q\ & !\ROM1|memROM~6_combout\)))) # (\ROM1|memROM~4_combout\ & (((\ROM1|memROM~6_combout\)) # (\memoriaDados|ram~26_q\)))) ) ) # ( 
-- \ROM1|memROM~5_combout\ & ( ((!\ROM1|memROM~4_combout\ & (((\memoriaDados|ram~34_q\ & !\ROM1|memROM~6_combout\)))) # (\ROM1|memROM~4_combout\ & (((\ROM1|memROM~6_combout\)) # (\memoriaDados|ram~42_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~26_q\,
	datab => \memoriaDados|ALT_INV_ram~42_q\,
	datac => \memoriaDados|ALT_INV_ram~34_q\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	datag => \memoriaDados|ALT_INV_ram~18_q\,
	combout => \memoriaDados|ram~117_combout\);

\memoriaDados|ram~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(1),
	ena => \memoriaDados|ram~147_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~50_q\);

\memoriaDados|ram~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~85_combout\ = ( !\ROM1|memROM~5_combout\ & ( ((!\ROM1|memROM~6_combout\ & (((\memoriaDados|ram~117_combout\)))) # (\ROM1|memROM~6_combout\ & ((!\memoriaDados|ram~117_combout\ & ((\memoriaDados|ram~50_q\))) # 
-- (\memoriaDados|ram~117_combout\ & (\memoriaDados|ram~58_q\))))) ) ) # ( \ROM1|memROM~5_combout\ & ( ((!\ROM1|memROM~6_combout\ & (((\memoriaDados|ram~117_combout\)))) # (\ROM1|memROM~6_combout\ & ((!\memoriaDados|ram~117_combout\ & 
-- ((\memoriaDados|ram~66_q\))) # (\memoriaDados|ram~117_combout\ & (\memoriaDados|ram~74_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~58_q\,
	datab => \memoriaDados|ALT_INV_ram~74_q\,
	datac => \memoriaDados|ALT_INV_ram~66_q\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \memoriaDados|ALT_INV_ram~117_combout\,
	datag => \memoriaDados|ALT_INV_ram~50_q\,
	combout => \memoriaDados|ram~85_combout\);

\ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~5_sumout\ = SUM(( !\Decoder|Equal1~1_combout\ $ (((!\Decoder|Equal1~0_combout\ & ((\memoriaDados|ram~85_combout\))) # (\Decoder|Equal1~0_combout\ & (\ROM1|memROM~5_combout\)))) ) + ( \REG1|DOUT\(1) ) + ( \ULA1|Add0~2\ ))
-- \ULA1|Add0~6\ = CARRY(( !\Decoder|Equal1~1_combout\ $ (((!\Decoder|Equal1~0_combout\ & ((\memoriaDados|ram~85_combout\))) # (\Decoder|Equal1~0_combout\ & (\ROM1|memROM~5_combout\)))) ) + ( \REG1|DOUT\(1) ) + ( \ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100100101100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_Equal1~0_combout\,
	datab => \Decoder|ALT_INV_Equal1~1_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \memoriaDados|ALT_INV_ram~85_combout\,
	dataf => \REG1|ALT_INV_DOUT\(1),
	cin => \ULA1|Add0~2\,
	sumout => \ULA1|Add0~5_sumout\,
	cout => \ULA1|Add0~6\);

\MUX1|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[1]~1_combout\ = (!\Decoder|Equal1~0_combout\ & ((\memoriaDados|ram~85_combout\))) # (\Decoder|Equal1~0_combout\ & (\ROM1|memROM~5_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_Equal1~0_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \memoriaDados|ALT_INV_ram~85_combout\,
	combout => \MUX1|saida_MUX[1]~1_combout\);

\REG1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|Add0~5_sumout\,
	asdata => \MUX1|saida_MUX[1]~1_combout\,
	sload => \Decoder|OUTPUT[3]~1_combout\,
	ena => \Decoder|OUTPUT[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(1));

\memoriaDados|ram~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(2),
	ena => \memoriaDados|ram~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~59_q\);

\memoriaDados|ram~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(2),
	ena => \memoriaDados|ram~146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~75_q\);

\memoriaDados|ram~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(2),
	ena => \memoriaDados|ram~148_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~67_q\);

\memoriaDados|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(2),
	ena => \memoriaDados|ram~149_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~27_q\);

\memoriaDados|ram~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(2),
	ena => \memoriaDados|ram~150_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~43_q\);

\memoriaDados|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(2),
	ena => \memoriaDados|ram~152_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~35_q\);

\memoriaDados|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(2),
	ena => \memoriaDados|ram~151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~19_q\);

\memoriaDados|ram~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~121_combout\ = ( !\ROM1|memROM~5_combout\ & ( ((!\ROM1|memROM~4_combout\ & (((\memoriaDados|ram~19_q\ & !\ROM1|memROM~6_combout\)))) # (\ROM1|memROM~4_combout\ & (((\ROM1|memROM~6_combout\)) # (\memoriaDados|ram~27_q\)))) ) ) # ( 
-- \ROM1|memROM~5_combout\ & ( ((!\ROM1|memROM~4_combout\ & (((\memoriaDados|ram~35_q\ & !\ROM1|memROM~6_combout\)))) # (\ROM1|memROM~4_combout\ & (((\ROM1|memROM~6_combout\)) # (\memoriaDados|ram~43_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~27_q\,
	datab => \memoriaDados|ALT_INV_ram~43_q\,
	datac => \memoriaDados|ALT_INV_ram~35_q\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	datag => \memoriaDados|ALT_INV_ram~19_q\,
	combout => \memoriaDados|ram~121_combout\);

\memoriaDados|ram~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(2),
	ena => \memoriaDados|ram~147_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~51_q\);

\memoriaDados|ram~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~89_combout\ = ( !\ROM1|memROM~5_combout\ & ( ((!\ROM1|memROM~6_combout\ & (((\memoriaDados|ram~121_combout\)))) # (\ROM1|memROM~6_combout\ & ((!\memoriaDados|ram~121_combout\ & ((\memoriaDados|ram~51_q\))) # 
-- (\memoriaDados|ram~121_combout\ & (\memoriaDados|ram~59_q\))))) ) ) # ( \ROM1|memROM~5_combout\ & ( ((!\ROM1|memROM~6_combout\ & (((\memoriaDados|ram~121_combout\)))) # (\ROM1|memROM~6_combout\ & ((!\memoriaDados|ram~121_combout\ & 
-- ((\memoriaDados|ram~67_q\))) # (\memoriaDados|ram~121_combout\ & (\memoriaDados|ram~75_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~59_q\,
	datab => \memoriaDados|ALT_INV_ram~75_q\,
	datac => \memoriaDados|ALT_INV_ram~67_q\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \memoriaDados|ALT_INV_ram~121_combout\,
	datag => \memoriaDados|ALT_INV_ram~51_q\,
	combout => \memoriaDados|ram~89_combout\);

\ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~9_sumout\ = SUM(( !\Decoder|Equal1~1_combout\ $ (((!\Decoder|Equal1~0_combout\ & ((\memoriaDados|ram~89_combout\))) # (\Decoder|Equal1~0_combout\ & (\ROM1|memROM~6_combout\)))) ) + ( \REG1|DOUT\(2) ) + ( \ULA1|Add0~6\ ))
-- \ULA1|Add0~10\ = CARRY(( !\Decoder|Equal1~1_combout\ $ (((!\Decoder|Equal1~0_combout\ & ((\memoriaDados|ram~89_combout\))) # (\Decoder|Equal1~0_combout\ & (\ROM1|memROM~6_combout\)))) ) + ( \REG1|DOUT\(2) ) + ( \ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100100101100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_Equal1~0_combout\,
	datab => \Decoder|ALT_INV_Equal1~1_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \memoriaDados|ALT_INV_ram~89_combout\,
	dataf => \REG1|ALT_INV_DOUT\(2),
	cin => \ULA1|Add0~6\,
	sumout => \ULA1|Add0~9_sumout\,
	cout => \ULA1|Add0~10\);

\MUX1|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[2]~2_combout\ = (!\Decoder|Equal1~0_combout\ & ((\memoriaDados|ram~89_combout\))) # (\Decoder|Equal1~0_combout\ & (\ROM1|memROM~6_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_Equal1~0_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \memoriaDados|ALT_INV_ram~89_combout\,
	combout => \MUX1|saida_MUX[2]~2_combout\);

\REG1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|Add0~9_sumout\,
	asdata => \MUX1|saida_MUX[2]~2_combout\,
	sload => \Decoder|OUTPUT[3]~1_combout\,
	ena => \Decoder|OUTPUT[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(2));

\memoriaDados|ram~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(3),
	ena => \memoriaDados|ram~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~60_q\);

\memoriaDados|ram~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(3),
	ena => \memoriaDados|ram~146_combout\,
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
	d => \REG1|DOUT\(3),
	ena => \memoriaDados|ram~148_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~68_q\);

\memoriaDados|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(3),
	ena => \memoriaDados|ram~149_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~28_q\);

\memoriaDados|ram~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(3),
	ena => \memoriaDados|ram~150_combout\,
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
	d => \REG1|DOUT\(3),
	ena => \memoriaDados|ram~152_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~36_q\);

\memoriaDados|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(3),
	ena => \memoriaDados|ram~151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~20_q\);

\memoriaDados|ram~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~125_combout\ = ( !\ROM1|memROM~5_combout\ & ( ((!\ROM1|memROM~4_combout\ & (((\memoriaDados|ram~20_q\ & !\ROM1|memROM~6_combout\)))) # (\ROM1|memROM~4_combout\ & (((\ROM1|memROM~6_combout\)) # (\memoriaDados|ram~28_q\)))) ) ) # ( 
-- \ROM1|memROM~5_combout\ & ( ((!\ROM1|memROM~4_combout\ & (((\memoriaDados|ram~36_q\ & !\ROM1|memROM~6_combout\)))) # (\ROM1|memROM~4_combout\ & (((\ROM1|memROM~6_combout\)) # (\memoriaDados|ram~44_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~28_q\,
	datab => \memoriaDados|ALT_INV_ram~44_q\,
	datac => \memoriaDados|ALT_INV_ram~36_q\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	datag => \memoriaDados|ALT_INV_ram~20_q\,
	combout => \memoriaDados|ram~125_combout\);

\memoriaDados|ram~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(3),
	ena => \memoriaDados|ram~147_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~52_q\);

\memoriaDados|ram~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~93_combout\ = ( !\ROM1|memROM~5_combout\ & ( ((!\ROM1|memROM~6_combout\ & (((\memoriaDados|ram~125_combout\)))) # (\ROM1|memROM~6_combout\ & ((!\memoriaDados|ram~125_combout\ & ((\memoriaDados|ram~52_q\))) # 
-- (\memoriaDados|ram~125_combout\ & (\memoriaDados|ram~60_q\))))) ) ) # ( \ROM1|memROM~5_combout\ & ( ((!\ROM1|memROM~6_combout\ & (((\memoriaDados|ram~125_combout\)))) # (\ROM1|memROM~6_combout\ & ((!\memoriaDados|ram~125_combout\ & 
-- ((\memoriaDados|ram~68_q\))) # (\memoriaDados|ram~125_combout\ & (\memoriaDados|ram~76_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~60_q\,
	datab => \memoriaDados|ALT_INV_ram~76_q\,
	datac => \memoriaDados|ALT_INV_ram~68_q\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \memoriaDados|ALT_INV_ram~125_combout\,
	datag => \memoriaDados|ALT_INV_ram~52_q\,
	combout => \memoriaDados|ram~93_combout\);

\ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~13_sumout\ = SUM(( !\Decoder|Equal1~1_combout\ $ (((!\Decoder|Equal1~0_combout\ & \memoriaDados|ram~93_combout\))) ) + ( \REG1|DOUT\(3) ) + ( \ULA1|Add0~10\ ))
-- \ULA1|Add0~14\ = CARRY(( !\Decoder|Equal1~1_combout\ $ (((!\Decoder|Equal1~0_combout\ & \memoriaDados|ram~93_combout\))) ) + ( \REG1|DOUT\(3) ) + ( \ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_Equal1~1_combout\,
	datab => \Decoder|ALT_INV_Equal1~0_combout\,
	datad => \memoriaDados|ALT_INV_ram~93_combout\,
	dataf => \REG1|ALT_INV_DOUT\(3),
	cin => \ULA1|Add0~10\,
	sumout => \ULA1|Add0~13_sumout\,
	cout => \ULA1|Add0~14\);

\MUX1|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[3]~3_combout\ = (!\Decoder|Equal1~0_combout\ & \memoriaDados|ram~93_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_Equal1~0_combout\,
	datab => \memoriaDados|ALT_INV_ram~93_combout\,
	combout => \MUX1|saida_MUX[3]~3_combout\);

\REG1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|Add0~13_sumout\,
	asdata => \MUX1|saida_MUX[3]~3_combout\,
	sload => \Decoder|OUTPUT[3]~1_combout\,
	ena => \Decoder|OUTPUT[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(3));

\memoriaDados|ram~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(4),
	ena => \memoriaDados|ram~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~61_q\);

\memoriaDados|ram~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(4),
	ena => \memoriaDados|ram~146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~77_q\);

\memoriaDados|ram~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(4),
	ena => \memoriaDados|ram~148_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~69_q\);

\memoriaDados|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(4),
	ena => \memoriaDados|ram~149_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~29_q\);

\memoriaDados|ram~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(4),
	ena => \memoriaDados|ram~150_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~45_q\);

\memoriaDados|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(4),
	ena => \memoriaDados|ram~152_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~37_q\);

\memoriaDados|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(4),
	ena => \memoriaDados|ram~151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~21_q\);

\memoriaDados|ram~129\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~129_combout\ = ( !\ROM1|memROM~5_combout\ & ( ((!\ROM1|memROM~4_combout\ & (((\memoriaDados|ram~21_q\ & !\ROM1|memROM~6_combout\)))) # (\ROM1|memROM~4_combout\ & (((\ROM1|memROM~6_combout\)) # (\memoriaDados|ram~29_q\)))) ) ) # ( 
-- \ROM1|memROM~5_combout\ & ( ((!\ROM1|memROM~4_combout\ & (((\memoriaDados|ram~37_q\ & !\ROM1|memROM~6_combout\)))) # (\ROM1|memROM~4_combout\ & (((\ROM1|memROM~6_combout\)) # (\memoriaDados|ram~45_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~29_q\,
	datab => \memoriaDados|ALT_INV_ram~45_q\,
	datac => \memoriaDados|ALT_INV_ram~37_q\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	datag => \memoriaDados|ALT_INV_ram~21_q\,
	combout => \memoriaDados|ram~129_combout\);

\memoriaDados|ram~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(4),
	ena => \memoriaDados|ram~147_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~53_q\);

\memoriaDados|ram~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~97_combout\ = ( !\ROM1|memROM~5_combout\ & ( ((!\ROM1|memROM~6_combout\ & (((\memoriaDados|ram~129_combout\)))) # (\ROM1|memROM~6_combout\ & ((!\memoriaDados|ram~129_combout\ & ((\memoriaDados|ram~53_q\))) # 
-- (\memoriaDados|ram~129_combout\ & (\memoriaDados|ram~61_q\))))) ) ) # ( \ROM1|memROM~5_combout\ & ( ((!\ROM1|memROM~6_combout\ & (((\memoriaDados|ram~129_combout\)))) # (\ROM1|memROM~6_combout\ & ((!\memoriaDados|ram~129_combout\ & 
-- ((\memoriaDados|ram~69_q\))) # (\memoriaDados|ram~129_combout\ & (\memoriaDados|ram~77_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~61_q\,
	datab => \memoriaDados|ALT_INV_ram~77_q\,
	datac => \memoriaDados|ALT_INV_ram~69_q\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \memoriaDados|ALT_INV_ram~129_combout\,
	datag => \memoriaDados|ALT_INV_ram~53_q\,
	combout => \memoriaDados|ram~97_combout\);

\ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~17_sumout\ = SUM(( !\Decoder|Equal1~1_combout\ $ (((!\Decoder|Equal1~0_combout\ & \memoriaDados|ram~97_combout\))) ) + ( \REG1|DOUT\(4) ) + ( \ULA1|Add0~14\ ))
-- \ULA1|Add0~18\ = CARRY(( !\Decoder|Equal1~1_combout\ $ (((!\Decoder|Equal1~0_combout\ & \memoriaDados|ram~97_combout\))) ) + ( \REG1|DOUT\(4) ) + ( \ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_Equal1~1_combout\,
	datab => \Decoder|ALT_INV_Equal1~0_combout\,
	datad => \memoriaDados|ALT_INV_ram~97_combout\,
	dataf => \REG1|ALT_INV_DOUT\(4),
	cin => \ULA1|Add0~14\,
	sumout => \ULA1|Add0~17_sumout\,
	cout => \ULA1|Add0~18\);

\MUX1|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[4]~4_combout\ = (!\Decoder|Equal1~0_combout\ & \memoriaDados|ram~97_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_Equal1~0_combout\,
	datab => \memoriaDados|ALT_INV_ram~97_combout\,
	combout => \MUX1|saida_MUX[4]~4_combout\);

\REG1|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|Add0~17_sumout\,
	asdata => \MUX1|saida_MUX[4]~4_combout\,
	sload => \Decoder|OUTPUT[3]~1_combout\,
	ena => \Decoder|OUTPUT[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(4));

\memoriaDados|ram~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(5),
	ena => \memoriaDados|ram~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~62_q\);

\memoriaDados|ram~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(5),
	ena => \memoriaDados|ram~146_combout\,
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
	d => \REG1|DOUT\(5),
	ena => \memoriaDados|ram~148_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~70_q\);

\memoriaDados|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(5),
	ena => \memoriaDados|ram~149_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~30_q\);

\memoriaDados|ram~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(5),
	ena => \memoriaDados|ram~150_combout\,
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
	d => \REG1|DOUT\(5),
	ena => \memoriaDados|ram~152_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~38_q\);

\memoriaDados|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(5),
	ena => \memoriaDados|ram~151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~22_q\);

\memoriaDados|ram~133\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~133_combout\ = ( !\ROM1|memROM~5_combout\ & ( ((!\ROM1|memROM~4_combout\ & (((\memoriaDados|ram~22_q\ & !\ROM1|memROM~6_combout\)))) # (\ROM1|memROM~4_combout\ & (((\ROM1|memROM~6_combout\)) # (\memoriaDados|ram~30_q\)))) ) ) # ( 
-- \ROM1|memROM~5_combout\ & ( ((!\ROM1|memROM~4_combout\ & (((\memoriaDados|ram~38_q\ & !\ROM1|memROM~6_combout\)))) # (\ROM1|memROM~4_combout\ & (((\ROM1|memROM~6_combout\)) # (\memoriaDados|ram~46_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~30_q\,
	datab => \memoriaDados|ALT_INV_ram~46_q\,
	datac => \memoriaDados|ALT_INV_ram~38_q\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	datag => \memoriaDados|ALT_INV_ram~22_q\,
	combout => \memoriaDados|ram~133_combout\);

\memoriaDados|ram~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(5),
	ena => \memoriaDados|ram~147_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~54_q\);

\memoriaDados|ram~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~101_combout\ = ( !\ROM1|memROM~5_combout\ & ( ((!\ROM1|memROM~6_combout\ & (((\memoriaDados|ram~133_combout\)))) # (\ROM1|memROM~6_combout\ & ((!\memoriaDados|ram~133_combout\ & ((\memoriaDados|ram~54_q\))) # 
-- (\memoriaDados|ram~133_combout\ & (\memoriaDados|ram~62_q\))))) ) ) # ( \ROM1|memROM~5_combout\ & ( ((!\ROM1|memROM~6_combout\ & (((\memoriaDados|ram~133_combout\)))) # (\ROM1|memROM~6_combout\ & ((!\memoriaDados|ram~133_combout\ & 
-- ((\memoriaDados|ram~70_q\))) # (\memoriaDados|ram~133_combout\ & (\memoriaDados|ram~78_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~62_q\,
	datab => \memoriaDados|ALT_INV_ram~78_q\,
	datac => \memoriaDados|ALT_INV_ram~70_q\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \memoriaDados|ALT_INV_ram~133_combout\,
	datag => \memoriaDados|ALT_INV_ram~54_q\,
	combout => \memoriaDados|ram~101_combout\);

\ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~21_sumout\ = SUM(( !\Decoder|Equal1~1_combout\ $ (((!\Decoder|Equal1~0_combout\ & \memoriaDados|ram~101_combout\))) ) + ( \REG1|DOUT\(5) ) + ( \ULA1|Add0~18\ ))
-- \ULA1|Add0~22\ = CARRY(( !\Decoder|Equal1~1_combout\ $ (((!\Decoder|Equal1~0_combout\ & \memoriaDados|ram~101_combout\))) ) + ( \REG1|DOUT\(5) ) + ( \ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_Equal1~1_combout\,
	datab => \Decoder|ALT_INV_Equal1~0_combout\,
	datad => \memoriaDados|ALT_INV_ram~101_combout\,
	dataf => \REG1|ALT_INV_DOUT\(5),
	cin => \ULA1|Add0~18\,
	sumout => \ULA1|Add0~21_sumout\,
	cout => \ULA1|Add0~22\);

\MUX1|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[5]~5_combout\ = (!\Decoder|Equal1~0_combout\ & \memoriaDados|ram~101_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_Equal1~0_combout\,
	datab => \memoriaDados|ALT_INV_ram~101_combout\,
	combout => \MUX1|saida_MUX[5]~5_combout\);

\REG1|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|Add0~21_sumout\,
	asdata => \MUX1|saida_MUX[5]~5_combout\,
	sload => \Decoder|OUTPUT[3]~1_combout\,
	ena => \Decoder|OUTPUT[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(5));

\memoriaDados|ram~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(6),
	ena => \memoriaDados|ram~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~63_q\);

\memoriaDados|ram~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(6),
	ena => \memoriaDados|ram~146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~79_q\);

\memoriaDados|ram~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(6),
	ena => \memoriaDados|ram~148_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~71_q\);

\memoriaDados|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(6),
	ena => \memoriaDados|ram~149_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~31_q\);

\memoriaDados|ram~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(6),
	ena => \memoriaDados|ram~150_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~47_q\);

\memoriaDados|ram~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(6),
	ena => \memoriaDados|ram~152_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~39_q\);

\memoriaDados|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(6),
	ena => \memoriaDados|ram~151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~23_q\);

\memoriaDados|ram~137\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~137_combout\ = ( !\ROM1|memROM~5_combout\ & ( ((!\ROM1|memROM~4_combout\ & (((\memoriaDados|ram~23_q\ & !\ROM1|memROM~6_combout\)))) # (\ROM1|memROM~4_combout\ & (((\ROM1|memROM~6_combout\)) # (\memoriaDados|ram~31_q\)))) ) ) # ( 
-- \ROM1|memROM~5_combout\ & ( ((!\ROM1|memROM~4_combout\ & (((\memoriaDados|ram~39_q\ & !\ROM1|memROM~6_combout\)))) # (\ROM1|memROM~4_combout\ & (((\ROM1|memROM~6_combout\)) # (\memoriaDados|ram~47_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~31_q\,
	datab => \memoriaDados|ALT_INV_ram~47_q\,
	datac => \memoriaDados|ALT_INV_ram~39_q\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	datag => \memoriaDados|ALT_INV_ram~23_q\,
	combout => \memoriaDados|ram~137_combout\);

\memoriaDados|ram~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(6),
	ena => \memoriaDados|ram~147_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~55_q\);

\memoriaDados|ram~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~105_combout\ = ( !\ROM1|memROM~5_combout\ & ( ((!\ROM1|memROM~6_combout\ & (((\memoriaDados|ram~137_combout\)))) # (\ROM1|memROM~6_combout\ & ((!\memoriaDados|ram~137_combout\ & ((\memoriaDados|ram~55_q\))) # 
-- (\memoriaDados|ram~137_combout\ & (\memoriaDados|ram~63_q\))))) ) ) # ( \ROM1|memROM~5_combout\ & ( ((!\ROM1|memROM~6_combout\ & (((\memoriaDados|ram~137_combout\)))) # (\ROM1|memROM~6_combout\ & ((!\memoriaDados|ram~137_combout\ & 
-- ((\memoriaDados|ram~71_q\))) # (\memoriaDados|ram~137_combout\ & (\memoriaDados|ram~79_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~63_q\,
	datab => \memoriaDados|ALT_INV_ram~79_q\,
	datac => \memoriaDados|ALT_INV_ram~71_q\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \memoriaDados|ALT_INV_ram~137_combout\,
	datag => \memoriaDados|ALT_INV_ram~55_q\,
	combout => \memoriaDados|ram~105_combout\);

\ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~25_sumout\ = SUM(( !\Decoder|Equal1~1_combout\ $ (((!\Decoder|Equal1~0_combout\ & \memoriaDados|ram~105_combout\))) ) + ( \REG1|DOUT\(6) ) + ( \ULA1|Add0~22\ ))
-- \ULA1|Add0~26\ = CARRY(( !\Decoder|Equal1~1_combout\ $ (((!\Decoder|Equal1~0_combout\ & \memoriaDados|ram~105_combout\))) ) + ( \REG1|DOUT\(6) ) + ( \ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_Equal1~1_combout\,
	datab => \Decoder|ALT_INV_Equal1~0_combout\,
	datad => \memoriaDados|ALT_INV_ram~105_combout\,
	dataf => \REG1|ALT_INV_DOUT\(6),
	cin => \ULA1|Add0~22\,
	sumout => \ULA1|Add0~25_sumout\,
	cout => \ULA1|Add0~26\);

\MUX1|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[6]~6_combout\ = (!\Decoder|Equal1~0_combout\ & \memoriaDados|ram~105_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_Equal1~0_combout\,
	datab => \memoriaDados|ALT_INV_ram~105_combout\,
	combout => \MUX1|saida_MUX[6]~6_combout\);

\REG1|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|Add0~25_sumout\,
	asdata => \MUX1|saida_MUX[6]~6_combout\,
	sload => \Decoder|OUTPUT[3]~1_combout\,
	ena => \Decoder|OUTPUT[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(6));

\memoriaDados|ram~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(7),
	ena => \memoriaDados|ram~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~64_q\);

\memoriaDados|ram~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(7),
	ena => \memoriaDados|ram~146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~80_q\);

\memoriaDados|ram~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(7),
	ena => \memoriaDados|ram~148_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~72_q\);

\memoriaDados|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(7),
	ena => \memoriaDados|ram~149_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~32_q\);

\memoriaDados|ram~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(7),
	ena => \memoriaDados|ram~150_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~48_q\);

\memoriaDados|ram~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(7),
	ena => \memoriaDados|ram~152_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~40_q\);

\memoriaDados|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(7),
	ena => \memoriaDados|ram~151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~24_q\);

\memoriaDados|ram~141\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~141_combout\ = ( !\ROM1|memROM~5_combout\ & ( ((!\ROM1|memROM~4_combout\ & (((\memoriaDados|ram~24_q\ & !\ROM1|memROM~6_combout\)))) # (\ROM1|memROM~4_combout\ & (((\ROM1|memROM~6_combout\)) # (\memoriaDados|ram~32_q\)))) ) ) # ( 
-- \ROM1|memROM~5_combout\ & ( ((!\ROM1|memROM~4_combout\ & (((\memoriaDados|ram~40_q\ & !\ROM1|memROM~6_combout\)))) # (\ROM1|memROM~4_combout\ & (((\ROM1|memROM~6_combout\)) # (\memoriaDados|ram~48_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~32_q\,
	datab => \memoriaDados|ALT_INV_ram~48_q\,
	datac => \memoriaDados|ALT_INV_ram~40_q\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	datag => \memoriaDados|ALT_INV_ram~24_q\,
	combout => \memoriaDados|ram~141_combout\);

\memoriaDados|ram~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(7),
	ena => \memoriaDados|ram~147_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram~56_q\);

\memoriaDados|ram~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~109_combout\ = ( !\ROM1|memROM~5_combout\ & ( ((!\ROM1|memROM~6_combout\ & (((\memoriaDados|ram~141_combout\)))) # (\ROM1|memROM~6_combout\ & ((!\memoriaDados|ram~141_combout\ & ((\memoriaDados|ram~56_q\))) # 
-- (\memoriaDados|ram~141_combout\ & (\memoriaDados|ram~64_q\))))) ) ) # ( \ROM1|memROM~5_combout\ & ( ((!\ROM1|memROM~6_combout\ & (((\memoriaDados|ram~141_combout\)))) # (\ROM1|memROM~6_combout\ & ((!\memoriaDados|ram~141_combout\ & 
-- ((\memoriaDados|ram~72_q\))) # (\memoriaDados|ram~141_combout\ & (\memoriaDados|ram~80_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ALT_INV_ram~64_q\,
	datab => \memoriaDados|ALT_INV_ram~80_q\,
	datac => \memoriaDados|ALT_INV_ram~72_q\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \memoriaDados|ALT_INV_ram~141_combout\,
	datag => \memoriaDados|ALT_INV_ram~56_q\,
	combout => \memoriaDados|ram~109_combout\);

\ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~29_sumout\ = SUM(( !\Decoder|Equal1~1_combout\ $ (((!\Decoder|Equal1~0_combout\ & \memoriaDados|ram~109_combout\))) ) + ( \REG1|DOUT\(7) ) + ( \ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_Equal1~1_combout\,
	datab => \Decoder|ALT_INV_Equal1~0_combout\,
	datad => \memoriaDados|ALT_INV_ram~109_combout\,
	dataf => \REG1|ALT_INV_DOUT\(7),
	cin => \ULA1|Add0~26\,
	sumout => \ULA1|Add0~29_sumout\);

\MUX1|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[7]~7_combout\ = (!\Decoder|Equal1~0_combout\ & \memoriaDados|ram~109_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_Equal1~0_combout\,
	datab => \memoriaDados|ALT_INV_ram~109_combout\,
	combout => \MUX1|saida_MUX[7]~7_combout\);

\REG1|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|Add0~29_sumout\,
	asdata => \MUX1|saida_MUX[7]~7_combout\,
	sload => \Decoder|OUTPUT[3]~1_combout\,
	ena => \Decoder|OUTPUT[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(7));

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

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;

ww_SEL_MUX <= \SEL_MUX~output_o\;

ww_HABILITA <= \HABILITA~output_o\;

ww_OPERACAO(0) <= \OPERACAO[0]~output_o\;

ww_OPERACAO(1) <= \OPERACAO[1]~output_o\;

ww_SAIDA_MUX(0) <= \SAIDA_MUX[0]~output_o\;

ww_SAIDA_MUX(1) <= \SAIDA_MUX[1]~output_o\;

ww_SAIDA_MUX(2) <= \SAIDA_MUX[2]~output_o\;

ww_SAIDA_MUX(3) <= \SAIDA_MUX[3]~output_o\;

ww_SAIDA_MUX(4) <= \SAIDA_MUX[4]~output_o\;

ww_SAIDA_MUX(5) <= \SAIDA_MUX[5]~output_o\;

ww_SAIDA_MUX(6) <= \SAIDA_MUX[6]~output_o\;

ww_SAIDA_MUX(7) <= \SAIDA_MUX[7]~output_o\;
END structure;


