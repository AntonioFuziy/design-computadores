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

-- DATE "10/27/2021 17:36:11"

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

ENTITY 	MIPS_Aula14 IS
    PORT (
	CLOCK_50 : IN std_logic;
	ULA_A : OUT std_logic_vector(31 DOWNTO 0);
	ULA_B : OUT std_logic_vector(31 DOWNTO 0);
	Operacao_ULA_OUT : OUT std_logic_vector(2 DOWNTO 0);
	Valor_Operacao : OUT std_logic_vector(31 DOWNTO 0)
	);
END MIPS_Aula14;

ARCHITECTURE structure OF MIPS_Aula14 IS
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
SIGNAL ww_ULA_A : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_ULA_B : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Operacao_ULA_OUT : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Valor_Operacao : std_logic_vector(31 DOWNTO 0);
SIGNAL \ULA_A[0]~output_o\ : std_logic;
SIGNAL \ULA_A[1]~output_o\ : std_logic;
SIGNAL \ULA_A[2]~output_o\ : std_logic;
SIGNAL \ULA_A[3]~output_o\ : std_logic;
SIGNAL \ULA_A[4]~output_o\ : std_logic;
SIGNAL \ULA_A[5]~output_o\ : std_logic;
SIGNAL \ULA_A[6]~output_o\ : std_logic;
SIGNAL \ULA_A[7]~output_o\ : std_logic;
SIGNAL \ULA_A[8]~output_o\ : std_logic;
SIGNAL \ULA_A[9]~output_o\ : std_logic;
SIGNAL \ULA_A[10]~output_o\ : std_logic;
SIGNAL \ULA_A[11]~output_o\ : std_logic;
SIGNAL \ULA_A[12]~output_o\ : std_logic;
SIGNAL \ULA_A[13]~output_o\ : std_logic;
SIGNAL \ULA_A[14]~output_o\ : std_logic;
SIGNAL \ULA_A[15]~output_o\ : std_logic;
SIGNAL \ULA_A[16]~output_o\ : std_logic;
SIGNAL \ULA_A[17]~output_o\ : std_logic;
SIGNAL \ULA_A[18]~output_o\ : std_logic;
SIGNAL \ULA_A[19]~output_o\ : std_logic;
SIGNAL \ULA_A[20]~output_o\ : std_logic;
SIGNAL \ULA_A[21]~output_o\ : std_logic;
SIGNAL \ULA_A[22]~output_o\ : std_logic;
SIGNAL \ULA_A[23]~output_o\ : std_logic;
SIGNAL \ULA_A[24]~output_o\ : std_logic;
SIGNAL \ULA_A[25]~output_o\ : std_logic;
SIGNAL \ULA_A[26]~output_o\ : std_logic;
SIGNAL \ULA_A[27]~output_o\ : std_logic;
SIGNAL \ULA_A[28]~output_o\ : std_logic;
SIGNAL \ULA_A[29]~output_o\ : std_logic;
SIGNAL \ULA_A[30]~output_o\ : std_logic;
SIGNAL \ULA_A[31]~output_o\ : std_logic;
SIGNAL \ULA_B[0]~output_o\ : std_logic;
SIGNAL \ULA_B[1]~output_o\ : std_logic;
SIGNAL \ULA_B[2]~output_o\ : std_logic;
SIGNAL \ULA_B[3]~output_o\ : std_logic;
SIGNAL \ULA_B[4]~output_o\ : std_logic;
SIGNAL \ULA_B[5]~output_o\ : std_logic;
SIGNAL \ULA_B[6]~output_o\ : std_logic;
SIGNAL \ULA_B[7]~output_o\ : std_logic;
SIGNAL \ULA_B[8]~output_o\ : std_logic;
SIGNAL \ULA_B[9]~output_o\ : std_logic;
SIGNAL \ULA_B[10]~output_o\ : std_logic;
SIGNAL \ULA_B[11]~output_o\ : std_logic;
SIGNAL \ULA_B[12]~output_o\ : std_logic;
SIGNAL \ULA_B[13]~output_o\ : std_logic;
SIGNAL \ULA_B[14]~output_o\ : std_logic;
SIGNAL \ULA_B[15]~output_o\ : std_logic;
SIGNAL \ULA_B[16]~output_o\ : std_logic;
SIGNAL \ULA_B[17]~output_o\ : std_logic;
SIGNAL \ULA_B[18]~output_o\ : std_logic;
SIGNAL \ULA_B[19]~output_o\ : std_logic;
SIGNAL \ULA_B[20]~output_o\ : std_logic;
SIGNAL \ULA_B[21]~output_o\ : std_logic;
SIGNAL \ULA_B[22]~output_o\ : std_logic;
SIGNAL \ULA_B[23]~output_o\ : std_logic;
SIGNAL \ULA_B[24]~output_o\ : std_logic;
SIGNAL \ULA_B[25]~output_o\ : std_logic;
SIGNAL \ULA_B[26]~output_o\ : std_logic;
SIGNAL \ULA_B[27]~output_o\ : std_logic;
SIGNAL \ULA_B[28]~output_o\ : std_logic;
SIGNAL \ULA_B[29]~output_o\ : std_logic;
SIGNAL \ULA_B[30]~output_o\ : std_logic;
SIGNAL \ULA_B[31]~output_o\ : std_logic;
SIGNAL \Operacao_ULA_OUT[0]~output_o\ : std_logic;
SIGNAL \Operacao_ULA_OUT[1]~output_o\ : std_logic;
SIGNAL \Operacao_ULA_OUT[2]~output_o\ : std_logic;
SIGNAL \Valor_Operacao[0]~output_o\ : std_logic;
SIGNAL \Valor_Operacao[1]~output_o\ : std_logic;
SIGNAL \Valor_Operacao[2]~output_o\ : std_logic;
SIGNAL \Valor_Operacao[3]~output_o\ : std_logic;
SIGNAL \Valor_Operacao[4]~output_o\ : std_logic;
SIGNAL \Valor_Operacao[5]~output_o\ : std_logic;
SIGNAL \Valor_Operacao[6]~output_o\ : std_logic;
SIGNAL \Valor_Operacao[7]~output_o\ : std_logic;
SIGNAL \Valor_Operacao[8]~output_o\ : std_logic;
SIGNAL \Valor_Operacao[9]~output_o\ : std_logic;
SIGNAL \Valor_Operacao[10]~output_o\ : std_logic;
SIGNAL \Valor_Operacao[11]~output_o\ : std_logic;
SIGNAL \Valor_Operacao[12]~output_o\ : std_logic;
SIGNAL \Valor_Operacao[13]~output_o\ : std_logic;
SIGNAL \Valor_Operacao[14]~output_o\ : std_logic;
SIGNAL \Valor_Operacao[15]~output_o\ : std_logic;
SIGNAL \Valor_Operacao[16]~output_o\ : std_logic;
SIGNAL \Valor_Operacao[17]~output_o\ : std_logic;
SIGNAL \Valor_Operacao[18]~output_o\ : std_logic;
SIGNAL \Valor_Operacao[19]~output_o\ : std_logic;
SIGNAL \Valor_Operacao[20]~output_o\ : std_logic;
SIGNAL \Valor_Operacao[21]~output_o\ : std_logic;
SIGNAL \Valor_Operacao[22]~output_o\ : std_logic;
SIGNAL \Valor_Operacao[23]~output_o\ : std_logic;
SIGNAL \Valor_Operacao[24]~output_o\ : std_logic;
SIGNAL \Valor_Operacao[25]~output_o\ : std_logic;
SIGNAL \Valor_Operacao[26]~output_o\ : std_logic;
SIGNAL \Valor_Operacao[27]~output_o\ : std_logic;
SIGNAL \Valor_Operacao[28]~output_o\ : std_logic;
SIGNAL \Valor_Operacao[29]~output_o\ : std_logic;
SIGNAL \Valor_Operacao[30]~output_o\ : std_logic;
SIGNAL \Valor_Operacao[31]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \somadorConstante|Add0~1_sumout\ : std_logic;
SIGNAL \somadorConstante|Add0~2\ : std_logic;
SIGNAL \somadorConstante|Add0~5_sumout\ : std_logic;
SIGNAL \somadorConstante|Add0~6\ : std_logic;
SIGNAL \somadorConstante|Add0~9_sumout\ : std_logic;
SIGNAL \somadorConstante|Add0~10\ : std_logic;
SIGNAL \somadorConstante|Add0~13_sumout\ : std_logic;
SIGNAL \somadorConstante|Add0~14\ : std_logic;
SIGNAL \somadorConstante|Add0~21_sumout\ : std_logic;
SIGNAL \somadorConstante|Add0~22\ : std_logic;
SIGNAL \somadorConstante|Add0~17_sumout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \ULA1|Add0~130_cout\ : std_logic;
SIGNAL \ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \Banco_Registradores|registrador~1062_combout\ : std_logic;
SIGNAL \Banco_Registradores|registrador~454_q\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \Banco_Registradores|saidaA[0]~0_combout\ : std_logic;
SIGNAL \ULA1|Add0~2\ : std_logic;
SIGNAL \ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \Banco_Registradores|registrador~1063_combout\ : std_logic;
SIGNAL \Banco_Registradores|registrador~455_q\ : std_logic;
SIGNAL \Banco_Registradores|saidaA[1]~1_combout\ : std_logic;
SIGNAL \Banco_Registradores|saidaA[1]~2_combout\ : std_logic;
SIGNAL \ULA1|Add0~6\ : std_logic;
SIGNAL \ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \Banco_Registradores|registrador~1064_combout\ : std_logic;
SIGNAL \Banco_Registradores|registrador~456_q\ : std_logic;
SIGNAL \Banco_Registradores|saidaA[2]~3_combout\ : std_logic;
SIGNAL \ULA1|Add0~10\ : std_logic;
SIGNAL \ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \Banco_Registradores|registrador~457_q\ : std_logic;
SIGNAL \Banco_Registradores|saidaA[3]~4_combout\ : std_logic;
SIGNAL \ULA1|Add0~14\ : std_logic;
SIGNAL \ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \Banco_Registradores|registrador~1065_combout\ : std_logic;
SIGNAL \Banco_Registradores|registrador~458_q\ : std_logic;
SIGNAL \Banco_Registradores|saidaA[4]~5_combout\ : std_logic;
SIGNAL \ULA1|Add0~18\ : std_logic;
SIGNAL \ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \Banco_Registradores|registrador~459_q\ : std_logic;
SIGNAL \Banco_Registradores|saidaA[5]~6_combout\ : std_logic;
SIGNAL \ULA1|Add0~22\ : std_logic;
SIGNAL \ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \Banco_Registradores|registrador~460_q\ : std_logic;
SIGNAL \Banco_Registradores|saidaA[6]~7_combout\ : std_logic;
SIGNAL \ULA1|Add0~26\ : std_logic;
SIGNAL \ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \Banco_Registradores|registrador~461_q\ : std_logic;
SIGNAL \Banco_Registradores|saidaA[7]~8_combout\ : std_logic;
SIGNAL \ULA1|Add0~30\ : std_logic;
SIGNAL \ULA1|Add0~33_sumout\ : std_logic;
SIGNAL \Banco_Registradores|registrador~462_q\ : std_logic;
SIGNAL \Banco_Registradores|saidaA[8]~9_combout\ : std_logic;
SIGNAL \ULA1|Add0~34\ : std_logic;
SIGNAL \ULA1|Add0~37_sumout\ : std_logic;
SIGNAL \Banco_Registradores|registrador~463_q\ : std_logic;
SIGNAL \Banco_Registradores|saidaA[9]~10_combout\ : std_logic;
SIGNAL \ULA1|Add0~38\ : std_logic;
SIGNAL \ULA1|Add0~41_sumout\ : std_logic;
SIGNAL \Banco_Registradores|registrador~464_q\ : std_logic;
SIGNAL \Banco_Registradores|saidaA[10]~11_combout\ : std_logic;
SIGNAL \ULA1|Add0~42\ : std_logic;
SIGNAL \ULA1|Add0~45_sumout\ : std_logic;
SIGNAL \Banco_Registradores|registrador~465_q\ : std_logic;
SIGNAL \Banco_Registradores|saidaA[11]~12_combout\ : std_logic;
SIGNAL \ULA1|Add0~46\ : std_logic;
SIGNAL \ULA1|Add0~49_sumout\ : std_logic;
SIGNAL \Banco_Registradores|registrador~466_q\ : std_logic;
SIGNAL \Banco_Registradores|saidaA[12]~13_combout\ : std_logic;
SIGNAL \ULA1|Add0~50\ : std_logic;
SIGNAL \ULA1|Add0~53_sumout\ : std_logic;
SIGNAL \Banco_Registradores|registrador~467_q\ : std_logic;
SIGNAL \Banco_Registradores|saidaA[13]~14_combout\ : std_logic;
SIGNAL \ULA1|Add0~54\ : std_logic;
SIGNAL \ULA1|Add0~57_sumout\ : std_logic;
SIGNAL \Banco_Registradores|registrador~468_q\ : std_logic;
SIGNAL \Banco_Registradores|saidaA[14]~15_combout\ : std_logic;
SIGNAL \ULA1|Add0~58\ : std_logic;
SIGNAL \ULA1|Add0~61_sumout\ : std_logic;
SIGNAL \Banco_Registradores|registrador~469_q\ : std_logic;
SIGNAL \Banco_Registradores|saidaA[15]~16_combout\ : std_logic;
SIGNAL \ULA1|Add0~62\ : std_logic;
SIGNAL \ULA1|Add0~65_sumout\ : std_logic;
SIGNAL \Banco_Registradores|registrador~470_q\ : std_logic;
SIGNAL \Banco_Registradores|saidaA[16]~17_combout\ : std_logic;
SIGNAL \ULA1|Add0~66\ : std_logic;
SIGNAL \ULA1|Add0~69_sumout\ : std_logic;
SIGNAL \Banco_Registradores|registrador~471_q\ : std_logic;
SIGNAL \Banco_Registradores|saidaA[17]~18_combout\ : std_logic;
SIGNAL \ULA1|Add0~70\ : std_logic;
SIGNAL \ULA1|Add0~73_sumout\ : std_logic;
SIGNAL \Banco_Registradores|registrador~472_q\ : std_logic;
SIGNAL \Banco_Registradores|saidaA[18]~19_combout\ : std_logic;
SIGNAL \ULA1|Add0~74\ : std_logic;
SIGNAL \ULA1|Add0~77_sumout\ : std_logic;
SIGNAL \Banco_Registradores|registrador~473_q\ : std_logic;
SIGNAL \Banco_Registradores|saidaA[19]~20_combout\ : std_logic;
SIGNAL \ULA1|Add0~78\ : std_logic;
SIGNAL \ULA1|Add0~81_sumout\ : std_logic;
SIGNAL \Banco_Registradores|registrador~474_q\ : std_logic;
SIGNAL \Banco_Registradores|saidaA[20]~21_combout\ : std_logic;
SIGNAL \ULA1|Add0~82\ : std_logic;
SIGNAL \ULA1|Add0~85_sumout\ : std_logic;
SIGNAL \Banco_Registradores|registrador~475_q\ : std_logic;
SIGNAL \Banco_Registradores|saidaA[21]~22_combout\ : std_logic;
SIGNAL \ULA1|Add0~86\ : std_logic;
SIGNAL \ULA1|Add0~89_sumout\ : std_logic;
SIGNAL \Banco_Registradores|registrador~476_q\ : std_logic;
SIGNAL \Banco_Registradores|saidaA[22]~23_combout\ : std_logic;
SIGNAL \ULA1|Add0~90\ : std_logic;
SIGNAL \ULA1|Add0~93_sumout\ : std_logic;
SIGNAL \Banco_Registradores|registrador~477_q\ : std_logic;
SIGNAL \Banco_Registradores|saidaA[23]~24_combout\ : std_logic;
SIGNAL \Banco_Registradores|saidaA[0]~25_combout\ : std_logic;
SIGNAL \ULA1|Add0~94\ : std_logic;
SIGNAL \ULA1|Add0~97_sumout\ : std_logic;
SIGNAL \Banco_Registradores|registrador~478_q\ : std_logic;
SIGNAL \Banco_Registradores|saidaA[24]~26_combout\ : std_logic;
SIGNAL \ULA1|Add0~98\ : std_logic;
SIGNAL \ULA1|Add0~101_sumout\ : std_logic;
SIGNAL \Banco_Registradores|registrador~479_q\ : std_logic;
SIGNAL \Banco_Registradores|saidaA[25]~27_combout\ : std_logic;
SIGNAL \ULA1|Add0~102\ : std_logic;
SIGNAL \ULA1|Add0~105_sumout\ : std_logic;
SIGNAL \Banco_Registradores|registrador~480_q\ : std_logic;
SIGNAL \Banco_Registradores|saidaA[26]~28_combout\ : std_logic;
SIGNAL \ULA1|Add0~106\ : std_logic;
SIGNAL \ULA1|Add0~109_sumout\ : std_logic;
SIGNAL \Banco_Registradores|registrador~481_q\ : std_logic;
SIGNAL \Banco_Registradores|saidaA[27]~29_combout\ : std_logic;
SIGNAL \ULA1|Add0~110\ : std_logic;
SIGNAL \ULA1|Add0~113_sumout\ : std_logic;
SIGNAL \Banco_Registradores|registrador~482_q\ : std_logic;
SIGNAL \Banco_Registradores|saidaA[28]~30_combout\ : std_logic;
SIGNAL \ULA1|Add0~114\ : std_logic;
SIGNAL \ULA1|Add0~117_sumout\ : std_logic;
SIGNAL \Banco_Registradores|registrador~483_q\ : std_logic;
SIGNAL \Banco_Registradores|saidaA[29]~31_combout\ : std_logic;
SIGNAL \ULA1|Add0~118\ : std_logic;
SIGNAL \ULA1|Add0~121_sumout\ : std_logic;
SIGNAL \Banco_Registradores|registrador~484_q\ : std_logic;
SIGNAL \Banco_Registradores|saidaA[30]~32_combout\ : std_logic;
SIGNAL \ULA1|Add0~122\ : std_logic;
SIGNAL \ULA1|Add0~125_sumout\ : std_logic;
SIGNAL \Banco_Registradores|registrador~485_q\ : std_logic;
SIGNAL \Banco_Registradores|saidaA[31]~33_combout\ : std_logic;
SIGNAL \Decoder|OUTPUT[1]~0_combout\ : std_logic;
SIGNAL \PC|DOUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Banco_Registradores|ALT_INV_saidaA[7]~8_combout\ : std_logic;
SIGNAL \Banco_Registradores|ALT_INV_registrador~461_q\ : std_logic;
SIGNAL \Banco_Registradores|ALT_INV_saidaA[6]~7_combout\ : std_logic;
SIGNAL \Banco_Registradores|ALT_INV_registrador~460_q\ : std_logic;
SIGNAL \Banco_Registradores|ALT_INV_saidaA[5]~6_combout\ : std_logic;
SIGNAL \Banco_Registradores|ALT_INV_registrador~459_q\ : std_logic;
SIGNAL \Banco_Registradores|ALT_INV_saidaA[4]~5_combout\ : std_logic;
SIGNAL \Banco_Registradores|ALT_INV_registrador~458_q\ : std_logic;
SIGNAL \Banco_Registradores|ALT_INV_saidaA[3]~4_combout\ : std_logic;
SIGNAL \Banco_Registradores|ALT_INV_registrador~457_q\ : std_logic;
SIGNAL \Banco_Registradores|ALT_INV_saidaA[2]~3_combout\ : std_logic;
SIGNAL \Banco_Registradores|ALT_INV_registrador~456_q\ : std_logic;
SIGNAL \Banco_Registradores|ALT_INV_saidaA[1]~2_combout\ : std_logic;
SIGNAL \Banco_Registradores|ALT_INV_saidaA[1]~1_combout\ : std_logic;
SIGNAL \Banco_Registradores|ALT_INV_registrador~455_q\ : std_logic;
SIGNAL \Banco_Registradores|ALT_INV_saidaA[0]~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 2);
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \Banco_Registradores|ALT_INV_registrador~454_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \Banco_Registradores|ALT_INV_saidaA[31]~33_combout\ : std_logic;
SIGNAL \Banco_Registradores|ALT_INV_registrador~485_q\ : std_logic;
SIGNAL \Banco_Registradores|ALT_INV_saidaA[30]~32_combout\ : std_logic;
SIGNAL \Banco_Registradores|ALT_INV_registrador~484_q\ : std_logic;
SIGNAL \Banco_Registradores|ALT_INV_saidaA[29]~31_combout\ : std_logic;
SIGNAL \Banco_Registradores|ALT_INV_registrador~483_q\ : std_logic;
SIGNAL \Banco_Registradores|ALT_INV_saidaA[28]~30_combout\ : std_logic;
SIGNAL \Banco_Registradores|ALT_INV_registrador~482_q\ : std_logic;
SIGNAL \Banco_Registradores|ALT_INV_saidaA[27]~29_combout\ : std_logic;
SIGNAL \Banco_Registradores|ALT_INV_registrador~481_q\ : std_logic;
SIGNAL \Banco_Registradores|ALT_INV_saidaA[26]~28_combout\ : std_logic;
SIGNAL \Banco_Registradores|ALT_INV_registrador~480_q\ : std_logic;
SIGNAL \Banco_Registradores|ALT_INV_saidaA[25]~27_combout\ : std_logic;
SIGNAL \Banco_Registradores|ALT_INV_registrador~479_q\ : std_logic;
SIGNAL \Banco_Registradores|ALT_INV_saidaA[24]~26_combout\ : std_logic;
SIGNAL \Banco_Registradores|ALT_INV_registrador~478_q\ : std_logic;
SIGNAL \Banco_Registradores|ALT_INV_saidaA[0]~25_combout\ : std_logic;
SIGNAL \Banco_Registradores|ALT_INV_saidaA[23]~24_combout\ : std_logic;
SIGNAL \Banco_Registradores|ALT_INV_registrador~477_q\ : std_logic;
SIGNAL \Banco_Registradores|ALT_INV_saidaA[22]~23_combout\ : std_logic;
SIGNAL \Banco_Registradores|ALT_INV_registrador~476_q\ : std_logic;
SIGNAL \Banco_Registradores|ALT_INV_saidaA[21]~22_combout\ : std_logic;
SIGNAL \Banco_Registradores|ALT_INV_registrador~475_q\ : std_logic;
SIGNAL \Banco_Registradores|ALT_INV_saidaA[20]~21_combout\ : std_logic;
SIGNAL \Banco_Registradores|ALT_INV_registrador~474_q\ : std_logic;
SIGNAL \Banco_Registradores|ALT_INV_saidaA[19]~20_combout\ : std_logic;
SIGNAL \Banco_Registradores|ALT_INV_registrador~473_q\ : std_logic;
SIGNAL \Banco_Registradores|ALT_INV_saidaA[18]~19_combout\ : std_logic;
SIGNAL \Banco_Registradores|ALT_INV_registrador~472_q\ : std_logic;
SIGNAL \Banco_Registradores|ALT_INV_saidaA[17]~18_combout\ : std_logic;
SIGNAL \Banco_Registradores|ALT_INV_registrador~471_q\ : std_logic;
SIGNAL \Banco_Registradores|ALT_INV_saidaA[16]~17_combout\ : std_logic;
SIGNAL \Banco_Registradores|ALT_INV_registrador~470_q\ : std_logic;
SIGNAL \Banco_Registradores|ALT_INV_saidaA[15]~16_combout\ : std_logic;
SIGNAL \Banco_Registradores|ALT_INV_registrador~469_q\ : std_logic;
SIGNAL \Banco_Registradores|ALT_INV_saidaA[14]~15_combout\ : std_logic;
SIGNAL \Banco_Registradores|ALT_INV_registrador~468_q\ : std_logic;
SIGNAL \Banco_Registradores|ALT_INV_saidaA[13]~14_combout\ : std_logic;
SIGNAL \Banco_Registradores|ALT_INV_registrador~467_q\ : std_logic;
SIGNAL \Banco_Registradores|ALT_INV_saidaA[12]~13_combout\ : std_logic;
SIGNAL \Banco_Registradores|ALT_INV_registrador~466_q\ : std_logic;
SIGNAL \Banco_Registradores|ALT_INV_saidaA[11]~12_combout\ : std_logic;
SIGNAL \Banco_Registradores|ALT_INV_registrador~465_q\ : std_logic;
SIGNAL \Banco_Registradores|ALT_INV_saidaA[10]~11_combout\ : std_logic;
SIGNAL \Banco_Registradores|ALT_INV_registrador~464_q\ : std_logic;
SIGNAL \Banco_Registradores|ALT_INV_saidaA[9]~10_combout\ : std_logic;
SIGNAL \Banco_Registradores|ALT_INV_registrador~463_q\ : std_logic;
SIGNAL \Banco_Registradores|ALT_INV_saidaA[8]~9_combout\ : std_logic;
SIGNAL \Banco_Registradores|ALT_INV_registrador~462_q\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ULA_A <= ww_ULA_A;
ULA_B <= ww_ULA_B;
Operacao_ULA_OUT <= ww_Operacao_ULA_OUT;
Valor_Operacao <= ww_Valor_Operacao;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\Banco_Registradores|ALT_INV_saidaA[7]~8_combout\ <= NOT \Banco_Registradores|saidaA[7]~8_combout\;
\Banco_Registradores|ALT_INV_registrador~461_q\ <= NOT \Banco_Registradores|registrador~461_q\;
\Banco_Registradores|ALT_INV_saidaA[6]~7_combout\ <= NOT \Banco_Registradores|saidaA[6]~7_combout\;
\Banco_Registradores|ALT_INV_registrador~460_q\ <= NOT \Banco_Registradores|registrador~460_q\;
\Banco_Registradores|ALT_INV_saidaA[5]~6_combout\ <= NOT \Banco_Registradores|saidaA[5]~6_combout\;
\Banco_Registradores|ALT_INV_registrador~459_q\ <= NOT \Banco_Registradores|registrador~459_q\;
\Banco_Registradores|ALT_INV_saidaA[4]~5_combout\ <= NOT \Banco_Registradores|saidaA[4]~5_combout\;
\Banco_Registradores|ALT_INV_registrador~458_q\ <= NOT \Banco_Registradores|registrador~458_q\;
\Banco_Registradores|ALT_INV_saidaA[3]~4_combout\ <= NOT \Banco_Registradores|saidaA[3]~4_combout\;
\Banco_Registradores|ALT_INV_registrador~457_q\ <= NOT \Banco_Registradores|registrador~457_q\;
\Banco_Registradores|ALT_INV_saidaA[2]~3_combout\ <= NOT \Banco_Registradores|saidaA[2]~3_combout\;
\Banco_Registradores|ALT_INV_registrador~456_q\ <= NOT \Banco_Registradores|registrador~456_q\;
\Banco_Registradores|ALT_INV_saidaA[1]~2_combout\ <= NOT \Banco_Registradores|saidaA[1]~2_combout\;
\Banco_Registradores|ALT_INV_saidaA[1]~1_combout\ <= NOT \Banco_Registradores|saidaA[1]~1_combout\;
\Banco_Registradores|ALT_INV_registrador~455_q\ <= NOT \Banco_Registradores|registrador~455_q\;
\Banco_Registradores|ALT_INV_saidaA[0]~0_combout\ <= NOT \Banco_Registradores|saidaA[0]~0_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\PC|ALT_INV_DOUT\(6) <= NOT \PC|DOUT\(6);
\PC|ALT_INV_DOUT\(7) <= NOT \PC|DOUT\(7);
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\PC|ALT_INV_DOUT\(5) <= NOT \PC|DOUT\(5);
\PC|ALT_INV_DOUT\(4) <= NOT \PC|DOUT\(4);
\PC|ALT_INV_DOUT\(3) <= NOT \PC|DOUT\(3);
\PC|ALT_INV_DOUT\(2) <= NOT \PC|DOUT\(2);
\Banco_Registradores|ALT_INV_registrador~454_q\ <= NOT \Banco_Registradores|registrador~454_q\;
\ULA1|ALT_INV_Add0~17_sumout\ <= NOT \ULA1|Add0~17_sumout\;
\ULA1|ALT_INV_Add0~9_sumout\ <= NOT \ULA1|Add0~9_sumout\;
\ULA1|ALT_INV_Add0~5_sumout\ <= NOT \ULA1|Add0~5_sumout\;
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\ROM1|ALT_INV_memROM~3_combout\ <= NOT \ROM1|memROM~3_combout\;
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\Banco_Registradores|ALT_INV_saidaA[31]~33_combout\ <= NOT \Banco_Registradores|saidaA[31]~33_combout\;
\Banco_Registradores|ALT_INV_registrador~485_q\ <= NOT \Banco_Registradores|registrador~485_q\;
\Banco_Registradores|ALT_INV_saidaA[30]~32_combout\ <= NOT \Banco_Registradores|saidaA[30]~32_combout\;
\Banco_Registradores|ALT_INV_registrador~484_q\ <= NOT \Banco_Registradores|registrador~484_q\;
\Banco_Registradores|ALT_INV_saidaA[29]~31_combout\ <= NOT \Banco_Registradores|saidaA[29]~31_combout\;
\Banco_Registradores|ALT_INV_registrador~483_q\ <= NOT \Banco_Registradores|registrador~483_q\;
\Banco_Registradores|ALT_INV_saidaA[28]~30_combout\ <= NOT \Banco_Registradores|saidaA[28]~30_combout\;
\Banco_Registradores|ALT_INV_registrador~482_q\ <= NOT \Banco_Registradores|registrador~482_q\;
\Banco_Registradores|ALT_INV_saidaA[27]~29_combout\ <= NOT \Banco_Registradores|saidaA[27]~29_combout\;
\Banco_Registradores|ALT_INV_registrador~481_q\ <= NOT \Banco_Registradores|registrador~481_q\;
\Banco_Registradores|ALT_INV_saidaA[26]~28_combout\ <= NOT \Banco_Registradores|saidaA[26]~28_combout\;
\Banco_Registradores|ALT_INV_registrador~480_q\ <= NOT \Banco_Registradores|registrador~480_q\;
\Banco_Registradores|ALT_INV_saidaA[25]~27_combout\ <= NOT \Banco_Registradores|saidaA[25]~27_combout\;
\Banco_Registradores|ALT_INV_registrador~479_q\ <= NOT \Banco_Registradores|registrador~479_q\;
\Banco_Registradores|ALT_INV_saidaA[24]~26_combout\ <= NOT \Banco_Registradores|saidaA[24]~26_combout\;
\Banco_Registradores|ALT_INV_registrador~478_q\ <= NOT \Banco_Registradores|registrador~478_q\;
\Banco_Registradores|ALT_INV_saidaA[0]~25_combout\ <= NOT \Banco_Registradores|saidaA[0]~25_combout\;
\Banco_Registradores|ALT_INV_saidaA[23]~24_combout\ <= NOT \Banco_Registradores|saidaA[23]~24_combout\;
\Banco_Registradores|ALT_INV_registrador~477_q\ <= NOT \Banco_Registradores|registrador~477_q\;
\Banco_Registradores|ALT_INV_saidaA[22]~23_combout\ <= NOT \Banco_Registradores|saidaA[22]~23_combout\;
\Banco_Registradores|ALT_INV_registrador~476_q\ <= NOT \Banco_Registradores|registrador~476_q\;
\Banco_Registradores|ALT_INV_saidaA[21]~22_combout\ <= NOT \Banco_Registradores|saidaA[21]~22_combout\;
\Banco_Registradores|ALT_INV_registrador~475_q\ <= NOT \Banco_Registradores|registrador~475_q\;
\Banco_Registradores|ALT_INV_saidaA[20]~21_combout\ <= NOT \Banco_Registradores|saidaA[20]~21_combout\;
\Banco_Registradores|ALT_INV_registrador~474_q\ <= NOT \Banco_Registradores|registrador~474_q\;
\Banco_Registradores|ALT_INV_saidaA[19]~20_combout\ <= NOT \Banco_Registradores|saidaA[19]~20_combout\;
\Banco_Registradores|ALT_INV_registrador~473_q\ <= NOT \Banco_Registradores|registrador~473_q\;
\Banco_Registradores|ALT_INV_saidaA[18]~19_combout\ <= NOT \Banco_Registradores|saidaA[18]~19_combout\;
\Banco_Registradores|ALT_INV_registrador~472_q\ <= NOT \Banco_Registradores|registrador~472_q\;
\Banco_Registradores|ALT_INV_saidaA[17]~18_combout\ <= NOT \Banco_Registradores|saidaA[17]~18_combout\;
\Banco_Registradores|ALT_INV_registrador~471_q\ <= NOT \Banco_Registradores|registrador~471_q\;
\Banco_Registradores|ALT_INV_saidaA[16]~17_combout\ <= NOT \Banco_Registradores|saidaA[16]~17_combout\;
\Banco_Registradores|ALT_INV_registrador~470_q\ <= NOT \Banco_Registradores|registrador~470_q\;
\Banco_Registradores|ALT_INV_saidaA[15]~16_combout\ <= NOT \Banco_Registradores|saidaA[15]~16_combout\;
\Banco_Registradores|ALT_INV_registrador~469_q\ <= NOT \Banco_Registradores|registrador~469_q\;
\Banco_Registradores|ALT_INV_saidaA[14]~15_combout\ <= NOT \Banco_Registradores|saidaA[14]~15_combout\;
\Banco_Registradores|ALT_INV_registrador~468_q\ <= NOT \Banco_Registradores|registrador~468_q\;
\Banco_Registradores|ALT_INV_saidaA[13]~14_combout\ <= NOT \Banco_Registradores|saidaA[13]~14_combout\;
\Banco_Registradores|ALT_INV_registrador~467_q\ <= NOT \Banco_Registradores|registrador~467_q\;
\Banco_Registradores|ALT_INV_saidaA[12]~13_combout\ <= NOT \Banco_Registradores|saidaA[12]~13_combout\;
\Banco_Registradores|ALT_INV_registrador~466_q\ <= NOT \Banco_Registradores|registrador~466_q\;
\Banco_Registradores|ALT_INV_saidaA[11]~12_combout\ <= NOT \Banco_Registradores|saidaA[11]~12_combout\;
\Banco_Registradores|ALT_INV_registrador~465_q\ <= NOT \Banco_Registradores|registrador~465_q\;
\Banco_Registradores|ALT_INV_saidaA[10]~11_combout\ <= NOT \Banco_Registradores|saidaA[10]~11_combout\;
\Banco_Registradores|ALT_INV_registrador~464_q\ <= NOT \Banco_Registradores|registrador~464_q\;
\Banco_Registradores|ALT_INV_saidaA[9]~10_combout\ <= NOT \Banco_Registradores|saidaA[9]~10_combout\;
\Banco_Registradores|ALT_INV_registrador~463_q\ <= NOT \Banco_Registradores|registrador~463_q\;
\Banco_Registradores|ALT_INV_saidaA[8]~9_combout\ <= NOT \Banco_Registradores|saidaA[8]~9_combout\;
\Banco_Registradores|ALT_INV_registrador~462_q\ <= NOT \Banco_Registradores|registrador~462_q\;

\ULA_A[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco_Registradores|saidaA[0]~0_combout\,
	devoe => ww_devoe,
	o => \ULA_A[0]~output_o\);

\ULA_A[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco_Registradores|saidaA[1]~2_combout\,
	devoe => ww_devoe,
	o => \ULA_A[1]~output_o\);

\ULA_A[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco_Registradores|saidaA[2]~3_combout\,
	devoe => ww_devoe,
	o => \ULA_A[2]~output_o\);

\ULA_A[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco_Registradores|saidaA[3]~4_combout\,
	devoe => ww_devoe,
	o => \ULA_A[3]~output_o\);

\ULA_A[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco_Registradores|saidaA[4]~5_combout\,
	devoe => ww_devoe,
	o => \ULA_A[4]~output_o\);

\ULA_A[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco_Registradores|saidaA[5]~6_combout\,
	devoe => ww_devoe,
	o => \ULA_A[5]~output_o\);

\ULA_A[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco_Registradores|saidaA[6]~7_combout\,
	devoe => ww_devoe,
	o => \ULA_A[6]~output_o\);

\ULA_A[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco_Registradores|saidaA[7]~8_combout\,
	devoe => ww_devoe,
	o => \ULA_A[7]~output_o\);

\ULA_A[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco_Registradores|saidaA[8]~9_combout\,
	devoe => ww_devoe,
	o => \ULA_A[8]~output_o\);

\ULA_A[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco_Registradores|saidaA[9]~10_combout\,
	devoe => ww_devoe,
	o => \ULA_A[9]~output_o\);

\ULA_A[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco_Registradores|saidaA[10]~11_combout\,
	devoe => ww_devoe,
	o => \ULA_A[10]~output_o\);

\ULA_A[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco_Registradores|saidaA[11]~12_combout\,
	devoe => ww_devoe,
	o => \ULA_A[11]~output_o\);

\ULA_A[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco_Registradores|saidaA[12]~13_combout\,
	devoe => ww_devoe,
	o => \ULA_A[12]~output_o\);

\ULA_A[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco_Registradores|saidaA[13]~14_combout\,
	devoe => ww_devoe,
	o => \ULA_A[13]~output_o\);

\ULA_A[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco_Registradores|saidaA[14]~15_combout\,
	devoe => ww_devoe,
	o => \ULA_A[14]~output_o\);

\ULA_A[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco_Registradores|saidaA[15]~16_combout\,
	devoe => ww_devoe,
	o => \ULA_A[15]~output_o\);

\ULA_A[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco_Registradores|saidaA[16]~17_combout\,
	devoe => ww_devoe,
	o => \ULA_A[16]~output_o\);

\ULA_A[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco_Registradores|saidaA[17]~18_combout\,
	devoe => ww_devoe,
	o => \ULA_A[17]~output_o\);

\ULA_A[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco_Registradores|saidaA[18]~19_combout\,
	devoe => ww_devoe,
	o => \ULA_A[18]~output_o\);

\ULA_A[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco_Registradores|saidaA[19]~20_combout\,
	devoe => ww_devoe,
	o => \ULA_A[19]~output_o\);

\ULA_A[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco_Registradores|saidaA[20]~21_combout\,
	devoe => ww_devoe,
	o => \ULA_A[20]~output_o\);

\ULA_A[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco_Registradores|saidaA[21]~22_combout\,
	devoe => ww_devoe,
	o => \ULA_A[21]~output_o\);

\ULA_A[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco_Registradores|saidaA[22]~23_combout\,
	devoe => ww_devoe,
	o => \ULA_A[22]~output_o\);

\ULA_A[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco_Registradores|saidaA[23]~24_combout\,
	devoe => ww_devoe,
	o => \ULA_A[23]~output_o\);

\ULA_A[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco_Registradores|saidaA[24]~26_combout\,
	devoe => ww_devoe,
	o => \ULA_A[24]~output_o\);

\ULA_A[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco_Registradores|saidaA[25]~27_combout\,
	devoe => ww_devoe,
	o => \ULA_A[25]~output_o\);

\ULA_A[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco_Registradores|saidaA[26]~28_combout\,
	devoe => ww_devoe,
	o => \ULA_A[26]~output_o\);

\ULA_A[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco_Registradores|saidaA[27]~29_combout\,
	devoe => ww_devoe,
	o => \ULA_A[27]~output_o\);

\ULA_A[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco_Registradores|saidaA[28]~30_combout\,
	devoe => ww_devoe,
	o => \ULA_A[28]~output_o\);

\ULA_A[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco_Registradores|saidaA[29]~31_combout\,
	devoe => ww_devoe,
	o => \ULA_A[29]~output_o\);

\ULA_A[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco_Registradores|saidaA[30]~32_combout\,
	devoe => ww_devoe,
	o => \ULA_A[30]~output_o\);

\ULA_A[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco_Registradores|saidaA[31]~33_combout\,
	devoe => ww_devoe,
	o => \ULA_A[31]~output_o\);

\ULA_B[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco_Registradores|saidaA[0]~0_combout\,
	devoe => ww_devoe,
	o => \ULA_B[0]~output_o\);

\ULA_B[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco_Registradores|saidaA[1]~2_combout\,
	devoe => ww_devoe,
	o => \ULA_B[1]~output_o\);

\ULA_B[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco_Registradores|saidaA[2]~3_combout\,
	devoe => ww_devoe,
	o => \ULA_B[2]~output_o\);

\ULA_B[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco_Registradores|saidaA[3]~4_combout\,
	devoe => ww_devoe,
	o => \ULA_B[3]~output_o\);

\ULA_B[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco_Registradores|saidaA[4]~5_combout\,
	devoe => ww_devoe,
	o => \ULA_B[4]~output_o\);

\ULA_B[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco_Registradores|saidaA[5]~6_combout\,
	devoe => ww_devoe,
	o => \ULA_B[5]~output_o\);

\ULA_B[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco_Registradores|saidaA[6]~7_combout\,
	devoe => ww_devoe,
	o => \ULA_B[6]~output_o\);

\ULA_B[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco_Registradores|saidaA[7]~8_combout\,
	devoe => ww_devoe,
	o => \ULA_B[7]~output_o\);

\ULA_B[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco_Registradores|saidaA[8]~9_combout\,
	devoe => ww_devoe,
	o => \ULA_B[8]~output_o\);

\ULA_B[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco_Registradores|saidaA[9]~10_combout\,
	devoe => ww_devoe,
	o => \ULA_B[9]~output_o\);

\ULA_B[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco_Registradores|saidaA[10]~11_combout\,
	devoe => ww_devoe,
	o => \ULA_B[10]~output_o\);

\ULA_B[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco_Registradores|saidaA[11]~12_combout\,
	devoe => ww_devoe,
	o => \ULA_B[11]~output_o\);

\ULA_B[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco_Registradores|saidaA[12]~13_combout\,
	devoe => ww_devoe,
	o => \ULA_B[12]~output_o\);

\ULA_B[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco_Registradores|saidaA[13]~14_combout\,
	devoe => ww_devoe,
	o => \ULA_B[13]~output_o\);

\ULA_B[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco_Registradores|saidaA[14]~15_combout\,
	devoe => ww_devoe,
	o => \ULA_B[14]~output_o\);

\ULA_B[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco_Registradores|saidaA[15]~16_combout\,
	devoe => ww_devoe,
	o => \ULA_B[15]~output_o\);

\ULA_B[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco_Registradores|saidaA[16]~17_combout\,
	devoe => ww_devoe,
	o => \ULA_B[16]~output_o\);

\ULA_B[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco_Registradores|saidaA[17]~18_combout\,
	devoe => ww_devoe,
	o => \ULA_B[17]~output_o\);

\ULA_B[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco_Registradores|saidaA[18]~19_combout\,
	devoe => ww_devoe,
	o => \ULA_B[18]~output_o\);

\ULA_B[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco_Registradores|saidaA[19]~20_combout\,
	devoe => ww_devoe,
	o => \ULA_B[19]~output_o\);

\ULA_B[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco_Registradores|saidaA[20]~21_combout\,
	devoe => ww_devoe,
	o => \ULA_B[20]~output_o\);

\ULA_B[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco_Registradores|saidaA[21]~22_combout\,
	devoe => ww_devoe,
	o => \ULA_B[21]~output_o\);

\ULA_B[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco_Registradores|saidaA[22]~23_combout\,
	devoe => ww_devoe,
	o => \ULA_B[22]~output_o\);

\ULA_B[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco_Registradores|saidaA[23]~24_combout\,
	devoe => ww_devoe,
	o => \ULA_B[23]~output_o\);

\ULA_B[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco_Registradores|saidaA[24]~26_combout\,
	devoe => ww_devoe,
	o => \ULA_B[24]~output_o\);

\ULA_B[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco_Registradores|saidaA[25]~27_combout\,
	devoe => ww_devoe,
	o => \ULA_B[25]~output_o\);

\ULA_B[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco_Registradores|saidaA[26]~28_combout\,
	devoe => ww_devoe,
	o => \ULA_B[26]~output_o\);

\ULA_B[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco_Registradores|saidaA[27]~29_combout\,
	devoe => ww_devoe,
	o => \ULA_B[27]~output_o\);

\ULA_B[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco_Registradores|saidaA[28]~30_combout\,
	devoe => ww_devoe,
	o => \ULA_B[28]~output_o\);

\ULA_B[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco_Registradores|saidaA[29]~31_combout\,
	devoe => ww_devoe,
	o => \ULA_B[29]~output_o\);

\ULA_B[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco_Registradores|saidaA[30]~32_combout\,
	devoe => ww_devoe,
	o => \ULA_B[30]~output_o\);

\ULA_B[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco_Registradores|saidaA[31]~33_combout\,
	devoe => ww_devoe,
	o => \ULA_B[31]~output_o\);

\Operacao_ULA_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder|OUTPUT[1]~0_combout\,
	devoe => ww_devoe,
	o => \Operacao_ULA_OUT[0]~output_o\);

\Operacao_ULA_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Operacao_ULA_OUT[1]~output_o\);

\Operacao_ULA_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Operacao_ULA_OUT[2]~output_o\);

\Valor_Operacao[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add0~1_sumout\,
	devoe => ww_devoe,
	o => \Valor_Operacao[0]~output_o\);

\Valor_Operacao[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add0~5_sumout\,
	devoe => ww_devoe,
	o => \Valor_Operacao[1]~output_o\);

\Valor_Operacao[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add0~9_sumout\,
	devoe => ww_devoe,
	o => \Valor_Operacao[2]~output_o\);

\Valor_Operacao[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add0~13_sumout\,
	devoe => ww_devoe,
	o => \Valor_Operacao[3]~output_o\);

\Valor_Operacao[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add0~17_sumout\,
	devoe => ww_devoe,
	o => \Valor_Operacao[4]~output_o\);

\Valor_Operacao[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add0~21_sumout\,
	devoe => ww_devoe,
	o => \Valor_Operacao[5]~output_o\);

\Valor_Operacao[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add0~25_sumout\,
	devoe => ww_devoe,
	o => \Valor_Operacao[6]~output_o\);

\Valor_Operacao[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add0~29_sumout\,
	devoe => ww_devoe,
	o => \Valor_Operacao[7]~output_o\);

\Valor_Operacao[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add0~33_sumout\,
	devoe => ww_devoe,
	o => \Valor_Operacao[8]~output_o\);

\Valor_Operacao[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add0~37_sumout\,
	devoe => ww_devoe,
	o => \Valor_Operacao[9]~output_o\);

\Valor_Operacao[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add0~41_sumout\,
	devoe => ww_devoe,
	o => \Valor_Operacao[10]~output_o\);

\Valor_Operacao[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add0~45_sumout\,
	devoe => ww_devoe,
	o => \Valor_Operacao[11]~output_o\);

\Valor_Operacao[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add0~49_sumout\,
	devoe => ww_devoe,
	o => \Valor_Operacao[12]~output_o\);

\Valor_Operacao[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add0~53_sumout\,
	devoe => ww_devoe,
	o => \Valor_Operacao[13]~output_o\);

\Valor_Operacao[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add0~57_sumout\,
	devoe => ww_devoe,
	o => \Valor_Operacao[14]~output_o\);

\Valor_Operacao[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add0~61_sumout\,
	devoe => ww_devoe,
	o => \Valor_Operacao[15]~output_o\);

\Valor_Operacao[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add0~65_sumout\,
	devoe => ww_devoe,
	o => \Valor_Operacao[16]~output_o\);

\Valor_Operacao[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add0~69_sumout\,
	devoe => ww_devoe,
	o => \Valor_Operacao[17]~output_o\);

\Valor_Operacao[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add0~73_sumout\,
	devoe => ww_devoe,
	o => \Valor_Operacao[18]~output_o\);

\Valor_Operacao[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add0~77_sumout\,
	devoe => ww_devoe,
	o => \Valor_Operacao[19]~output_o\);

\Valor_Operacao[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add0~81_sumout\,
	devoe => ww_devoe,
	o => \Valor_Operacao[20]~output_o\);

\Valor_Operacao[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add0~85_sumout\,
	devoe => ww_devoe,
	o => \Valor_Operacao[21]~output_o\);

\Valor_Operacao[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add0~89_sumout\,
	devoe => ww_devoe,
	o => \Valor_Operacao[22]~output_o\);

\Valor_Operacao[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add0~93_sumout\,
	devoe => ww_devoe,
	o => \Valor_Operacao[23]~output_o\);

\Valor_Operacao[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add0~97_sumout\,
	devoe => ww_devoe,
	o => \Valor_Operacao[24]~output_o\);

\Valor_Operacao[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add0~101_sumout\,
	devoe => ww_devoe,
	o => \Valor_Operacao[25]~output_o\);

\Valor_Operacao[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add0~105_sumout\,
	devoe => ww_devoe,
	o => \Valor_Operacao[26]~output_o\);

\Valor_Operacao[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add0~109_sumout\,
	devoe => ww_devoe,
	o => \Valor_Operacao[27]~output_o\);

\Valor_Operacao[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add0~113_sumout\,
	devoe => ww_devoe,
	o => \Valor_Operacao[28]~output_o\);

\Valor_Operacao[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add0~117_sumout\,
	devoe => ww_devoe,
	o => \Valor_Operacao[29]~output_o\);

\Valor_Operacao[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add0~121_sumout\,
	devoe => ww_devoe,
	o => \Valor_Operacao[30]~output_o\);

\Valor_Operacao[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add0~125_sumout\,
	devoe => ww_devoe,
	o => \Valor_Operacao[31]~output_o\);

\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

\somadorConstante|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \somadorConstante|Add0~1_sumout\ = SUM(( \PC|DOUT\(2) ) + ( VCC ) + ( !VCC ))
-- \somadorConstante|Add0~2\ = CARRY(( \PC|DOUT\(2) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(2),
	cin => GND,
	sumout => \somadorConstante|Add0~1_sumout\,
	cout => \somadorConstante|Add0~2\);

\PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \somadorConstante|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(2));

\somadorConstante|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \somadorConstante|Add0~5_sumout\ = SUM(( \PC|DOUT\(3) ) + ( GND ) + ( \somadorConstante|Add0~2\ ))
-- \somadorConstante|Add0~6\ = CARRY(( \PC|DOUT\(3) ) + ( GND ) + ( \somadorConstante|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(3),
	cin => \somadorConstante|Add0~2\,
	sumout => \somadorConstante|Add0~5_sumout\,
	cout => \somadorConstante|Add0~6\);

\PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \somadorConstante|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(3));

\somadorConstante|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \somadorConstante|Add0~9_sumout\ = SUM(( \PC|DOUT\(4) ) + ( GND ) + ( \somadorConstante|Add0~6\ ))
-- \somadorConstante|Add0~10\ = CARRY(( \PC|DOUT\(4) ) + ( GND ) + ( \somadorConstante|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(4),
	cin => \somadorConstante|Add0~6\,
	sumout => \somadorConstante|Add0~9_sumout\,
	cout => \somadorConstante|Add0~10\);

\PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \somadorConstante|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(4));

\somadorConstante|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \somadorConstante|Add0~13_sumout\ = SUM(( \PC|DOUT\(5) ) + ( GND ) + ( \somadorConstante|Add0~10\ ))
-- \somadorConstante|Add0~14\ = CARRY(( \PC|DOUT\(5) ) + ( GND ) + ( \somadorConstante|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(5),
	cin => \somadorConstante|Add0~10\,
	sumout => \somadorConstante|Add0~13_sumout\,
	cout => \somadorConstante|Add0~14\);

\PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \somadorConstante|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(5));

\somadorConstante|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \somadorConstante|Add0~21_sumout\ = SUM(( \PC|DOUT\(6) ) + ( GND ) + ( \somadorConstante|Add0~14\ ))
-- \somadorConstante|Add0~22\ = CARRY(( \PC|DOUT\(6) ) + ( GND ) + ( \somadorConstante|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(6),
	cin => \somadorConstante|Add0~14\,
	sumout => \somadorConstante|Add0~21_sumout\,
	cout => \somadorConstante|Add0~22\);

\PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \somadorConstante|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(6));

\somadorConstante|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \somadorConstante|Add0~17_sumout\ = SUM(( \PC|DOUT\(7) ) + ( GND ) + ( \somadorConstante|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(7),
	cin => \somadorConstante|Add0~22\,
	sumout => \somadorConstante|Add0~17_sumout\);

\PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \somadorConstante|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(7));

\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = ( !\PC|DOUT\(6) & ( (!\PC|DOUT\(2) & (!\PC|DOUT\(4) & (!\PC|DOUT\(5) & !\PC|DOUT\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(4),
	datac => \PC|ALT_INV_DOUT\(5),
	datad => \PC|ALT_INV_DOUT\(7),
	datae => \PC|ALT_INV_DOUT\(6),
	combout => \ROM1|memROM~5_combout\);

\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = ( !\PC|DOUT\(7) & ( !\PC|DOUT\(6) & ( (!\PC|DOUT\(2) & (\PC|DOUT\(3) & (!\PC|DOUT\(4) & !\PC|DOUT\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	datae => \PC|ALT_INV_DOUT\(7),
	dataf => \PC|ALT_INV_DOUT\(6),
	combout => \ROM1|memROM~2_combout\);

\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = ( \PC|DOUT\(5) ) # ( !\PC|DOUT\(5) & ( (((!\PC|DOUT\(2) & \PC|DOUT\(3))) # (\PC|DOUT\(4))) # (\PC|DOUT\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110111111111111111111111111101011101111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(6),
	datab => \PC|ALT_INV_DOUT\(2),
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \PC|ALT_INV_DOUT\(4),
	datae => \PC|ALT_INV_DOUT\(5),
	combout => \ROM1|memROM~4_combout\);

\ULA1|Add0~130\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~130_cout\ = CARRY(( (\ROM1|memROM~2_combout\ & ((\ROM1|memROM~4_combout\) # (\PC|DOUT\(7)))) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \PC|ALT_INV_DOUT\(7),
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	cin => GND,
	cout => \ULA1|Add0~130_cout\);

\ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~1_sumout\ = SUM(( \Banco_Registradores|saidaA[0]~0_combout\ ) + ( (\ROM1|memROM~5_combout\ & ((!\ROM1|memROM~2_combout\) # ((!\PC|DOUT\(7) & !\ROM1|memROM~4_combout\)))) ) + ( \ULA1|Add0~130_cout\ ))
-- \ULA1|Add0~2\ = CARRY(( \Banco_Registradores|saidaA[0]~0_combout\ ) + ( (\ROM1|memROM~5_combout\ & ((!\ROM1|memROM~2_combout\) # ((!\PC|DOUT\(7) & !\ROM1|memROM~4_combout\)))) ) + ( \ULA1|Add0~130_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010111011101100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \PC|ALT_INV_DOUT\(7),
	datad => \Banco_Registradores|ALT_INV_saidaA[0]~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	cin => \ULA1|Add0~130_cout\,
	sumout => \ULA1|Add0~1_sumout\,
	cout => \ULA1|Add0~2\);

\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = (!\PC|DOUT\(4) & (!\PC|DOUT\(5) & (!\PC|DOUT\(7) & !\PC|DOUT\(6))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(4),
	datab => \PC|ALT_INV_DOUT\(5),
	datac => \PC|ALT_INV_DOUT\(7),
	datad => \PC|ALT_INV_DOUT\(6),
	combout => \ROM1|memROM~1_combout\);

\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = (((!\PC|DOUT\(2) & \PC|DOUT\(3))) # (\PC|DOUT\(5))) # (\PC|DOUT\(4))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111111111111001011111111111100101111111111110010111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	combout => \ROM1|memROM~3_combout\);

\Banco_Registradores|registrador~1062\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco_Registradores|registrador~1062_combout\ = ( \ROM1|memROM~1_combout\ & ( !\ROM1|memROM~3_combout\ & ( (\PC|DOUT\(2) & (!\PC|DOUT\(3) & (!\PC|DOUT\(4) & !\PC|DOUT\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \Banco_Registradores|registrador~1062_combout\);

\Banco_Registradores|registrador~454\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~1_sumout\,
	ena => \Banco_Registradores|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco_Registradores|registrador~454_q\);

\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = (!\PC|DOUT\(4) & (!\PC|DOUT\(5) & ((!\PC|DOUT\(2)) # (!\PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000000000000111000000000000011100000000000001110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	combout => \ROM1|memROM~0_combout\);

\Banco_Registradores|saidaA[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco_Registradores|saidaA[0]~0_combout\ = ( \ROM1|memROM~1_combout\ & ( (\Banco_Registradores|registrador~454_q\ & (\PC|DOUT\(2) & (!\PC|DOUT\(3) & \ROM1|memROM~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Banco_Registradores|ALT_INV_registrador~454_q\,
	datab => \PC|ALT_INV_DOUT\(2),
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \Banco_Registradores|saidaA[0]~0_combout\);

\ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~5_sumout\ = SUM(( \Banco_Registradores|saidaA[1]~2_combout\ ) + ( (\ROM1|memROM~2_combout\ & (((\ROM1|memROM~3_combout\) # (\PC|DOUT\(6))) # (\PC|DOUT\(7)))) ) + ( \ULA1|Add0~2\ ))
-- \ULA1|Add0~6\ = CARRY(( \Banco_Registradores|saidaA[1]~2_combout\ ) + ( (\ROM1|memROM~2_combout\ & (((\ROM1|memROM~3_combout\) # (\PC|DOUT\(6))) # (\PC|DOUT\(7)))) ) + ( \ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \Banco_Registradores|ALT_INV_saidaA[1]~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	cin => \ULA1|Add0~2\,
	sumout => \ULA1|Add0~5_sumout\,
	cout => \ULA1|Add0~6\);

\Banco_Registradores|registrador~1063\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco_Registradores|registrador~1063_combout\ = !\ULA1|Add0~5_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add0~5_sumout\,
	combout => \Banco_Registradores|registrador~1063_combout\);

\Banco_Registradores|registrador~455\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Banco_Registradores|registrador~1063_combout\,
	ena => \Banco_Registradores|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco_Registradores|registrador~455_q\);

\Banco_Registradores|saidaA[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco_Registradores|saidaA[1]~1_combout\ = (\PC|DOUT\(2) & (!\PC|DOUT\(3) & (!\PC|DOUT\(4) & !\PC|DOUT\(5))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	combout => \Banco_Registradores|saidaA[1]~1_combout\);

\Banco_Registradores|saidaA[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco_Registradores|saidaA[1]~2_combout\ = ( \Banco_Registradores|saidaA[1]~1_combout\ & ( (\ROM1|memROM~0_combout\ & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\Banco_Registradores|registrador~455_q\))) ) ) # ( !\Banco_Registradores|saidaA[1]~1_combout\ & ( 
-- (\ROM1|memROM~0_combout\ & (!\PC|DOUT\(7) & !\PC|DOUT\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000000000001000000010000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \Banco_Registradores|ALT_INV_registrador~455_q\,
	datae => \Banco_Registradores|ALT_INV_saidaA[1]~1_combout\,
	combout => \Banco_Registradores|saidaA[1]~2_combout\);

\ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~9_sumout\ = SUM(( \Banco_Registradores|saidaA[2]~3_combout\ ) + ( (\ROM1|memROM~2_combout\ & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\ROM1|memROM~3_combout\))) ) + ( \ULA1|Add0~6\ ))
-- \ULA1|Add0~10\ = CARRY(( \Banco_Registradores|saidaA[2]~3_combout\ ) + ( (\ROM1|memROM~2_combout\ & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\ROM1|memROM~3_combout\))) ) + ( \ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \Banco_Registradores|ALT_INV_saidaA[2]~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	cin => \ULA1|Add0~6\,
	sumout => \ULA1|Add0~9_sumout\,
	cout => \ULA1|Add0~10\);

\Banco_Registradores|registrador~1064\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco_Registradores|registrador~1064_combout\ = !\ULA1|Add0~9_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add0~9_sumout\,
	combout => \Banco_Registradores|registrador~1064_combout\);

\Banco_Registradores|registrador~456\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Banco_Registradores|registrador~1064_combout\,
	ena => \Banco_Registradores|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco_Registradores|registrador~456_q\);

\Banco_Registradores|saidaA[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco_Registradores|saidaA[2]~3_combout\ = ( !\Banco_Registradores|registrador~456_q\ & ( (\PC|DOUT\(2) & (!\PC|DOUT\(3) & (\ROM1|memROM~0_combout\ & \ROM1|memROM~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \Banco_Registradores|ALT_INV_registrador~456_q\,
	combout => \Banco_Registradores|saidaA[2]~3_combout\);

\ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~13_sumout\ = SUM(( \Banco_Registradores|saidaA[3]~4_combout\ ) + ( (\ROM1|memROM~2_combout\ & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\ROM1|memROM~3_combout\))) ) + ( \ULA1|Add0~10\ ))
-- \ULA1|Add0~14\ = CARRY(( \Banco_Registradores|saidaA[3]~4_combout\ ) + ( (\ROM1|memROM~2_combout\ & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\ROM1|memROM~3_combout\))) ) + ( \ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \Banco_Registradores|ALT_INV_saidaA[3]~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	cin => \ULA1|Add0~10\,
	sumout => \ULA1|Add0~13_sumout\,
	cout => \ULA1|Add0~14\);

\Banco_Registradores|registrador~457\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~13_sumout\,
	ena => \Banco_Registradores|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco_Registradores|registrador~457_q\);

\Banco_Registradores|saidaA[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco_Registradores|saidaA[3]~4_combout\ = ( \Banco_Registradores|registrador~457_q\ & ( (\ROM1|memROM~0_combout\ & (!\PC|DOUT\(7) & !\PC|DOUT\(6))) ) ) # ( !\Banco_Registradores|registrador~457_q\ & ( (\ROM1|memROM~0_combout\ & (!\PC|DOUT\(7) & 
-- (!\PC|DOUT\(6) & !\Banco_Registradores|saidaA[1]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000100000001000000000000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \Banco_Registradores|ALT_INV_saidaA[1]~1_combout\,
	datae => \Banco_Registradores|ALT_INV_registrador~457_q\,
	combout => \Banco_Registradores|saidaA[3]~4_combout\);

\ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~17_sumout\ = SUM(( \Banco_Registradores|saidaA[4]~5_combout\ ) + ( (\ROM1|memROM~2_combout\ & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\ROM1|memROM~3_combout\))) ) + ( \ULA1|Add0~14\ ))
-- \ULA1|Add0~18\ = CARRY(( \Banco_Registradores|saidaA[4]~5_combout\ ) + ( (\ROM1|memROM~2_combout\ & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\ROM1|memROM~3_combout\))) ) + ( \ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \Banco_Registradores|ALT_INV_saidaA[4]~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	cin => \ULA1|Add0~14\,
	sumout => \ULA1|Add0~17_sumout\,
	cout => \ULA1|Add0~18\);

\Banco_Registradores|registrador~1065\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco_Registradores|registrador~1065_combout\ = !\ULA1|Add0~17_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add0~17_sumout\,
	combout => \Banco_Registradores|registrador~1065_combout\);

\Banco_Registradores|registrador~458\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Banco_Registradores|registrador~1065_combout\,
	ena => \Banco_Registradores|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco_Registradores|registrador~458_q\);

\Banco_Registradores|saidaA[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco_Registradores|saidaA[4]~5_combout\ = ( !\Banco_Registradores|registrador~458_q\ & ( (\PC|DOUT\(2) & (!\PC|DOUT\(3) & (\ROM1|memROM~0_combout\ & \ROM1|memROM~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \Banco_Registradores|ALT_INV_registrador~458_q\,
	combout => \Banco_Registradores|saidaA[4]~5_combout\);

\ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~21_sumout\ = SUM(( \Banco_Registradores|saidaA[5]~6_combout\ ) + ( (\ROM1|memROM~2_combout\ & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\ROM1|memROM~3_combout\))) ) + ( \ULA1|Add0~18\ ))
-- \ULA1|Add0~22\ = CARRY(( \Banco_Registradores|saidaA[5]~6_combout\ ) + ( (\ROM1|memROM~2_combout\ & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\ROM1|memROM~3_combout\))) ) + ( \ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \Banco_Registradores|ALT_INV_saidaA[5]~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	cin => \ULA1|Add0~18\,
	sumout => \ULA1|Add0~21_sumout\,
	cout => \ULA1|Add0~22\);

\Banco_Registradores|registrador~459\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~21_sumout\,
	ena => \Banco_Registradores|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco_Registradores|registrador~459_q\);

\Banco_Registradores|saidaA[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco_Registradores|saidaA[5]~6_combout\ = ( \Banco_Registradores|registrador~459_q\ & ( (\PC|DOUT\(2) & (!\PC|DOUT\(3) & (\ROM1|memROM~0_combout\ & \ROM1|memROM~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \Banco_Registradores|ALT_INV_registrador~459_q\,
	combout => \Banco_Registradores|saidaA[5]~6_combout\);

\ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~25_sumout\ = SUM(( \Banco_Registradores|saidaA[6]~7_combout\ ) + ( (\ROM1|memROM~2_combout\ & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\ROM1|memROM~3_combout\))) ) + ( \ULA1|Add0~22\ ))
-- \ULA1|Add0~26\ = CARRY(( \Banco_Registradores|saidaA[6]~7_combout\ ) + ( (\ROM1|memROM~2_combout\ & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\ROM1|memROM~3_combout\))) ) + ( \ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \Banco_Registradores|ALT_INV_saidaA[6]~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	cin => \ULA1|Add0~22\,
	sumout => \ULA1|Add0~25_sumout\,
	cout => \ULA1|Add0~26\);

\Banco_Registradores|registrador~460\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~25_sumout\,
	ena => \Banco_Registradores|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco_Registradores|registrador~460_q\);

\Banco_Registradores|saidaA[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco_Registradores|saidaA[6]~7_combout\ = ( \Banco_Registradores|registrador~460_q\ & ( (\PC|DOUT\(2) & (!\PC|DOUT\(3) & (\ROM1|memROM~0_combout\ & \ROM1|memROM~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \Banco_Registradores|ALT_INV_registrador~460_q\,
	combout => \Banco_Registradores|saidaA[6]~7_combout\);

\ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~29_sumout\ = SUM(( \Banco_Registradores|saidaA[7]~8_combout\ ) + ( (\ROM1|memROM~2_combout\ & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\ROM1|memROM~3_combout\))) ) + ( \ULA1|Add0~26\ ))
-- \ULA1|Add0~30\ = CARRY(( \Banco_Registradores|saidaA[7]~8_combout\ ) + ( (\ROM1|memROM~2_combout\ & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\ROM1|memROM~3_combout\))) ) + ( \ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \Banco_Registradores|ALT_INV_saidaA[7]~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	cin => \ULA1|Add0~26\,
	sumout => \ULA1|Add0~29_sumout\,
	cout => \ULA1|Add0~30\);

\Banco_Registradores|registrador~461\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~29_sumout\,
	ena => \Banco_Registradores|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco_Registradores|registrador~461_q\);

\Banco_Registradores|saidaA[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco_Registradores|saidaA[7]~8_combout\ = ( \Banco_Registradores|registrador~461_q\ & ( (\PC|DOUT\(2) & (!\PC|DOUT\(3) & (\ROM1|memROM~0_combout\ & \ROM1|memROM~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \Banco_Registradores|ALT_INV_registrador~461_q\,
	combout => \Banco_Registradores|saidaA[7]~8_combout\);

\ULA1|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~33_sumout\ = SUM(( \Banco_Registradores|saidaA[8]~9_combout\ ) + ( (\ROM1|memROM~2_combout\ & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\ROM1|memROM~3_combout\))) ) + ( \ULA1|Add0~30\ ))
-- \ULA1|Add0~34\ = CARRY(( \Banco_Registradores|saidaA[8]~9_combout\ ) + ( (\ROM1|memROM~2_combout\ & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\ROM1|memROM~3_combout\))) ) + ( \ULA1|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \Banco_Registradores|ALT_INV_saidaA[8]~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	cin => \ULA1|Add0~30\,
	sumout => \ULA1|Add0~33_sumout\,
	cout => \ULA1|Add0~34\);

\Banco_Registradores|registrador~462\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~33_sumout\,
	ena => \Banco_Registradores|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco_Registradores|registrador~462_q\);

\Banco_Registradores|saidaA[8]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco_Registradores|saidaA[8]~9_combout\ = ( \Banco_Registradores|registrador~462_q\ & ( (\PC|DOUT\(2) & (!\PC|DOUT\(3) & (\ROM1|memROM~0_combout\ & \ROM1|memROM~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \Banco_Registradores|ALT_INV_registrador~462_q\,
	combout => \Banco_Registradores|saidaA[8]~9_combout\);

\ULA1|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~37_sumout\ = SUM(( \Banco_Registradores|saidaA[9]~10_combout\ ) + ( (\ROM1|memROM~2_combout\ & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\ROM1|memROM~3_combout\))) ) + ( \ULA1|Add0~34\ ))
-- \ULA1|Add0~38\ = CARRY(( \Banco_Registradores|saidaA[9]~10_combout\ ) + ( (\ROM1|memROM~2_combout\ & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\ROM1|memROM~3_combout\))) ) + ( \ULA1|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \Banco_Registradores|ALT_INV_saidaA[9]~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	cin => \ULA1|Add0~34\,
	sumout => \ULA1|Add0~37_sumout\,
	cout => \ULA1|Add0~38\);

\Banco_Registradores|registrador~463\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~37_sumout\,
	ena => \Banco_Registradores|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco_Registradores|registrador~463_q\);

\Banco_Registradores|saidaA[9]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco_Registradores|saidaA[9]~10_combout\ = ( \Banco_Registradores|registrador~463_q\ & ( (\PC|DOUT\(2) & (!\PC|DOUT\(3) & (\ROM1|memROM~0_combout\ & \ROM1|memROM~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \Banco_Registradores|ALT_INV_registrador~463_q\,
	combout => \Banco_Registradores|saidaA[9]~10_combout\);

\ULA1|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~41_sumout\ = SUM(( \Banco_Registradores|saidaA[10]~11_combout\ ) + ( (\ROM1|memROM~2_combout\ & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\ROM1|memROM~3_combout\))) ) + ( \ULA1|Add0~38\ ))
-- \ULA1|Add0~42\ = CARRY(( \Banco_Registradores|saidaA[10]~11_combout\ ) + ( (\ROM1|memROM~2_combout\ & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\ROM1|memROM~3_combout\))) ) + ( \ULA1|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \Banco_Registradores|ALT_INV_saidaA[10]~11_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	cin => \ULA1|Add0~38\,
	sumout => \ULA1|Add0~41_sumout\,
	cout => \ULA1|Add0~42\);

\Banco_Registradores|registrador~464\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~41_sumout\,
	ena => \Banco_Registradores|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco_Registradores|registrador~464_q\);

\Banco_Registradores|saidaA[10]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco_Registradores|saidaA[10]~11_combout\ = ( \Banco_Registradores|registrador~464_q\ & ( (\PC|DOUT\(2) & (!\PC|DOUT\(3) & (\ROM1|memROM~0_combout\ & \ROM1|memROM~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \Banco_Registradores|ALT_INV_registrador~464_q\,
	combout => \Banco_Registradores|saidaA[10]~11_combout\);

\ULA1|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~45_sumout\ = SUM(( \Banco_Registradores|saidaA[11]~12_combout\ ) + ( (\ROM1|memROM~2_combout\ & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\ROM1|memROM~3_combout\))) ) + ( \ULA1|Add0~42\ ))
-- \ULA1|Add0~46\ = CARRY(( \Banco_Registradores|saidaA[11]~12_combout\ ) + ( (\ROM1|memROM~2_combout\ & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\ROM1|memROM~3_combout\))) ) + ( \ULA1|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \Banco_Registradores|ALT_INV_saidaA[11]~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	cin => \ULA1|Add0~42\,
	sumout => \ULA1|Add0~45_sumout\,
	cout => \ULA1|Add0~46\);

\Banco_Registradores|registrador~465\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~45_sumout\,
	ena => \Banco_Registradores|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco_Registradores|registrador~465_q\);

\Banco_Registradores|saidaA[11]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco_Registradores|saidaA[11]~12_combout\ = ( \Banco_Registradores|registrador~465_q\ & ( (\PC|DOUT\(2) & (!\PC|DOUT\(3) & (\ROM1|memROM~0_combout\ & \ROM1|memROM~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \Banco_Registradores|ALT_INV_registrador~465_q\,
	combout => \Banco_Registradores|saidaA[11]~12_combout\);

\ULA1|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~49_sumout\ = SUM(( \Banco_Registradores|saidaA[12]~13_combout\ ) + ( (\ROM1|memROM~2_combout\ & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\ROM1|memROM~3_combout\))) ) + ( \ULA1|Add0~46\ ))
-- \ULA1|Add0~50\ = CARRY(( \Banco_Registradores|saidaA[12]~13_combout\ ) + ( (\ROM1|memROM~2_combout\ & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\ROM1|memROM~3_combout\))) ) + ( \ULA1|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \Banco_Registradores|ALT_INV_saidaA[12]~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	cin => \ULA1|Add0~46\,
	sumout => \ULA1|Add0~49_sumout\,
	cout => \ULA1|Add0~50\);

\Banco_Registradores|registrador~466\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~49_sumout\,
	ena => \Banco_Registradores|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco_Registradores|registrador~466_q\);

\Banco_Registradores|saidaA[12]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco_Registradores|saidaA[12]~13_combout\ = ( \Banco_Registradores|registrador~466_q\ & ( (\PC|DOUT\(2) & (!\PC|DOUT\(3) & (\ROM1|memROM~0_combout\ & \ROM1|memROM~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \Banco_Registradores|ALT_INV_registrador~466_q\,
	combout => \Banco_Registradores|saidaA[12]~13_combout\);

\ULA1|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~53_sumout\ = SUM(( \Banco_Registradores|saidaA[13]~14_combout\ ) + ( (\ROM1|memROM~2_combout\ & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\ROM1|memROM~3_combout\))) ) + ( \ULA1|Add0~50\ ))
-- \ULA1|Add0~54\ = CARRY(( \Banco_Registradores|saidaA[13]~14_combout\ ) + ( (\ROM1|memROM~2_combout\ & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\ROM1|memROM~3_combout\))) ) + ( \ULA1|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \Banco_Registradores|ALT_INV_saidaA[13]~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	cin => \ULA1|Add0~50\,
	sumout => \ULA1|Add0~53_sumout\,
	cout => \ULA1|Add0~54\);

\Banco_Registradores|registrador~467\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~53_sumout\,
	ena => \Banco_Registradores|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco_Registradores|registrador~467_q\);

\Banco_Registradores|saidaA[13]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco_Registradores|saidaA[13]~14_combout\ = ( \Banco_Registradores|registrador~467_q\ & ( (\PC|DOUT\(2) & (!\PC|DOUT\(3) & (\ROM1|memROM~0_combout\ & \ROM1|memROM~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \Banco_Registradores|ALT_INV_registrador~467_q\,
	combout => \Banco_Registradores|saidaA[13]~14_combout\);

\ULA1|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~57_sumout\ = SUM(( \Banco_Registradores|saidaA[14]~15_combout\ ) + ( (\ROM1|memROM~2_combout\ & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\ROM1|memROM~3_combout\))) ) + ( \ULA1|Add0~54\ ))
-- \ULA1|Add0~58\ = CARRY(( \Banco_Registradores|saidaA[14]~15_combout\ ) + ( (\ROM1|memROM~2_combout\ & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\ROM1|memROM~3_combout\))) ) + ( \ULA1|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \Banco_Registradores|ALT_INV_saidaA[14]~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	cin => \ULA1|Add0~54\,
	sumout => \ULA1|Add0~57_sumout\,
	cout => \ULA1|Add0~58\);

\Banco_Registradores|registrador~468\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~57_sumout\,
	ena => \Banco_Registradores|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco_Registradores|registrador~468_q\);

\Banco_Registradores|saidaA[14]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco_Registradores|saidaA[14]~15_combout\ = ( \Banco_Registradores|registrador~468_q\ & ( (\PC|DOUT\(2) & (!\PC|DOUT\(3) & (\ROM1|memROM~0_combout\ & \ROM1|memROM~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \Banco_Registradores|ALT_INV_registrador~468_q\,
	combout => \Banco_Registradores|saidaA[14]~15_combout\);

\ULA1|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~61_sumout\ = SUM(( \Banco_Registradores|saidaA[15]~16_combout\ ) + ( (\ROM1|memROM~2_combout\ & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\ROM1|memROM~3_combout\))) ) + ( \ULA1|Add0~58\ ))
-- \ULA1|Add0~62\ = CARRY(( \Banco_Registradores|saidaA[15]~16_combout\ ) + ( (\ROM1|memROM~2_combout\ & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\ROM1|memROM~3_combout\))) ) + ( \ULA1|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \Banco_Registradores|ALT_INV_saidaA[15]~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	cin => \ULA1|Add0~58\,
	sumout => \ULA1|Add0~61_sumout\,
	cout => \ULA1|Add0~62\);

\Banco_Registradores|registrador~469\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~61_sumout\,
	ena => \Banco_Registradores|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco_Registradores|registrador~469_q\);

\Banco_Registradores|saidaA[15]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco_Registradores|saidaA[15]~16_combout\ = ( \Banco_Registradores|registrador~469_q\ & ( (\PC|DOUT\(2) & (!\PC|DOUT\(3) & (\ROM1|memROM~0_combout\ & \ROM1|memROM~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \Banco_Registradores|ALT_INV_registrador~469_q\,
	combout => \Banco_Registradores|saidaA[15]~16_combout\);

\ULA1|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~65_sumout\ = SUM(( \Banco_Registradores|saidaA[16]~17_combout\ ) + ( (\ROM1|memROM~2_combout\ & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\ROM1|memROM~3_combout\))) ) + ( \ULA1|Add0~62\ ))
-- \ULA1|Add0~66\ = CARRY(( \Banco_Registradores|saidaA[16]~17_combout\ ) + ( (\ROM1|memROM~2_combout\ & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\ROM1|memROM~3_combout\))) ) + ( \ULA1|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \Banco_Registradores|ALT_INV_saidaA[16]~17_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	cin => \ULA1|Add0~62\,
	sumout => \ULA1|Add0~65_sumout\,
	cout => \ULA1|Add0~66\);

\Banco_Registradores|registrador~470\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~65_sumout\,
	ena => \Banco_Registradores|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco_Registradores|registrador~470_q\);

\Banco_Registradores|saidaA[16]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco_Registradores|saidaA[16]~17_combout\ = ( \Banco_Registradores|registrador~470_q\ & ( (\PC|DOUT\(2) & (!\PC|DOUT\(3) & (\ROM1|memROM~0_combout\ & \ROM1|memROM~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \Banco_Registradores|ALT_INV_registrador~470_q\,
	combout => \Banco_Registradores|saidaA[16]~17_combout\);

\ULA1|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~69_sumout\ = SUM(( \Banco_Registradores|saidaA[17]~18_combout\ ) + ( (\ROM1|memROM~2_combout\ & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\ROM1|memROM~3_combout\))) ) + ( \ULA1|Add0~66\ ))
-- \ULA1|Add0~70\ = CARRY(( \Banco_Registradores|saidaA[17]~18_combout\ ) + ( (\ROM1|memROM~2_combout\ & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\ROM1|memROM~3_combout\))) ) + ( \ULA1|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \Banco_Registradores|ALT_INV_saidaA[17]~18_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	cin => \ULA1|Add0~66\,
	sumout => \ULA1|Add0~69_sumout\,
	cout => \ULA1|Add0~70\);

\Banco_Registradores|registrador~471\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~69_sumout\,
	ena => \Banco_Registradores|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco_Registradores|registrador~471_q\);

\Banco_Registradores|saidaA[17]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco_Registradores|saidaA[17]~18_combout\ = ( \Banco_Registradores|registrador~471_q\ & ( (\PC|DOUT\(2) & (!\PC|DOUT\(3) & (\ROM1|memROM~0_combout\ & \ROM1|memROM~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \Banco_Registradores|ALT_INV_registrador~471_q\,
	combout => \Banco_Registradores|saidaA[17]~18_combout\);

\ULA1|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~73_sumout\ = SUM(( \Banco_Registradores|saidaA[18]~19_combout\ ) + ( (\ROM1|memROM~2_combout\ & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\ROM1|memROM~3_combout\))) ) + ( \ULA1|Add0~70\ ))
-- \ULA1|Add0~74\ = CARRY(( \Banco_Registradores|saidaA[18]~19_combout\ ) + ( (\ROM1|memROM~2_combout\ & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\ROM1|memROM~3_combout\))) ) + ( \ULA1|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \Banco_Registradores|ALT_INV_saidaA[18]~19_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	cin => \ULA1|Add0~70\,
	sumout => \ULA1|Add0~73_sumout\,
	cout => \ULA1|Add0~74\);

\Banco_Registradores|registrador~472\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~73_sumout\,
	ena => \Banco_Registradores|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco_Registradores|registrador~472_q\);

\Banco_Registradores|saidaA[18]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco_Registradores|saidaA[18]~19_combout\ = ( \Banco_Registradores|registrador~472_q\ & ( (\PC|DOUT\(2) & (!\PC|DOUT\(3) & (\ROM1|memROM~0_combout\ & \ROM1|memROM~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \Banco_Registradores|ALT_INV_registrador~472_q\,
	combout => \Banco_Registradores|saidaA[18]~19_combout\);

\ULA1|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~77_sumout\ = SUM(( \Banco_Registradores|saidaA[19]~20_combout\ ) + ( (\ROM1|memROM~2_combout\ & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\ROM1|memROM~3_combout\))) ) + ( \ULA1|Add0~74\ ))
-- \ULA1|Add0~78\ = CARRY(( \Banco_Registradores|saidaA[19]~20_combout\ ) + ( (\ROM1|memROM~2_combout\ & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\ROM1|memROM~3_combout\))) ) + ( \ULA1|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \Banco_Registradores|ALT_INV_saidaA[19]~20_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	cin => \ULA1|Add0~74\,
	sumout => \ULA1|Add0~77_sumout\,
	cout => \ULA1|Add0~78\);

\Banco_Registradores|registrador~473\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~77_sumout\,
	ena => \Banco_Registradores|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco_Registradores|registrador~473_q\);

\Banco_Registradores|saidaA[19]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco_Registradores|saidaA[19]~20_combout\ = ( \Banco_Registradores|registrador~473_q\ & ( (\PC|DOUT\(2) & (!\PC|DOUT\(3) & (\ROM1|memROM~0_combout\ & \ROM1|memROM~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \Banco_Registradores|ALT_INV_registrador~473_q\,
	combout => \Banco_Registradores|saidaA[19]~20_combout\);

\ULA1|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~81_sumout\ = SUM(( \Banco_Registradores|saidaA[20]~21_combout\ ) + ( (\ROM1|memROM~2_combout\ & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\ROM1|memROM~3_combout\))) ) + ( \ULA1|Add0~78\ ))
-- \ULA1|Add0~82\ = CARRY(( \Banco_Registradores|saidaA[20]~21_combout\ ) + ( (\ROM1|memROM~2_combout\ & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\ROM1|memROM~3_combout\))) ) + ( \ULA1|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \Banco_Registradores|ALT_INV_saidaA[20]~21_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	cin => \ULA1|Add0~78\,
	sumout => \ULA1|Add0~81_sumout\,
	cout => \ULA1|Add0~82\);

\Banco_Registradores|registrador~474\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~81_sumout\,
	ena => \Banco_Registradores|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco_Registradores|registrador~474_q\);

\Banco_Registradores|saidaA[20]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco_Registradores|saidaA[20]~21_combout\ = ( \Banco_Registradores|registrador~474_q\ & ( (\PC|DOUT\(2) & (!\PC|DOUT\(3) & (\ROM1|memROM~0_combout\ & \ROM1|memROM~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \Banco_Registradores|ALT_INV_registrador~474_q\,
	combout => \Banco_Registradores|saidaA[20]~21_combout\);

\ULA1|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~85_sumout\ = SUM(( \Banco_Registradores|saidaA[21]~22_combout\ ) + ( (\ROM1|memROM~2_combout\ & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\ROM1|memROM~3_combout\))) ) + ( \ULA1|Add0~82\ ))
-- \ULA1|Add0~86\ = CARRY(( \Banco_Registradores|saidaA[21]~22_combout\ ) + ( (\ROM1|memROM~2_combout\ & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\ROM1|memROM~3_combout\))) ) + ( \ULA1|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \Banco_Registradores|ALT_INV_saidaA[21]~22_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	cin => \ULA1|Add0~82\,
	sumout => \ULA1|Add0~85_sumout\,
	cout => \ULA1|Add0~86\);

\Banco_Registradores|registrador~475\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~85_sumout\,
	ena => \Banco_Registradores|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco_Registradores|registrador~475_q\);

\Banco_Registradores|saidaA[21]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco_Registradores|saidaA[21]~22_combout\ = ( \Banco_Registradores|registrador~475_q\ & ( (\PC|DOUT\(2) & (!\PC|DOUT\(3) & (\ROM1|memROM~0_combout\ & \ROM1|memROM~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \Banco_Registradores|ALT_INV_registrador~475_q\,
	combout => \Banco_Registradores|saidaA[21]~22_combout\);

\ULA1|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~89_sumout\ = SUM(( \Banco_Registradores|saidaA[22]~23_combout\ ) + ( (\ROM1|memROM~2_combout\ & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\ROM1|memROM~3_combout\))) ) + ( \ULA1|Add0~86\ ))
-- \ULA1|Add0~90\ = CARRY(( \Banco_Registradores|saidaA[22]~23_combout\ ) + ( (\ROM1|memROM~2_combout\ & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\ROM1|memROM~3_combout\))) ) + ( \ULA1|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \Banco_Registradores|ALT_INV_saidaA[22]~23_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	cin => \ULA1|Add0~86\,
	sumout => \ULA1|Add0~89_sumout\,
	cout => \ULA1|Add0~90\);

\Banco_Registradores|registrador~476\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~89_sumout\,
	ena => \Banco_Registradores|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco_Registradores|registrador~476_q\);

\Banco_Registradores|saidaA[22]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco_Registradores|saidaA[22]~23_combout\ = ( \Banco_Registradores|registrador~476_q\ & ( (\PC|DOUT\(2) & (!\PC|DOUT\(3) & (\ROM1|memROM~0_combout\ & \ROM1|memROM~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \Banco_Registradores|ALT_INV_registrador~476_q\,
	combout => \Banco_Registradores|saidaA[22]~23_combout\);

\ULA1|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~93_sumout\ = SUM(( \Banco_Registradores|saidaA[23]~24_combout\ ) + ( (\ROM1|memROM~2_combout\ & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\ROM1|memROM~3_combout\))) ) + ( \ULA1|Add0~90\ ))
-- \ULA1|Add0~94\ = CARRY(( \Banco_Registradores|saidaA[23]~24_combout\ ) + ( (\ROM1|memROM~2_combout\ & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\ROM1|memROM~3_combout\))) ) + ( \ULA1|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \Banco_Registradores|ALT_INV_saidaA[23]~24_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	cin => \ULA1|Add0~90\,
	sumout => \ULA1|Add0~93_sumout\,
	cout => \ULA1|Add0~94\);

\Banco_Registradores|registrador~477\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~93_sumout\,
	ena => \Banco_Registradores|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco_Registradores|registrador~477_q\);

\Banco_Registradores|saidaA[23]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco_Registradores|saidaA[23]~24_combout\ = ( \Banco_Registradores|registrador~477_q\ & ( (\PC|DOUT\(2) & (!\PC|DOUT\(3) & (\ROM1|memROM~0_combout\ & \ROM1|memROM~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \Banco_Registradores|ALT_INV_registrador~477_q\,
	combout => \Banco_Registradores|saidaA[23]~24_combout\);

\Banco_Registradores|saidaA[0]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco_Registradores|saidaA[0]~25_combout\ = ( !\PC|DOUT\(7) & ( !\PC|DOUT\(6) & ( (\PC|DOUT\(2) & (!\PC|DOUT\(3) & (!\PC|DOUT\(4) & !\PC|DOUT\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	datae => \PC|ALT_INV_DOUT\(7),
	dataf => \PC|ALT_INV_DOUT\(6),
	combout => \Banco_Registradores|saidaA[0]~25_combout\);

\ULA1|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~97_sumout\ = SUM(( \Banco_Registradores|saidaA[24]~26_combout\ ) + ( (\ROM1|memROM~2_combout\ & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\ROM1|memROM~3_combout\))) ) + ( \ULA1|Add0~94\ ))
-- \ULA1|Add0~98\ = CARRY(( \Banco_Registradores|saidaA[24]~26_combout\ ) + ( (\ROM1|memROM~2_combout\ & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\ROM1|memROM~3_combout\))) ) + ( \ULA1|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \Banco_Registradores|ALT_INV_saidaA[24]~26_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	cin => \ULA1|Add0~94\,
	sumout => \ULA1|Add0~97_sumout\,
	cout => \ULA1|Add0~98\);

\Banco_Registradores|registrador~478\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~97_sumout\,
	ena => \Banco_Registradores|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco_Registradores|registrador~478_q\);

\Banco_Registradores|saidaA[24]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco_Registradores|saidaA[24]~26_combout\ = (\Banco_Registradores|saidaA[0]~25_combout\ & \Banco_Registradores|registrador~478_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Banco_Registradores|ALT_INV_saidaA[0]~25_combout\,
	datab => \Banco_Registradores|ALT_INV_registrador~478_q\,
	combout => \Banco_Registradores|saidaA[24]~26_combout\);

\ULA1|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~101_sumout\ = SUM(( \Banco_Registradores|saidaA[25]~27_combout\ ) + ( (\ROM1|memROM~2_combout\ & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\ROM1|memROM~3_combout\))) ) + ( \ULA1|Add0~98\ ))
-- \ULA1|Add0~102\ = CARRY(( \Banco_Registradores|saidaA[25]~27_combout\ ) + ( (\ROM1|memROM~2_combout\ & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\ROM1|memROM~3_combout\))) ) + ( \ULA1|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \Banco_Registradores|ALT_INV_saidaA[25]~27_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	cin => \ULA1|Add0~98\,
	sumout => \ULA1|Add0~101_sumout\,
	cout => \ULA1|Add0~102\);

\Banco_Registradores|registrador~479\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~101_sumout\,
	ena => \Banco_Registradores|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco_Registradores|registrador~479_q\);

\Banco_Registradores|saidaA[25]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco_Registradores|saidaA[25]~27_combout\ = (\Banco_Registradores|saidaA[0]~25_combout\ & \Banco_Registradores|registrador~479_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Banco_Registradores|ALT_INV_saidaA[0]~25_combout\,
	datab => \Banco_Registradores|ALT_INV_registrador~479_q\,
	combout => \Banco_Registradores|saidaA[25]~27_combout\);

\ULA1|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~105_sumout\ = SUM(( \Banco_Registradores|saidaA[26]~28_combout\ ) + ( (\ROM1|memROM~2_combout\ & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\ROM1|memROM~3_combout\))) ) + ( \ULA1|Add0~102\ ))
-- \ULA1|Add0~106\ = CARRY(( \Banco_Registradores|saidaA[26]~28_combout\ ) + ( (\ROM1|memROM~2_combout\ & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\ROM1|memROM~3_combout\))) ) + ( \ULA1|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \Banco_Registradores|ALT_INV_saidaA[26]~28_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	cin => \ULA1|Add0~102\,
	sumout => \ULA1|Add0~105_sumout\,
	cout => \ULA1|Add0~106\);

\Banco_Registradores|registrador~480\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~105_sumout\,
	ena => \Banco_Registradores|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco_Registradores|registrador~480_q\);

\Banco_Registradores|saidaA[26]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco_Registradores|saidaA[26]~28_combout\ = (\Banco_Registradores|saidaA[0]~25_combout\ & \Banco_Registradores|registrador~480_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Banco_Registradores|ALT_INV_saidaA[0]~25_combout\,
	datab => \Banco_Registradores|ALT_INV_registrador~480_q\,
	combout => \Banco_Registradores|saidaA[26]~28_combout\);

\ULA1|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~109_sumout\ = SUM(( \Banco_Registradores|saidaA[27]~29_combout\ ) + ( (\ROM1|memROM~2_combout\ & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\ROM1|memROM~3_combout\))) ) + ( \ULA1|Add0~106\ ))
-- \ULA1|Add0~110\ = CARRY(( \Banco_Registradores|saidaA[27]~29_combout\ ) + ( (\ROM1|memROM~2_combout\ & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\ROM1|memROM~3_combout\))) ) + ( \ULA1|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \Banco_Registradores|ALT_INV_saidaA[27]~29_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	cin => \ULA1|Add0~106\,
	sumout => \ULA1|Add0~109_sumout\,
	cout => \ULA1|Add0~110\);

\Banco_Registradores|registrador~481\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~109_sumout\,
	ena => \Banco_Registradores|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco_Registradores|registrador~481_q\);

\Banco_Registradores|saidaA[27]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco_Registradores|saidaA[27]~29_combout\ = (\Banco_Registradores|saidaA[0]~25_combout\ & \Banco_Registradores|registrador~481_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Banco_Registradores|ALT_INV_saidaA[0]~25_combout\,
	datab => \Banco_Registradores|ALT_INV_registrador~481_q\,
	combout => \Banco_Registradores|saidaA[27]~29_combout\);

\ULA1|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~113_sumout\ = SUM(( \Banco_Registradores|saidaA[28]~30_combout\ ) + ( (\ROM1|memROM~2_combout\ & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\ROM1|memROM~3_combout\))) ) + ( \ULA1|Add0~110\ ))
-- \ULA1|Add0~114\ = CARRY(( \Banco_Registradores|saidaA[28]~30_combout\ ) + ( (\ROM1|memROM~2_combout\ & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\ROM1|memROM~3_combout\))) ) + ( \ULA1|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \Banco_Registradores|ALT_INV_saidaA[28]~30_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	cin => \ULA1|Add0~110\,
	sumout => \ULA1|Add0~113_sumout\,
	cout => \ULA1|Add0~114\);

\Banco_Registradores|registrador~482\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~113_sumout\,
	ena => \Banco_Registradores|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco_Registradores|registrador~482_q\);

\Banco_Registradores|saidaA[28]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco_Registradores|saidaA[28]~30_combout\ = (\Banco_Registradores|saidaA[0]~25_combout\ & \Banco_Registradores|registrador~482_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Banco_Registradores|ALT_INV_saidaA[0]~25_combout\,
	datab => \Banco_Registradores|ALT_INV_registrador~482_q\,
	combout => \Banco_Registradores|saidaA[28]~30_combout\);

\ULA1|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~117_sumout\ = SUM(( \Banco_Registradores|saidaA[29]~31_combout\ ) + ( (\ROM1|memROM~2_combout\ & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\ROM1|memROM~3_combout\))) ) + ( \ULA1|Add0~114\ ))
-- \ULA1|Add0~118\ = CARRY(( \Banco_Registradores|saidaA[29]~31_combout\ ) + ( (\ROM1|memROM~2_combout\ & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\ROM1|memROM~3_combout\))) ) + ( \ULA1|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \Banco_Registradores|ALT_INV_saidaA[29]~31_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	cin => \ULA1|Add0~114\,
	sumout => \ULA1|Add0~117_sumout\,
	cout => \ULA1|Add0~118\);

\Banco_Registradores|registrador~483\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~117_sumout\,
	ena => \Banco_Registradores|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco_Registradores|registrador~483_q\);

\Banco_Registradores|saidaA[29]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco_Registradores|saidaA[29]~31_combout\ = (\Banco_Registradores|saidaA[0]~25_combout\ & \Banco_Registradores|registrador~483_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Banco_Registradores|ALT_INV_saidaA[0]~25_combout\,
	datab => \Banco_Registradores|ALT_INV_registrador~483_q\,
	combout => \Banco_Registradores|saidaA[29]~31_combout\);

\ULA1|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~121_sumout\ = SUM(( \Banco_Registradores|saidaA[30]~32_combout\ ) + ( (\ROM1|memROM~2_combout\ & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\ROM1|memROM~3_combout\))) ) + ( \ULA1|Add0~118\ ))
-- \ULA1|Add0~122\ = CARRY(( \Banco_Registradores|saidaA[30]~32_combout\ ) + ( (\ROM1|memROM~2_combout\ & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\ROM1|memROM~3_combout\))) ) + ( \ULA1|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \Banco_Registradores|ALT_INV_saidaA[30]~32_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	cin => \ULA1|Add0~118\,
	sumout => \ULA1|Add0~121_sumout\,
	cout => \ULA1|Add0~122\);

\Banco_Registradores|registrador~484\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~121_sumout\,
	ena => \Banco_Registradores|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco_Registradores|registrador~484_q\);

\Banco_Registradores|saidaA[30]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco_Registradores|saidaA[30]~32_combout\ = (\Banco_Registradores|saidaA[0]~25_combout\ & \Banco_Registradores|registrador~484_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Banco_Registradores|ALT_INV_saidaA[0]~25_combout\,
	datab => \Banco_Registradores|ALT_INV_registrador~484_q\,
	combout => \Banco_Registradores|saidaA[30]~32_combout\);

\ULA1|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~125_sumout\ = SUM(( \Banco_Registradores|saidaA[31]~33_combout\ ) + ( (\ROM1|memROM~2_combout\ & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\ROM1|memROM~3_combout\))) ) + ( \ULA1|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \Banco_Registradores|ALT_INV_saidaA[31]~33_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	cin => \ULA1|Add0~122\,
	sumout => \ULA1|Add0~125_sumout\);

\Banco_Registradores|registrador~485\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~125_sumout\,
	ena => \Banco_Registradores|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco_Registradores|registrador~485_q\);

\Banco_Registradores|saidaA[31]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco_Registradores|saidaA[31]~33_combout\ = (\Banco_Registradores|saidaA[0]~25_combout\ & \Banco_Registradores|registrador~485_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Banco_Registradores|ALT_INV_saidaA[0]~25_combout\,
	datab => \Banco_Registradores|ALT_INV_registrador~485_q\,
	combout => \Banco_Registradores|saidaA[31]~33_combout\);

\Decoder|OUTPUT[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder|OUTPUT[1]~0_combout\ = (\ROM1|memROM~2_combout\ & ((\ROM1|memROM~4_combout\) # (\PC|DOUT\(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100010011000100110001001100010011000100110001001100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \Decoder|OUTPUT[1]~0_combout\);

ww_ULA_A(0) <= \ULA_A[0]~output_o\;

ww_ULA_A(1) <= \ULA_A[1]~output_o\;

ww_ULA_A(2) <= \ULA_A[2]~output_o\;

ww_ULA_A(3) <= \ULA_A[3]~output_o\;

ww_ULA_A(4) <= \ULA_A[4]~output_o\;

ww_ULA_A(5) <= \ULA_A[5]~output_o\;

ww_ULA_A(6) <= \ULA_A[6]~output_o\;

ww_ULA_A(7) <= \ULA_A[7]~output_o\;

ww_ULA_A(8) <= \ULA_A[8]~output_o\;

ww_ULA_A(9) <= \ULA_A[9]~output_o\;

ww_ULA_A(10) <= \ULA_A[10]~output_o\;

ww_ULA_A(11) <= \ULA_A[11]~output_o\;

ww_ULA_A(12) <= \ULA_A[12]~output_o\;

ww_ULA_A(13) <= \ULA_A[13]~output_o\;

ww_ULA_A(14) <= \ULA_A[14]~output_o\;

ww_ULA_A(15) <= \ULA_A[15]~output_o\;

ww_ULA_A(16) <= \ULA_A[16]~output_o\;

ww_ULA_A(17) <= \ULA_A[17]~output_o\;

ww_ULA_A(18) <= \ULA_A[18]~output_o\;

ww_ULA_A(19) <= \ULA_A[19]~output_o\;

ww_ULA_A(20) <= \ULA_A[20]~output_o\;

ww_ULA_A(21) <= \ULA_A[21]~output_o\;

ww_ULA_A(22) <= \ULA_A[22]~output_o\;

ww_ULA_A(23) <= \ULA_A[23]~output_o\;

ww_ULA_A(24) <= \ULA_A[24]~output_o\;

ww_ULA_A(25) <= \ULA_A[25]~output_o\;

ww_ULA_A(26) <= \ULA_A[26]~output_o\;

ww_ULA_A(27) <= \ULA_A[27]~output_o\;

ww_ULA_A(28) <= \ULA_A[28]~output_o\;

ww_ULA_A(29) <= \ULA_A[29]~output_o\;

ww_ULA_A(30) <= \ULA_A[30]~output_o\;

ww_ULA_A(31) <= \ULA_A[31]~output_o\;

ww_ULA_B(0) <= \ULA_B[0]~output_o\;

ww_ULA_B(1) <= \ULA_B[1]~output_o\;

ww_ULA_B(2) <= \ULA_B[2]~output_o\;

ww_ULA_B(3) <= \ULA_B[3]~output_o\;

ww_ULA_B(4) <= \ULA_B[4]~output_o\;

ww_ULA_B(5) <= \ULA_B[5]~output_o\;

ww_ULA_B(6) <= \ULA_B[6]~output_o\;

ww_ULA_B(7) <= \ULA_B[7]~output_o\;

ww_ULA_B(8) <= \ULA_B[8]~output_o\;

ww_ULA_B(9) <= \ULA_B[9]~output_o\;

ww_ULA_B(10) <= \ULA_B[10]~output_o\;

ww_ULA_B(11) <= \ULA_B[11]~output_o\;

ww_ULA_B(12) <= \ULA_B[12]~output_o\;

ww_ULA_B(13) <= \ULA_B[13]~output_o\;

ww_ULA_B(14) <= \ULA_B[14]~output_o\;

ww_ULA_B(15) <= \ULA_B[15]~output_o\;

ww_ULA_B(16) <= \ULA_B[16]~output_o\;

ww_ULA_B(17) <= \ULA_B[17]~output_o\;

ww_ULA_B(18) <= \ULA_B[18]~output_o\;

ww_ULA_B(19) <= \ULA_B[19]~output_o\;

ww_ULA_B(20) <= \ULA_B[20]~output_o\;

ww_ULA_B(21) <= \ULA_B[21]~output_o\;

ww_ULA_B(22) <= \ULA_B[22]~output_o\;

ww_ULA_B(23) <= \ULA_B[23]~output_o\;

ww_ULA_B(24) <= \ULA_B[24]~output_o\;

ww_ULA_B(25) <= \ULA_B[25]~output_o\;

ww_ULA_B(26) <= \ULA_B[26]~output_o\;

ww_ULA_B(27) <= \ULA_B[27]~output_o\;

ww_ULA_B(28) <= \ULA_B[28]~output_o\;

ww_ULA_B(29) <= \ULA_B[29]~output_o\;

ww_ULA_B(30) <= \ULA_B[30]~output_o\;

ww_ULA_B(31) <= \ULA_B[31]~output_o\;

ww_Operacao_ULA_OUT(0) <= \Operacao_ULA_OUT[0]~output_o\;

ww_Operacao_ULA_OUT(1) <= \Operacao_ULA_OUT[1]~output_o\;

ww_Operacao_ULA_OUT(2) <= \Operacao_ULA_OUT[2]~output_o\;

ww_Valor_Operacao(0) <= \Valor_Operacao[0]~output_o\;

ww_Valor_Operacao(1) <= \Valor_Operacao[1]~output_o\;

ww_Valor_Operacao(2) <= \Valor_Operacao[2]~output_o\;

ww_Valor_Operacao(3) <= \Valor_Operacao[3]~output_o\;

ww_Valor_Operacao(4) <= \Valor_Operacao[4]~output_o\;

ww_Valor_Operacao(5) <= \Valor_Operacao[5]~output_o\;

ww_Valor_Operacao(6) <= \Valor_Operacao[6]~output_o\;

ww_Valor_Operacao(7) <= \Valor_Operacao[7]~output_o\;

ww_Valor_Operacao(8) <= \Valor_Operacao[8]~output_o\;

ww_Valor_Operacao(9) <= \Valor_Operacao[9]~output_o\;

ww_Valor_Operacao(10) <= \Valor_Operacao[10]~output_o\;

ww_Valor_Operacao(11) <= \Valor_Operacao[11]~output_o\;

ww_Valor_Operacao(12) <= \Valor_Operacao[12]~output_o\;

ww_Valor_Operacao(13) <= \Valor_Operacao[13]~output_o\;

ww_Valor_Operacao(14) <= \Valor_Operacao[14]~output_o\;

ww_Valor_Operacao(15) <= \Valor_Operacao[15]~output_o\;

ww_Valor_Operacao(16) <= \Valor_Operacao[16]~output_o\;

ww_Valor_Operacao(17) <= \Valor_Operacao[17]~output_o\;

ww_Valor_Operacao(18) <= \Valor_Operacao[18]~output_o\;

ww_Valor_Operacao(19) <= \Valor_Operacao[19]~output_o\;

ww_Valor_Operacao(20) <= \Valor_Operacao[20]~output_o\;

ww_Valor_Operacao(21) <= \Valor_Operacao[21]~output_o\;

ww_Valor_Operacao(22) <= \Valor_Operacao[22]~output_o\;

ww_Valor_Operacao(23) <= \Valor_Operacao[23]~output_o\;

ww_Valor_Operacao(24) <= \Valor_Operacao[24]~output_o\;

ww_Valor_Operacao(25) <= \Valor_Operacao[25]~output_o\;

ww_Valor_Operacao(26) <= \Valor_Operacao[26]~output_o\;

ww_Valor_Operacao(27) <= \Valor_Operacao[27]~output_o\;

ww_Valor_Operacao(28) <= \Valor_Operacao[28]~output_o\;

ww_Valor_Operacao(29) <= \Valor_Operacao[29]~output_o\;

ww_Valor_Operacao(30) <= \Valor_Operacao[30]~output_o\;

ww_Valor_Operacao(31) <= \Valor_Operacao[31]~output_o\;
END structure;


