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

-- DATE "08/12/2021 15:58:27"

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

ENTITY 	contadorComCarga IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(7 DOWNTO 0);
	KEY : IN std_logic_vector(1 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0)
	);
END contadorComCarga;

-- Design Ports Information
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
-- SW[3]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF contadorComCarga IS
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
SIGNAL ww_SW : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \detectorSub0|saidaQ~0_combout\ : std_logic;
SIGNAL \detectorSub0|saidaQ~q\ : std_logic;
SIGNAL \detectorSub0|saida~combout\ : std_logic;
SIGNAL \SOMADOR|Add0~13_sumout\ : std_logic;
SIGNAL \CONTADOR|DOUT[0]~feeder_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \SOMADOR|Add0~14\ : std_logic;
SIGNAL \SOMADOR|Add0~9_sumout\ : std_logic;
SIGNAL \CONTADOR|DOUT[1]~feeder_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SOMADOR|Add0~10\ : std_logic;
SIGNAL \SOMADOR|Add0~5_sumout\ : std_logic;
SIGNAL \CONTADOR|DOUT[2]~feeder_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SOMADOR|Add0~6\ : std_logic;
SIGNAL \SOMADOR|Add0~1_sumout\ : std_logic;
SIGNAL \CONTADOR|DOUT[3]~feeder_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SOMADOR|Add0~2\ : std_logic;
SIGNAL \SOMADOR|Add0~29_sumout\ : std_logic;
SIGNAL \CONTADOR|DOUT[4]~feeder_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SOMADOR|Add0~30\ : std_logic;
SIGNAL \SOMADOR|Add0~25_sumout\ : std_logic;
SIGNAL \CONTADOR|DOUT[5]~feeder_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SOMADOR|Add0~26\ : std_logic;
SIGNAL \SOMADOR|Add0~21_sumout\ : std_logic;
SIGNAL \CONTADOR|DOUT[6]~feeder_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SOMADOR|Add0~22\ : std_logic;
SIGNAL \SOMADOR|Add0~17_sumout\ : std_logic;
SIGNAL \CONTADOR|DOUT[7]~feeder_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~18\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~19\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~14\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~15\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~10\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~11\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~2\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~3\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~5_sumout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~1_sumout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[27]~9_combout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[27]~10_combout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~13_sumout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[25]~30_combout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[25]~31_combout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|op_5~26_cout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|op_5~6\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|op_5~22\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|op_5~18\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|op_5~14\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|op_5~10\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|op_5~1_sumout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|op_5~9_sumout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|op_5~13_sumout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[26]~15_combout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[26]~16_combout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[25]~21_combout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|op_5~17_sumout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[24]~26_combout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|op_5~21_sumout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|op_5~5_sumout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|op_6~30_cout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|op_6~10\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|op_6~6\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|op_6~26\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|op_6~22\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|op_6~18\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|op_6~13_sumout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|op_6~14\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|op_6~1_sumout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[36]~8_combout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[36]~11_combout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[35]~17_combout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|op_6~17_sumout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|op_6~21_sumout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[34]~20_combout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[34]~22_combout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[33]~27_combout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|op_6~25_sumout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[32]~0_combout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|op_6~5_sumout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|op_6~9_sumout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|op_7~34_cout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|op_7~14\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|op_7~10\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|op_7~6\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|op_7~30\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|op_7~26\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|op_7~22\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|op_7~18\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|op_7~1_sumout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[45]~7_combout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|op_7~17_sumout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[45]~12_combout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|op_7~21_sumout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[44]~14_combout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[44]~18_combout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[43]~23_combout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|op_7~25_sumout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[42]~25_combout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|op_7~29_sumout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[42]~28_combout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[41]~1_combout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|op_7~5_sumout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[40]~3_combout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|op_7~9_sumout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|op_7~13_sumout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|op_8~38_cout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|op_8~18\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|op_8~14\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|op_8~10\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|op_8~2\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|op_8~34\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|op_8~30\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|op_8~26\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|op_8~22\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|op_8~5_sumout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|op_8~9_sumout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[58]~4_combout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|op_8~13_sumout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[57]~5_combout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|op_8~29_sumout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|op_8~33_sumout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|op_8~25_sumout\ : std_logic;
SIGNAL \nomeComponente|Equal0~1_combout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[60]~29_combout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[63]~13_combout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[61]~24_combout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[62]~19_combout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|op_8~21_sumout\ : std_logic;
SIGNAL \nomeComponente|Equal0~0_combout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|op_8~1_sumout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[59]~2_combout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|op_8~17_sumout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[56]~6_combout\ : std_logic;
SIGNAL \nomeComponente|saida_UNIDADE_7seg[0]~0_combout\ : std_logic;
SIGNAL \nomeComponente|saida_UNIDADE_7seg[1]~1_combout\ : std_logic;
SIGNAL \nomeComponente|saida_UNIDADE_7seg[2]~2_combout\ : std_logic;
SIGNAL \nomeComponente|saida_UNIDADE_7seg[3]~3_combout\ : std_logic;
SIGNAL \nomeComponente|saida_UNIDADE_7seg[4]~4_combout\ : std_logic;
SIGNAL \nomeComponente|saida_UNIDADE_7seg[5]~5_combout\ : std_logic;
SIGNAL \nomeComponente|saida_UNIDADE_7seg[6]~6_combout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~18\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~19\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~14\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~15\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~10\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~11\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_sumout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|StageOut[18]~0_combout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|StageOut[18]~1_combout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~13_sumout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|StageOut[16]~5_combout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|StageOut[16]~6_combout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|op_5~26_cout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|op_5~22\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|op_5~18\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|op_5~14\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|op_5~10\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|op_5~6_cout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|op_5~1_sumout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|op_5~13_sumout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|StageOut[22]~4_combout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|op_5~9_sumout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|StageOut[17]~2_combout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|StageOut[17]~3_combout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|StageOut[16]~7_combout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|StageOut[15]~10_combout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|op_5~17_sumout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|op_5~21_sumout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|op_6~26_cout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|op_6~22\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|op_6~18\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|op_6~14\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|op_6~10\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|op_6~6_cout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|op_6~1_sumout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|op_6~9_sumout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|StageOut[22]~8_combout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|StageOut[21]~11_combout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|op_6~13_sumout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|StageOut[20]~13_combout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|op_6~17_sumout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|op_6~21_sumout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|op_7~26_cout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|op_7~22\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|op_7~18\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|op_7~14\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|op_7~10\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|op_7~6_cout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|op_7~1_sumout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|op_7~9_sumout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|StageOut[27]~9_combout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|StageOut[27]~12_combout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|StageOut[26]~14_combout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|op_7~13_sumout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|StageOut[25]~15_combout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|op_7~17_sumout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|op_7~21_sumout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|op_8~26_cout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|op_8~22_cout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|op_8~18_cout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|op_8~14_cout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|op_8~10_cout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|op_8~6_cout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|op_8~1_sumout\ : std_logic;
SIGNAL \nomeComponente|saida_DEZENA_7seg[0]~0_combout\ : std_logic;
SIGNAL \nomeComponente|saida_DEZENA_7seg[1]~1_combout\ : std_logic;
SIGNAL \nomeComponente|saida_DEZENA_7seg[2]~2_combout\ : std_logic;
SIGNAL \nomeComponente|saida_DEZENA_7seg[3]~3_combout\ : std_logic;
SIGNAL \nomeComponente|saida_DEZENA_7seg[4]~4_combout\ : std_logic;
SIGNAL \nomeComponente|saida_DEZENA_7seg[5]~5_combout\ : std_logic;
SIGNAL \nomeComponente|saida_DEZENA_7seg[6]~6_combout\ : std_logic;
SIGNAL \CONTADOR|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[34]~20_combout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[62]~19_combout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[44]~18_combout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[35]~17_combout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[26]~16_combout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[26]~15_combout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[44]~14_combout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[63]~13_combout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[45]~12_combout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[36]~11_combout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[27]~10_combout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[27]~9_combout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[36]~8_combout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[45]~7_combout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[56]~6_combout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[57]~5_combout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[58]~4_combout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[40]~3_combout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[59]~2_combout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[41]~1_combout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[32]~0_combout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~17_sumout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~13_sumout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~9_sumout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~5_sumout\ : std_logic;
SIGNAL \SOMADOR|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \SOMADOR|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \SOMADOR|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \SOMADOR|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \SOMADOR|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \SOMADOR|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \SOMADOR|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \SOMADOR|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_8~33_sumout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_8~29_sumout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_8~25_sumout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~17_sumout\ : std_logic;
SIGNAL \CONTADOR|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_7~29_sumout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_6~25_sumout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_7~25_sumout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~13_sumout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~9_sumout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~5_sumout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~1_sumout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_8~21_sumout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_8~17_sumout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_8~13_sumout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_8~9_sumout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_8~5_sumout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_7~5_sumout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_StageOut[25]~15_combout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_StageOut[26]~14_combout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_StageOut[20]~13_combout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_StageOut[27]~12_combout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_StageOut[21]~11_combout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_StageOut[15]~10_combout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_StageOut[27]~9_combout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_StageOut[22]~8_combout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~7_combout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~6_combout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~5_combout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_StageOut[22]~4_combout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~3_combout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~2_combout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_StageOut[18]~1_combout\ : std_logic;
SIGNAL \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_StageOut[18]~0_combout\ : std_logic;
SIGNAL \detectorSub0|ALT_INV_saidaQ~q\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[25]~31_combout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[25]~30_combout\ : std_logic;
SIGNAL \nomeComponente|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \nomeComponente|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[60]~29_combout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[42]~28_combout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[33]~27_combout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[24]~26_combout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[42]~25_combout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[61]~24_combout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[43]~23_combout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[34]~22_combout\ : std_logic;
SIGNAL \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[25]~21_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
ww_KEY <= KEY;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[34]~20_combout\ <= NOT \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[34]~20_combout\;
\nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[62]~19_combout\ <= NOT \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[62]~19_combout\;
\nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[44]~18_combout\ <= NOT \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[44]~18_combout\;
\nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[35]~17_combout\ <= NOT \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[35]~17_combout\;
\nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[26]~16_combout\ <= NOT \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[26]~16_combout\;
\nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[26]~15_combout\ <= NOT \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[26]~15_combout\;
\nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[44]~14_combout\ <= NOT \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[44]~14_combout\;
\nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[63]~13_combout\ <= NOT \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[63]~13_combout\;
\nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[45]~12_combout\ <= NOT \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[45]~12_combout\;
\nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[36]~11_combout\ <= NOT \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[36]~11_combout\;
\nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[27]~10_combout\ <= NOT \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[27]~10_combout\;
\nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[27]~9_combout\ <= NOT \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[27]~9_combout\;
\nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[36]~8_combout\ <= NOT \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[36]~8_combout\;
\nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[45]~7_combout\ <= NOT \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[45]~7_combout\;
\nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[56]~6_combout\ <= NOT \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[56]~6_combout\;
\nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[57]~5_combout\ <= NOT \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[57]~5_combout\;
\nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[58]~4_combout\ <= NOT \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[58]~4_combout\;
\nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[40]~3_combout\ <= NOT \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[40]~3_combout\;
\nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[59]~2_combout\ <= NOT \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[59]~2_combout\;
\nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[41]~1_combout\ <= NOT \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[41]~1_combout\;
\nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[32]~0_combout\ <= NOT \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[32]~0_combout\;
\nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\ <= NOT \nomeComponente|Div0|auto_generated|divider|divider|op_7~21_sumout\;
\nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\ <= NOT \nomeComponente|Div0|auto_generated|divider|divider|op_6~21_sumout\;
\nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\ <= NOT \nomeComponente|Div0|auto_generated|divider|divider|op_7~17_sumout\;
\nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\ <= NOT \nomeComponente|Div0|auto_generated|divider|divider|op_5~21_sumout\;
\nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\ <= NOT \nomeComponente|Div0|auto_generated|divider|divider|op_6~17_sumout\;
\nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\ <= NOT \nomeComponente|Div0|auto_generated|divider|divider|op_7~13_sumout\;
\nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\ <= NOT \nomeComponente|Div0|auto_generated|divider|divider|op_5~17_sumout\;
\nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~17_sumout\ <= NOT \nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\;
\nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\ <= NOT \nomeComponente|Div0|auto_generated|divider|divider|op_6~13_sumout\;
\nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\ <= NOT \nomeComponente|Div0|auto_generated|divider|divider|op_7~9_sumout\;
\nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~13_sumout\ <= NOT \nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~13_sumout\;
\nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ <= NOT \nomeComponente|Div0|auto_generated|divider|divider|op_5~13_sumout\;
\nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\ <= NOT \nomeComponente|Div0|auto_generated|divider|divider|op_6~9_sumout\;
\nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ <= NOT \nomeComponente|Div0|auto_generated|divider|divider|op_5~9_sumout\;
\nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~9_sumout\ <= NOT \nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\;
\nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~5_sumout\ <= NOT \nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_sumout\;
\SOMADOR|ALT_INV_Add0~29_sumout\ <= NOT \SOMADOR|Add0~29_sumout\;
\SOMADOR|ALT_INV_Add0~25_sumout\ <= NOT \SOMADOR|Add0~25_sumout\;
\SOMADOR|ALT_INV_Add0~21_sumout\ <= NOT \SOMADOR|Add0~21_sumout\;
\SOMADOR|ALT_INV_Add0~17_sumout\ <= NOT \SOMADOR|Add0~17_sumout\;
\SOMADOR|ALT_INV_Add0~13_sumout\ <= NOT \SOMADOR|Add0~13_sumout\;
\SOMADOR|ALT_INV_Add0~9_sumout\ <= NOT \SOMADOR|Add0~9_sumout\;
\SOMADOR|ALT_INV_Add0~5_sumout\ <= NOT \SOMADOR|Add0~5_sumout\;
\SOMADOR|ALT_INV_Add0~1_sumout\ <= NOT \SOMADOR|Add0~1_sumout\;
\nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\ <= NOT \nomeComponente|Div0|auto_generated|divider|divider|op_8~1_sumout\;
\nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\ <= NOT \nomeComponente|Div0|auto_generated|divider|divider|op_7~1_sumout\;
\nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\ <= NOT \nomeComponente|Div0|auto_generated|divider|divider|op_6~1_sumout\;
\nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ <= NOT \nomeComponente|Div0|auto_generated|divider|divider|op_5~1_sumout\;
\nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\ <= NOT \nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\;
\nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_8~33_sumout\ <= NOT \nomeComponente|Mod0|auto_generated|divider|divider|op_8~33_sumout\;
\nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_8~29_sumout\ <= NOT \nomeComponente|Mod0|auto_generated|divider|divider|op_8~29_sumout\;
\nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_8~25_sumout\ <= NOT \nomeComponente|Mod0|auto_generated|divider|divider|op_8~25_sumout\;
\nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\ <= NOT \nomeComponente|Mod0|auto_generated|divider|divider|op_5~21_sumout\;
\nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~17_sumout\ <= NOT \nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\;
\CONTADOR|ALT_INV_DOUT\(4) <= NOT \CONTADOR|DOUT\(4);
\nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_7~29_sumout\ <= NOT \nomeComponente|Mod0|auto_generated|divider|divider|op_7~29_sumout\;
\nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_6~25_sumout\ <= NOT \nomeComponente|Mod0|auto_generated|divider|divider|op_6~25_sumout\;
\nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_7~25_sumout\ <= NOT \nomeComponente|Mod0|auto_generated|divider|divider|op_7~25_sumout\;
\nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~13_sumout\ <= NOT \nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~13_sumout\;
\CONTADOR|ALT_INV_DOUT\(5) <= NOT \CONTADOR|DOUT\(5);
\nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\ <= NOT \nomeComponente|Mod0|auto_generated|divider|divider|op_6~21_sumout\;
\nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\ <= NOT \nomeComponente|Mod0|auto_generated|divider|divider|op_5~17_sumout\;
\CONTADOR|ALT_INV_DOUT\(6) <= NOT \CONTADOR|DOUT\(6);
\nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ <= NOT \nomeComponente|Mod0|auto_generated|divider|divider|op_5~13_sumout\;
\nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~9_sumout\ <= NOT \nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\;
\nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\ <= NOT \nomeComponente|Mod0|auto_generated|divider|divider|op_7~21_sumout\;
\nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\ <= NOT \nomeComponente|Mod0|auto_generated|divider|divider|op_6~17_sumout\;
\CONTADOR|ALT_INV_DOUT\(7) <= NOT \CONTADOR|DOUT\(7);
\nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~5_sumout\ <= NOT \nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~5_sumout\;
\nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~1_sumout\ <= NOT \nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~1_sumout\;
\nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ <= NOT \nomeComponente|Mod0|auto_generated|divider|divider|op_5~9_sumout\;
\nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\ <= NOT \nomeComponente|Mod0|auto_generated|divider|divider|op_7~17_sumout\;
\nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\ <= NOT \nomeComponente|Mod0|auto_generated|divider|divider|op_6~13_sumout\;
\nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_8~21_sumout\ <= NOT \nomeComponente|Mod0|auto_generated|divider|divider|op_8~21_sumout\;
\nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_8~17_sumout\ <= NOT \nomeComponente|Mod0|auto_generated|divider|divider|op_8~17_sumout\;
\CONTADOR|ALT_INV_DOUT\(0) <= NOT \CONTADOR|DOUT\(0);
\nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_8~13_sumout\ <= NOT \nomeComponente|Mod0|auto_generated|divider|divider|op_8~13_sumout\;
\nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\ <= NOT \nomeComponente|Mod0|auto_generated|divider|divider|op_7~13_sumout\;
\CONTADOR|ALT_INV_DOUT\(1) <= NOT \CONTADOR|DOUT\(1);
\nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_8~9_sumout\ <= NOT \nomeComponente|Mod0|auto_generated|divider|divider|op_8~9_sumout\;
\nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\ <= NOT \nomeComponente|Mod0|auto_generated|divider|divider|op_7~9_sumout\;
\nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\ <= NOT \nomeComponente|Mod0|auto_generated|divider|divider|op_6~9_sumout\;
\CONTADOR|ALT_INV_DOUT\(2) <= NOT \CONTADOR|DOUT\(2);
\nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_8~5_sumout\ <= NOT \nomeComponente|Mod0|auto_generated|divider|divider|op_8~5_sumout\;
\nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\ <= NOT \nomeComponente|Mod0|auto_generated|divider|divider|op_8~1_sumout\;
\nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_7~5_sumout\ <= NOT \nomeComponente|Mod0|auto_generated|divider|divider|op_7~5_sumout\;
\nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\ <= NOT \nomeComponente|Mod0|auto_generated|divider|divider|op_6~5_sumout\;
\nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\ <= NOT \nomeComponente|Mod0|auto_generated|divider|divider|op_5~5_sumout\;
\nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ <= NOT \nomeComponente|Mod0|auto_generated|divider|divider|op_5~1_sumout\;
\CONTADOR|ALT_INV_DOUT\(3) <= NOT \CONTADOR|DOUT\(3);
\nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\ <= NOT \nomeComponente|Mod0|auto_generated|divider|divider|op_6~1_sumout\;
\nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\ <= NOT \nomeComponente|Mod0|auto_generated|divider|divider|op_7~1_sumout\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_StageOut[25]~15_combout\ <= NOT \nomeComponente|Div0|auto_generated|divider|divider|StageOut[25]~15_combout\;
\nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_StageOut[26]~14_combout\ <= NOT \nomeComponente|Div0|auto_generated|divider|divider|StageOut[26]~14_combout\;
\nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_StageOut[20]~13_combout\ <= NOT \nomeComponente|Div0|auto_generated|divider|divider|StageOut[20]~13_combout\;
\nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_StageOut[27]~12_combout\ <= NOT \nomeComponente|Div0|auto_generated|divider|divider|StageOut[27]~12_combout\;
\nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_StageOut[21]~11_combout\ <= NOT \nomeComponente|Div0|auto_generated|divider|divider|StageOut[21]~11_combout\;
\nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_StageOut[15]~10_combout\ <= NOT \nomeComponente|Div0|auto_generated|divider|divider|StageOut[15]~10_combout\;
\nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_StageOut[27]~9_combout\ <= NOT \nomeComponente|Div0|auto_generated|divider|divider|StageOut[27]~9_combout\;
\nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_StageOut[22]~8_combout\ <= NOT \nomeComponente|Div0|auto_generated|divider|divider|StageOut[22]~8_combout\;
\nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~7_combout\ <= NOT \nomeComponente|Div0|auto_generated|divider|divider|StageOut[16]~7_combout\;
\nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~6_combout\ <= NOT \nomeComponente|Div0|auto_generated|divider|divider|StageOut[16]~6_combout\;
\nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~5_combout\ <= NOT \nomeComponente|Div0|auto_generated|divider|divider|StageOut[16]~5_combout\;
\nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_StageOut[22]~4_combout\ <= NOT \nomeComponente|Div0|auto_generated|divider|divider|StageOut[22]~4_combout\;
\nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~3_combout\ <= NOT \nomeComponente|Div0|auto_generated|divider|divider|StageOut[17]~3_combout\;
\nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~2_combout\ <= NOT \nomeComponente|Div0|auto_generated|divider|divider|StageOut[17]~2_combout\;
\nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_StageOut[18]~1_combout\ <= NOT \nomeComponente|Div0|auto_generated|divider|divider|StageOut[18]~1_combout\;
\nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_StageOut[18]~0_combout\ <= NOT \nomeComponente|Div0|auto_generated|divider|divider|StageOut[18]~0_combout\;
\detectorSub0|ALT_INV_saidaQ~q\ <= NOT \detectorSub0|saidaQ~q\;
\nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[25]~31_combout\ <= NOT \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[25]~31_combout\;
\nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[25]~30_combout\ <= NOT \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[25]~30_combout\;
\nomeComponente|ALT_INV_Equal0~1_combout\ <= NOT \nomeComponente|Equal0~1_combout\;
\nomeComponente|ALT_INV_Equal0~0_combout\ <= NOT \nomeComponente|Equal0~0_combout\;
\nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[60]~29_combout\ <= NOT \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[60]~29_combout\;
\nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[42]~28_combout\ <= NOT \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[42]~28_combout\;
\nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[33]~27_combout\ <= NOT \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[33]~27_combout\;
\nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[24]~26_combout\ <= NOT \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[24]~26_combout\;
\nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[42]~25_combout\ <= NOT \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[42]~25_combout\;
\nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[61]~24_combout\ <= NOT \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[61]~24_combout\;
\nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[43]~23_combout\ <= NOT \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[43]~23_combout\;
\nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[34]~22_combout\ <= NOT \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[34]~22_combout\;
\nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[25]~21_combout\ <= NOT \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[25]~21_combout\;

-- Location: IOOBUF_X52_Y0_N53
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \nomeComponente|saida_UNIDADE_7seg[0]~0_combout\,
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
	i => \nomeComponente|saida_UNIDADE_7seg[1]~1_combout\,
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
	i => \nomeComponente|saida_UNIDADE_7seg[2]~2_combout\,
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
	i => \nomeComponente|saida_UNIDADE_7seg[3]~3_combout\,
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
	i => \nomeComponente|saida_UNIDADE_7seg[4]~4_combout\,
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
	i => \nomeComponente|saida_UNIDADE_7seg[5]~5_combout\,
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
	i => \nomeComponente|saida_UNIDADE_7seg[6]~6_combout\,
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
	i => \nomeComponente|saida_DEZENA_7seg[0]~0_combout\,
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
	i => \nomeComponente|saida_DEZENA_7seg[1]~1_combout\,
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
	i => \nomeComponente|saida_DEZENA_7seg[2]~2_combout\,
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
	i => \nomeComponente|saida_DEZENA_7seg[3]~3_combout\,
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
	i => \nomeComponente|saida_DEZENA_7seg[4]~4_combout\,
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
	i => \nomeComponente|saida_DEZENA_7seg[5]~5_combout\,
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
	i => \nomeComponente|saida_DEZENA_7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

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

-- Location: LABCELL_X10_Y1_N12
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

-- Location: FF_X10_Y1_N14
\detectorSub0|saidaQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \detectorSub0|saidaQ~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \detectorSub0|saidaQ~q\);

-- Location: MLABCELL_X9_Y1_N6
\detectorSub0|saida\ : cyclonev_lcell_comb
-- Equation(s):
-- \detectorSub0|saida~combout\ = LCELL(( !\detectorSub0|saidaQ~q\ & ( !\KEY[0]~input_o\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_KEY[0]~input_o\,
	dataf => \detectorSub0|ALT_INV_saidaQ~q\,
	combout => \detectorSub0|saida~combout\);

-- Location: MLABCELL_X9_Y1_N30
\SOMADOR|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~13_sumout\ = SUM(( \CONTADOR|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \SOMADOR|Add0~14\ = CARRY(( \CONTADOR|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CONTADOR|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \SOMADOR|Add0~13_sumout\,
	cout => \SOMADOR|Add0~14\);

-- Location: MLABCELL_X9_Y1_N54
\CONTADOR|DOUT[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CONTADOR|DOUT[0]~feeder_combout\ = ( \SOMADOR|Add0~13_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \SOMADOR|ALT_INV_Add0~13_sumout\,
	combout => \CONTADOR|DOUT[0]~feeder_combout\);

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

-- Location: FF_X9_Y1_N56
\CONTADOR|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \CONTADOR|DOUT[0]~feeder_combout\,
	asdata => \SW[0]~input_o\,
	sload => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTADOR|DOUT\(0));

-- Location: MLABCELL_X9_Y1_N33
\SOMADOR|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~9_sumout\ = SUM(( \CONTADOR|DOUT\(1) ) + ( GND ) + ( \SOMADOR|Add0~14\ ))
-- \SOMADOR|Add0~10\ = CARRY(( \CONTADOR|DOUT\(1) ) + ( GND ) + ( \SOMADOR|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CONTADOR|ALT_INV_DOUT\(1),
	cin => \SOMADOR|Add0~14\,
	sumout => \SOMADOR|Add0~9_sumout\,
	cout => \SOMADOR|Add0~10\);

-- Location: MLABCELL_X9_Y1_N21
\CONTADOR|DOUT[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CONTADOR|DOUT[1]~feeder_combout\ = \SOMADOR|Add0~9_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SOMADOR|ALT_INV_Add0~9_sumout\,
	combout => \CONTADOR|DOUT[1]~feeder_combout\);

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

-- Location: FF_X9_Y1_N23
\CONTADOR|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \CONTADOR|DOUT[1]~feeder_combout\,
	asdata => \SW[1]~input_o\,
	sload => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTADOR|DOUT\(1));

-- Location: MLABCELL_X9_Y1_N36
\SOMADOR|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~5_sumout\ = SUM(( \CONTADOR|DOUT\(2) ) + ( GND ) + ( \SOMADOR|Add0~10\ ))
-- \SOMADOR|Add0~6\ = CARRY(( \CONTADOR|DOUT\(2) ) + ( GND ) + ( \SOMADOR|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CONTADOR|ALT_INV_DOUT\(2),
	cin => \SOMADOR|Add0~10\,
	sumout => \SOMADOR|Add0~5_sumout\,
	cout => \SOMADOR|Add0~6\);

-- Location: MLABCELL_X9_Y1_N0
\CONTADOR|DOUT[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CONTADOR|DOUT[2]~feeder_combout\ = ( \SOMADOR|Add0~5_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \SOMADOR|ALT_INV_Add0~5_sumout\,
	combout => \CONTADOR|DOUT[2]~feeder_combout\);

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

-- Location: FF_X9_Y1_N2
\CONTADOR|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \CONTADOR|DOUT[2]~feeder_combout\,
	asdata => \SW[2]~input_o\,
	sload => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTADOR|DOUT\(2));

-- Location: MLABCELL_X9_Y1_N39
\SOMADOR|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~1_sumout\ = SUM(( \CONTADOR|DOUT\(3) ) + ( GND ) + ( \SOMADOR|Add0~6\ ))
-- \SOMADOR|Add0~2\ = CARRY(( \CONTADOR|DOUT\(3) ) + ( GND ) + ( \SOMADOR|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CONTADOR|ALT_INV_DOUT\(3),
	cin => \SOMADOR|Add0~6\,
	sumout => \SOMADOR|Add0~1_sumout\,
	cout => \SOMADOR|Add0~2\);

-- Location: MLABCELL_X9_Y1_N15
\CONTADOR|DOUT[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CONTADOR|DOUT[3]~feeder_combout\ = ( \SOMADOR|Add0~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \SOMADOR|ALT_INV_Add0~1_sumout\,
	combout => \CONTADOR|DOUT[3]~feeder_combout\);

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

-- Location: FF_X9_Y1_N17
\CONTADOR|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \CONTADOR|DOUT[3]~feeder_combout\,
	asdata => \SW[3]~input_o\,
	sload => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTADOR|DOUT\(3));

-- Location: MLABCELL_X9_Y1_N42
\SOMADOR|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~29_sumout\ = SUM(( \CONTADOR|DOUT\(4) ) + ( GND ) + ( \SOMADOR|Add0~2\ ))
-- \SOMADOR|Add0~30\ = CARRY(( \CONTADOR|DOUT\(4) ) + ( GND ) + ( \SOMADOR|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CONTADOR|ALT_INV_DOUT\(4),
	cin => \SOMADOR|Add0~2\,
	sumout => \SOMADOR|Add0~29_sumout\,
	cout => \SOMADOR|Add0~30\);

-- Location: MLABCELL_X9_Y1_N27
\CONTADOR|DOUT[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CONTADOR|DOUT[4]~feeder_combout\ = ( \SOMADOR|Add0~29_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \SOMADOR|ALT_INV_Add0~29_sumout\,
	combout => \CONTADOR|DOUT[4]~feeder_combout\);

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

-- Location: FF_X9_Y1_N29
\CONTADOR|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \CONTADOR|DOUT[4]~feeder_combout\,
	asdata => \SW[4]~input_o\,
	sload => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTADOR|DOUT\(4));

-- Location: MLABCELL_X9_Y1_N45
\SOMADOR|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~25_sumout\ = SUM(( \CONTADOR|DOUT\(5) ) + ( GND ) + ( \SOMADOR|Add0~30\ ))
-- \SOMADOR|Add0~26\ = CARRY(( \CONTADOR|DOUT\(5) ) + ( GND ) + ( \SOMADOR|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONTADOR|ALT_INV_DOUT\(5),
	cin => \SOMADOR|Add0~30\,
	sumout => \SOMADOR|Add0~25_sumout\,
	cout => \SOMADOR|Add0~26\);

-- Location: MLABCELL_X9_Y1_N18
\CONTADOR|DOUT[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CONTADOR|DOUT[5]~feeder_combout\ = \SOMADOR|Add0~25_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \SOMADOR|ALT_INV_Add0~25_sumout\,
	combout => \CONTADOR|DOUT[5]~feeder_combout\);

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

-- Location: FF_X9_Y1_N20
\CONTADOR|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \CONTADOR|DOUT[5]~feeder_combout\,
	asdata => \SW[5]~input_o\,
	sload => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTADOR|DOUT\(5));

-- Location: MLABCELL_X9_Y1_N48
\SOMADOR|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~21_sumout\ = SUM(( \CONTADOR|DOUT\(6) ) + ( GND ) + ( \SOMADOR|Add0~26\ ))
-- \SOMADOR|Add0~22\ = CARRY(( \CONTADOR|DOUT\(6) ) + ( GND ) + ( \SOMADOR|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CONTADOR|ALT_INV_DOUT\(6),
	cin => \SOMADOR|Add0~26\,
	sumout => \SOMADOR|Add0~21_sumout\,
	cout => \SOMADOR|Add0~22\);

-- Location: MLABCELL_X9_Y1_N3
\CONTADOR|DOUT[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CONTADOR|DOUT[6]~feeder_combout\ = ( \SOMADOR|Add0~21_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \SOMADOR|ALT_INV_Add0~21_sumout\,
	combout => \CONTADOR|DOUT[6]~feeder_combout\);

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

-- Location: FF_X9_Y1_N5
\CONTADOR|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \CONTADOR|DOUT[6]~feeder_combout\,
	asdata => \SW[6]~input_o\,
	sload => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTADOR|DOUT\(6));

-- Location: MLABCELL_X9_Y1_N51
\SOMADOR|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~17_sumout\ = SUM(( \CONTADOR|DOUT\(7) ) + ( GND ) + ( \SOMADOR|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CONTADOR|ALT_INV_DOUT\(7),
	cin => \SOMADOR|Add0~22\,
	sumout => \SOMADOR|Add0~17_sumout\);

-- Location: MLABCELL_X9_Y1_N12
\CONTADOR|DOUT[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CONTADOR|DOUT[7]~feeder_combout\ = ( \SOMADOR|Add0~17_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \SOMADOR|ALT_INV_Add0~17_sumout\,
	combout => \CONTADOR|DOUT[7]~feeder_combout\);

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

-- Location: FF_X9_Y1_N14
\CONTADOR|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \CONTADOR|DOUT[7]~feeder_combout\,
	asdata => \SW[7]~input_o\,
	sload => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTADOR|DOUT\(7));

-- Location: MLABCELL_X18_Y1_N30
\nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\ = SUM(( \CONTADOR|DOUT\(4) ) + ( !VCC ) + ( !VCC ))
-- \nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~18\ = CARRY(( \CONTADOR|DOUT\(4) ) + ( !VCC ) + ( !VCC ))
-- \nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~19\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \CONTADOR|ALT_INV_DOUT\(4),
	cin => GND,
	sharein => GND,
	sumout => \nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\,
	cout => \nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~18\,
	shareout => \nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~19\);

-- Location: MLABCELL_X18_Y1_N33
\nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~13_sumout\ = SUM(( \CONTADOR|DOUT\(5) ) + ( \nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~19\ ) + ( 
-- \nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~18\ ))
-- \nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~14\ = CARRY(( \CONTADOR|DOUT\(5) ) + ( \nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~19\ ) + ( 
-- \nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~18\ ))
-- \nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~15\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \CONTADOR|ALT_INV_DOUT\(5),
	cin => \nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~18\,
	sharein => \nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~19\,
	sumout => \nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~13_sumout\,
	cout => \nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~14\,
	shareout => \nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~15\);

-- Location: MLABCELL_X18_Y1_N36
\nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\ = SUM(( !\CONTADOR|DOUT\(6) ) + ( \nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~15\ ) + ( 
-- \nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~14\ ))
-- \nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~10\ = CARRY(( !\CONTADOR|DOUT\(6) ) + ( \nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~15\ ) + ( 
-- \nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~14\ ))
-- \nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~11\ = SHARE(\CONTADOR|DOUT\(6))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000001100110011001100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \CONTADOR|ALT_INV_DOUT\(6),
	cin => \nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~14\,
	sharein => \nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~15\,
	sumout => \nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\,
	cout => \nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~10\,
	shareout => \nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~11\);

-- Location: MLABCELL_X18_Y1_N39
\nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~1_sumout\ = SUM(( \CONTADOR|DOUT\(7) ) + ( \nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~11\ ) + ( 
-- \nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~10\ ))
-- \nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~2\ = CARRY(( \CONTADOR|DOUT\(7) ) + ( \nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~11\ ) + ( 
-- \nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~10\ ))
-- \nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~3\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \CONTADOR|ALT_INV_DOUT\(7),
	cin => \nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~10\,
	sharein => \nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~11\,
	sumout => \nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~1_sumout\,
	cout => \nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~2\,
	shareout => \nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~3\);

-- Location: MLABCELL_X18_Y1_N42
\nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~5_sumout\ = SUM(( VCC ) + ( \nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~3\ ) + ( 
-- \nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~2\,
	sharein => \nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~3\,
	sumout => \nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~5_sumout\);

-- Location: MLABCELL_X18_Y1_N27
\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[27]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[27]~9_combout\ = (!\nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~5_sumout\ & \nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~5_sumout\,
	datac => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~1_sumout\,
	combout => \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[27]~9_combout\);

-- Location: LABCELL_X19_Y1_N24
\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[27]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[27]~10_combout\ = ( \nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~5_sumout\ & ( \CONTADOR|DOUT\(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CONTADOR|ALT_INV_DOUT\(7),
	dataf => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~5_sumout\,
	combout => \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[27]~10_combout\);

-- Location: MLABCELL_X18_Y1_N57
\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[25]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[25]~30_combout\ = ( \nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~13_sumout\ & ( 
-- !\nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~5_sumout\,
	dataf => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~13_sumout\,
	combout => \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[25]~30_combout\);

-- Location: LABCELL_X17_Y1_N24
\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[25]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[25]~31_combout\ = ( \nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~5_sumout\ & ( \CONTADOR|DOUT\(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~5_sumout\,
	dataf => \CONTADOR|ALT_INV_DOUT\(5),
	combout => \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[25]~31_combout\);

-- Location: MLABCELL_X18_Y1_N0
\nomeComponente|Mod0|auto_generated|divider|divider|op_5~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_5~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \nomeComponente|Mod0|auto_generated|divider|divider|op_5~26_cout\);

-- Location: MLABCELL_X18_Y1_N3
\nomeComponente|Mod0|auto_generated|divider|divider|op_5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_5~5_sumout\ = SUM(( \CONTADOR|DOUT\(3) ) + ( VCC ) + ( \nomeComponente|Mod0|auto_generated|divider|divider|op_5~26_cout\ ))
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_5~6\ = CARRY(( \CONTADOR|DOUT\(3) ) + ( VCC ) + ( \nomeComponente|Mod0|auto_generated|divider|divider|op_5~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CONTADOR|ALT_INV_DOUT\(3),
	cin => \nomeComponente|Mod0|auto_generated|divider|divider|op_5~26_cout\,
	sumout => \nomeComponente|Mod0|auto_generated|divider|divider|op_5~5_sumout\,
	cout => \nomeComponente|Mod0|auto_generated|divider|divider|op_5~6\);

-- Location: MLABCELL_X18_Y1_N6
\nomeComponente|Mod0|auto_generated|divider|divider|op_5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_5~21_sumout\ = SUM(( GND ) + ( (!\nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~5_sumout\ & 
-- ((\nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\))) # (\nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~5_sumout\ & (\CONTADOR|DOUT\(4))) ) + ( 
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_5~6\ ))
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_5~22\ = CARRY(( GND ) + ( (!\nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~5_sumout\ & 
-- ((\nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\))) # (\nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~5_sumout\ & (\CONTADOR|DOUT\(4))) ) + ( 
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_5~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~5_sumout\,
	datac => \CONTADOR|ALT_INV_DOUT\(4),
	dataf => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~17_sumout\,
	cin => \nomeComponente|Mod0|auto_generated|divider|divider|op_5~6\,
	sumout => \nomeComponente|Mod0|auto_generated|divider|divider|op_5~21_sumout\,
	cout => \nomeComponente|Mod0|auto_generated|divider|divider|op_5~22\);

-- Location: MLABCELL_X18_Y1_N9
\nomeComponente|Mod0|auto_generated|divider|divider|op_5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_5~17_sumout\ = SUM(( VCC ) + ( (\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[25]~31_combout\) # (\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[25]~30_combout\) ) + ( 
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_5~22\ ))
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_5~18\ = CARRY(( VCC ) + ( (\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[25]~31_combout\) # (\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[25]~30_combout\) ) + ( 
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_5~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[25]~30_combout\,
	dataf => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[25]~31_combout\,
	cin => \nomeComponente|Mod0|auto_generated|divider|divider|op_5~22\,
	sumout => \nomeComponente|Mod0|auto_generated|divider|divider|op_5~17_sumout\,
	cout => \nomeComponente|Mod0|auto_generated|divider|divider|op_5~18\);

-- Location: MLABCELL_X18_Y1_N12
\nomeComponente|Mod0|auto_generated|divider|divider|op_5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_5~13_sumout\ = SUM(( (!\nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~5_sumout\ & 
-- ((\nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\))) # (\nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~5_sumout\ & (\CONTADOR|DOUT\(6))) ) + ( GND ) + ( 
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_5~18\ ))
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_5~14\ = CARRY(( (!\nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~5_sumout\ & ((\nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\))) # 
-- (\nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~5_sumout\ & (\CONTADOR|DOUT\(6))) ) + ( GND ) + ( \nomeComponente|Mod0|auto_generated|divider|divider|op_5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~5_sumout\,
	datac => \CONTADOR|ALT_INV_DOUT\(6),
	datad => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~9_sumout\,
	cin => \nomeComponente|Mod0|auto_generated|divider|divider|op_5~18\,
	sumout => \nomeComponente|Mod0|auto_generated|divider|divider|op_5~13_sumout\,
	cout => \nomeComponente|Mod0|auto_generated|divider|divider|op_5~14\);

-- Location: MLABCELL_X18_Y1_N15
\nomeComponente|Mod0|auto_generated|divider|divider|op_5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_5~9_sumout\ = SUM(( (\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[27]~10_combout\) # (\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[27]~9_combout\) ) + ( VCC ) + ( 
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_5~14\ ))
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_5~10\ = CARRY(( (\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[27]~10_combout\) # (\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[27]~9_combout\) ) + ( VCC ) + ( 
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[27]~9_combout\,
	datac => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[27]~10_combout\,
	cin => \nomeComponente|Mod0|auto_generated|divider|divider|op_5~14\,
	sumout => \nomeComponente|Mod0|auto_generated|divider|divider|op_5~9_sumout\,
	cout => \nomeComponente|Mod0|auto_generated|divider|divider|op_5~10\);

-- Location: MLABCELL_X18_Y1_N18
\nomeComponente|Mod0|auto_generated|divider|divider|op_5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_5~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \nomeComponente|Mod0|auto_generated|divider|divider|op_5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \nomeComponente|Mod0|auto_generated|divider|divider|op_5~10\,
	sumout => \nomeComponente|Mod0|auto_generated|divider|divider|op_5~1_sumout\);

-- Location: MLABCELL_X18_Y1_N24
\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[26]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[26]~15_combout\ = (!\nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~5_sumout\ & \nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~5_sumout\,
	datac => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~9_sumout\,
	combout => \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[26]~15_combout\);

-- Location: MLABCELL_X18_Y1_N48
\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[26]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[26]~16_combout\ = ( \CONTADOR|DOUT\(6) & ( \nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~5_sumout\,
	dataf => \CONTADOR|ALT_INV_DOUT\(6),
	combout => \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[26]~16_combout\);

-- Location: MLABCELL_X18_Y1_N51
\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[25]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[25]~21_combout\ = ( \nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~13_sumout\ & ( 
-- (!\nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~5_sumout\) # (\CONTADOR|DOUT\(5)) ) ) # ( !\nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~13_sumout\ & ( 
-- (\nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~5_sumout\ & \CONTADOR|DOUT\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~5_sumout\,
	datad => \CONTADOR|ALT_INV_DOUT\(5),
	dataf => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~13_sumout\,
	combout => \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[25]~21_combout\);

-- Location: MLABCELL_X18_Y1_N54
\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[24]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[24]~26_combout\ = ( \nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\ & ( 
-- (!\nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~5_sumout\) # (\CONTADOR|DOUT\(4)) ) ) # ( !\nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\ & ( 
-- (\nomeComponente|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~5_sumout\ & \CONTADOR|DOUT\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~5_sumout\,
	datac => \CONTADOR|ALT_INV_DOUT\(4),
	dataf => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~17_sumout\,
	combout => \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[24]~26_combout\);

-- Location: LABCELL_X19_Y1_N36
\nomeComponente|Mod0|auto_generated|divider|divider|op_6~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_6~30_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \nomeComponente|Mod0|auto_generated|divider|divider|op_6~30_cout\);

-- Location: LABCELL_X19_Y1_N39
\nomeComponente|Mod0|auto_generated|divider|divider|op_6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_6~9_sumout\ = SUM(( \CONTADOR|DOUT\(2) ) + ( VCC ) + ( \nomeComponente|Mod0|auto_generated|divider|divider|op_6~30_cout\ ))
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_6~10\ = CARRY(( \CONTADOR|DOUT\(2) ) + ( VCC ) + ( \nomeComponente|Mod0|auto_generated|divider|divider|op_6~30_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONTADOR|ALT_INV_DOUT\(2),
	cin => \nomeComponente|Mod0|auto_generated|divider|divider|op_6~30_cout\,
	sumout => \nomeComponente|Mod0|auto_generated|divider|divider|op_6~9_sumout\,
	cout => \nomeComponente|Mod0|auto_generated|divider|divider|op_6~10\);

-- Location: LABCELL_X19_Y1_N42
\nomeComponente|Mod0|auto_generated|divider|divider|op_6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_6~5_sumout\ = SUM(( GND ) + ( (!\nomeComponente|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ((\nomeComponente|Mod0|auto_generated|divider|divider|op_5~5_sumout\))) # 
-- (\nomeComponente|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (\CONTADOR|DOUT\(3))) ) + ( \nomeComponente|Mod0|auto_generated|divider|divider|op_6~10\ ))
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_6~6\ = CARRY(( GND ) + ( (!\nomeComponente|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ((\nomeComponente|Mod0|auto_generated|divider|divider|op_5~5_sumout\))) # 
-- (\nomeComponente|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (\CONTADOR|DOUT\(3))) ) + ( \nomeComponente|Mod0|auto_generated|divider|divider|op_6~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \CONTADOR|ALT_INV_DOUT\(3),
	dataf => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	cin => \nomeComponente|Mod0|auto_generated|divider|divider|op_6~10\,
	sumout => \nomeComponente|Mod0|auto_generated|divider|divider|op_6~5_sumout\,
	cout => \nomeComponente|Mod0|auto_generated|divider|divider|op_6~6\);

-- Location: LABCELL_X19_Y1_N45
\nomeComponente|Mod0|auto_generated|divider|divider|op_6~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_6~25_sumout\ = SUM(( VCC ) + ( (!\nomeComponente|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ((\nomeComponente|Mod0|auto_generated|divider|divider|op_5~21_sumout\))) # 
-- (\nomeComponente|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[24]~26_combout\)) ) + ( \nomeComponente|Mod0|auto_generated|divider|divider|op_6~6\ ))
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_6~26\ = CARRY(( VCC ) + ( (!\nomeComponente|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ((\nomeComponente|Mod0|auto_generated|divider|divider|op_5~21_sumout\))) # 
-- (\nomeComponente|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[24]~26_combout\)) ) + ( \nomeComponente|Mod0|auto_generated|divider|divider|op_6~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100010001000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[24]~26_combout\,
	datab => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	dataf => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\,
	cin => \nomeComponente|Mod0|auto_generated|divider|divider|op_6~6\,
	sumout => \nomeComponente|Mod0|auto_generated|divider|divider|op_6~25_sumout\,
	cout => \nomeComponente|Mod0|auto_generated|divider|divider|op_6~26\);

-- Location: LABCELL_X19_Y1_N48
\nomeComponente|Mod0|auto_generated|divider|divider|op_6~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_6~21_sumout\ = SUM(( GND ) + ( (!\nomeComponente|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ((\nomeComponente|Mod0|auto_generated|divider|divider|op_5~17_sumout\))) # 
-- (\nomeComponente|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[25]~21_combout\)) ) + ( \nomeComponente|Mod0|auto_generated|divider|divider|op_6~26\ ))
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_6~22\ = CARRY(( GND ) + ( (!\nomeComponente|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ((\nomeComponente|Mod0|auto_generated|divider|divider|op_5~17_sumout\))) # 
-- (\nomeComponente|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[25]~21_combout\)) ) + ( \nomeComponente|Mod0|auto_generated|divider|divider|op_6~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[25]~21_combout\,
	dataf => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\,
	cin => \nomeComponente|Mod0|auto_generated|divider|divider|op_6~26\,
	sumout => \nomeComponente|Mod0|auto_generated|divider|divider|op_6~21_sumout\,
	cout => \nomeComponente|Mod0|auto_generated|divider|divider|op_6~22\);

-- Location: LABCELL_X19_Y1_N51
\nomeComponente|Mod0|auto_generated|divider|divider|op_6~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_6~17_sumout\ = SUM(( (!\nomeComponente|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (\nomeComponente|Mod0|auto_generated|divider|divider|op_5~13_sumout\)) # 
-- (\nomeComponente|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (((\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[26]~16_combout\) # (\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[26]~15_combout\)))) ) + ( VCC ) + ( 
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_6~22\ ))
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_6~18\ = CARRY(( (!\nomeComponente|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (\nomeComponente|Mod0|auto_generated|divider|divider|op_5~13_sumout\)) # 
-- (\nomeComponente|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (((\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[26]~16_combout\) # (\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[26]~15_combout\)))) ) + ( VCC ) + ( 
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_6~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\,
	datab => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[26]~15_combout\,
	datad => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[26]~16_combout\,
	cin => \nomeComponente|Mod0|auto_generated|divider|divider|op_6~22\,
	sumout => \nomeComponente|Mod0|auto_generated|divider|divider|op_6~17_sumout\,
	cout => \nomeComponente|Mod0|auto_generated|divider|divider|op_6~18\);

-- Location: LABCELL_X19_Y1_N54
\nomeComponente|Mod0|auto_generated|divider|divider|op_6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_6~13_sumout\ = SUM(( VCC ) + ( (!\nomeComponente|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (((\nomeComponente|Mod0|auto_generated|divider|divider|op_5~9_sumout\)))) # 
-- (\nomeComponente|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (((\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[27]~10_combout\)) # (\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[27]~9_combout\))) ) + ( 
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_6~18\ ))
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_6~14\ = CARRY(( VCC ) + ( (!\nomeComponente|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (((\nomeComponente|Mod0|auto_generated|divider|divider|op_5~9_sumout\)))) # 
-- (\nomeComponente|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (((\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[27]~10_combout\)) # (\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[27]~9_combout\))) ) + ( 
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_6~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011000010000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[27]~9_combout\,
	datab => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[27]~10_combout\,
	dataf => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\,
	cin => \nomeComponente|Mod0|auto_generated|divider|divider|op_6~18\,
	sumout => \nomeComponente|Mod0|auto_generated|divider|divider|op_6~13_sumout\,
	cout => \nomeComponente|Mod0|auto_generated|divider|divider|op_6~14\);

-- Location: LABCELL_X19_Y1_N57
\nomeComponente|Mod0|auto_generated|divider|divider|op_6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_6~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \nomeComponente|Mod0|auto_generated|divider|divider|op_6~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \nomeComponente|Mod0|auto_generated|divider|divider|op_6~14\,
	sumout => \nomeComponente|Mod0|auto_generated|divider|divider|op_6~1_sumout\);

-- Location: LABCELL_X19_Y1_N33
\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[36]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[36]~8_combout\ = ( !\nomeComponente|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ( \nomeComponente|Mod0|auto_generated|divider|divider|op_5~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\,
	dataf => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[36]~8_combout\);

-- Location: LABCELL_X19_Y1_N21
\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[36]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[36]~11_combout\ = ( \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[27]~9_combout\ & ( \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[27]~10_combout\ & ( 
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_5~1_sumout\ ) ) ) # ( !\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[27]~9_combout\ & ( \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[27]~10_combout\ & ( 
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_5~1_sumout\ ) ) ) # ( \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[27]~9_combout\ & ( !\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[27]~10_combout\ & ( 
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_5~1_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datae => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[27]~9_combout\,
	dataf => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[27]~10_combout\,
	combout => \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[36]~11_combout\);

-- Location: LABCELL_X19_Y1_N27
\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[35]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[35]~17_combout\ = ( \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[26]~15_combout\ & ( (\nomeComponente|Mod0|auto_generated|divider|divider|op_5~1_sumout\) # 
-- (\nomeComponente|Mod0|auto_generated|divider|divider|op_5~13_sumout\) ) ) # ( !\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[26]~15_combout\ & ( (!\nomeComponente|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\nomeComponente|Mod0|auto_generated|divider|divider|op_5~13_sumout\)) # (\nomeComponente|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ((\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[26]~16_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\,
	datab => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[26]~16_combout\,
	dataf => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[26]~15_combout\,
	combout => \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[35]~17_combout\);

-- Location: LABCELL_X19_Y1_N3
\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[34]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[34]~20_combout\ = ( \nomeComponente|Mod0|auto_generated|divider|divider|op_5~17_sumout\ & ( !\nomeComponente|Mod0|auto_generated|divider|divider|op_5~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	dataf => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\,
	combout => \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[34]~20_combout\);

-- Location: LABCELL_X19_Y1_N6
\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[34]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[34]~22_combout\ = ( \nomeComponente|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ( \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[25]~21_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[25]~21_combout\,
	dataf => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[34]~22_combout\);

-- Location: LABCELL_X19_Y1_N0
\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[33]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[33]~27_combout\ = ( \nomeComponente|Mod0|auto_generated|divider|divider|op_5~21_sumout\ & ( (!\nomeComponente|Mod0|auto_generated|divider|divider|op_5~1_sumout\) # 
-- (\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[24]~26_combout\) ) ) # ( !\nomeComponente|Mod0|auto_generated|divider|divider|op_5~21_sumout\ & ( (\nomeComponente|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[24]~26_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[24]~26_combout\,
	dataf => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\,
	combout => \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[33]~27_combout\);

-- Location: LABCELL_X19_Y1_N15
\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[32]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[32]~0_combout\ = ( \CONTADOR|DOUT\(3) & ( \nomeComponente|Mod0|auto_generated|divider|divider|op_5~1_sumout\ ) ) # ( \CONTADOR|DOUT\(3) & ( 
-- !\nomeComponente|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ( \nomeComponente|Mod0|auto_generated|divider|divider|op_5~5_sumout\ ) ) ) # ( !\CONTADOR|DOUT\(3) & ( !\nomeComponente|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ( 
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_5~5_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	datae => \CONTADOR|ALT_INV_DOUT\(3),
	dataf => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[32]~0_combout\);

-- Location: LABCELL_X20_Y1_N30
\nomeComponente|Mod0|auto_generated|divider|divider|op_7~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_7~34_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \nomeComponente|Mod0|auto_generated|divider|divider|op_7~34_cout\);

-- Location: LABCELL_X20_Y1_N33
\nomeComponente|Mod0|auto_generated|divider|divider|op_7~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_7~13_sumout\ = SUM(( \CONTADOR|DOUT\(1) ) + ( VCC ) + ( \nomeComponente|Mod0|auto_generated|divider|divider|op_7~34_cout\ ))
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_7~14\ = CARRY(( \CONTADOR|DOUT\(1) ) + ( VCC ) + ( \nomeComponente|Mod0|auto_generated|divider|divider|op_7~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CONTADOR|ALT_INV_DOUT\(1),
	cin => \nomeComponente|Mod0|auto_generated|divider|divider|op_7~34_cout\,
	sumout => \nomeComponente|Mod0|auto_generated|divider|divider|op_7~13_sumout\,
	cout => \nomeComponente|Mod0|auto_generated|divider|divider|op_7~14\);

-- Location: LABCELL_X20_Y1_N36
\nomeComponente|Mod0|auto_generated|divider|divider|op_7~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_7~9_sumout\ = SUM(( GND ) + ( (!\nomeComponente|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ((\nomeComponente|Mod0|auto_generated|divider|divider|op_6~9_sumout\))) # 
-- (\nomeComponente|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (\CONTADOR|DOUT\(2))) ) + ( \nomeComponente|Mod0|auto_generated|divider|divider|op_7~14\ ))
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_7~10\ = CARRY(( GND ) + ( (!\nomeComponente|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ((\nomeComponente|Mod0|auto_generated|divider|divider|op_6~9_sumout\))) # 
-- (\nomeComponente|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (\CONTADOR|DOUT\(2))) ) + ( \nomeComponente|Mod0|auto_generated|divider|divider|op_7~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \CONTADOR|ALT_INV_DOUT\(2),
	dataf => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\,
	cin => \nomeComponente|Mod0|auto_generated|divider|divider|op_7~14\,
	sumout => \nomeComponente|Mod0|auto_generated|divider|divider|op_7~9_sumout\,
	cout => \nomeComponente|Mod0|auto_generated|divider|divider|op_7~10\);

-- Location: LABCELL_X20_Y1_N39
\nomeComponente|Mod0|auto_generated|divider|divider|op_7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_7~5_sumout\ = SUM(( (!\nomeComponente|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ((\nomeComponente|Mod0|auto_generated|divider|divider|op_6~5_sumout\))) # 
-- (\nomeComponente|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[32]~0_combout\)) ) + ( VCC ) + ( \nomeComponente|Mod0|auto_generated|divider|divider|op_7~10\ ))
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_7~6\ = CARRY(( (!\nomeComponente|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ((\nomeComponente|Mod0|auto_generated|divider|divider|op_6~5_sumout\))) # 
-- (\nomeComponente|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[32]~0_combout\)) ) + ( VCC ) + ( \nomeComponente|Mod0|auto_generated|divider|divider|op_7~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[32]~0_combout\,
	datad => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\,
	cin => \nomeComponente|Mod0|auto_generated|divider|divider|op_7~10\,
	sumout => \nomeComponente|Mod0|auto_generated|divider|divider|op_7~5_sumout\,
	cout => \nomeComponente|Mod0|auto_generated|divider|divider|op_7~6\);

-- Location: LABCELL_X20_Y1_N42
\nomeComponente|Mod0|auto_generated|divider|divider|op_7~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_7~29_sumout\ = SUM(( GND ) + ( (!\nomeComponente|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ((\nomeComponente|Mod0|auto_generated|divider|divider|op_6~25_sumout\))) # 
-- (\nomeComponente|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[33]~27_combout\)) ) + ( \nomeComponente|Mod0|auto_generated|divider|divider|op_7~6\ ))
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_7~30\ = CARRY(( GND ) + ( (!\nomeComponente|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ((\nomeComponente|Mod0|auto_generated|divider|divider|op_6~25_sumout\))) # 
-- (\nomeComponente|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[33]~27_combout\)) ) + ( \nomeComponente|Mod0|auto_generated|divider|divider|op_7~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[33]~27_combout\,
	dataf => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_6~25_sumout\,
	cin => \nomeComponente|Mod0|auto_generated|divider|divider|op_7~6\,
	sumout => \nomeComponente|Mod0|auto_generated|divider|divider|op_7~29_sumout\,
	cout => \nomeComponente|Mod0|auto_generated|divider|divider|op_7~30\);

-- Location: LABCELL_X20_Y1_N45
\nomeComponente|Mod0|auto_generated|divider|divider|op_7~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_7~25_sumout\ = SUM(( (!\nomeComponente|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (\nomeComponente|Mod0|auto_generated|divider|divider|op_6~21_sumout\)) # 
-- (\nomeComponente|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (((\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[34]~22_combout\) # (\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[34]~20_combout\)))) ) + ( VCC ) + ( 
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_7~30\ ))
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_7~26\ = CARRY(( (!\nomeComponente|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (\nomeComponente|Mod0|auto_generated|divider|divider|op_6~21_sumout\)) # 
-- (\nomeComponente|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (((\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[34]~22_combout\) # (\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[34]~20_combout\)))) ) + ( VCC ) + ( 
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_7~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\,
	datab => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[34]~20_combout\,
	datad => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[34]~22_combout\,
	cin => \nomeComponente|Mod0|auto_generated|divider|divider|op_7~30\,
	sumout => \nomeComponente|Mod0|auto_generated|divider|divider|op_7~25_sumout\,
	cout => \nomeComponente|Mod0|auto_generated|divider|divider|op_7~26\);

-- Location: LABCELL_X20_Y1_N48
\nomeComponente|Mod0|auto_generated|divider|divider|op_7~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_7~21_sumout\ = SUM(( VCC ) + ( (!\nomeComponente|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ((\nomeComponente|Mod0|auto_generated|divider|divider|op_6~17_sumout\))) # 
-- (\nomeComponente|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[35]~17_combout\)) ) + ( \nomeComponente|Mod0|auto_generated|divider|divider|op_7~26\ ))
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_7~22\ = CARRY(( VCC ) + ( (!\nomeComponente|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ((\nomeComponente|Mod0|auto_generated|divider|divider|op_6~17_sumout\))) # 
-- (\nomeComponente|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[35]~17_combout\)) ) + ( \nomeComponente|Mod0|auto_generated|divider|divider|op_7~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[35]~17_combout\,
	dataf => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\,
	cin => \nomeComponente|Mod0|auto_generated|divider|divider|op_7~26\,
	sumout => \nomeComponente|Mod0|auto_generated|divider|divider|op_7~21_sumout\,
	cout => \nomeComponente|Mod0|auto_generated|divider|divider|op_7~22\);

-- Location: LABCELL_X20_Y1_N51
\nomeComponente|Mod0|auto_generated|divider|divider|op_7~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_7~17_sumout\ = SUM(( (!\nomeComponente|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (\nomeComponente|Mod0|auto_generated|divider|divider|op_6~13_sumout\)) # 
-- (\nomeComponente|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (((\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[36]~11_combout\) # (\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[36]~8_combout\)))) ) + ( VCC ) + ( 
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_7~22\ ))
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_7~18\ = CARRY(( (!\nomeComponente|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (\nomeComponente|Mod0|auto_generated|divider|divider|op_6~13_sumout\)) # 
-- (\nomeComponente|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (((\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[36]~11_combout\) # (\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[36]~8_combout\)))) ) + ( VCC ) + ( 
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_7~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\,
	datab => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[36]~8_combout\,
	datad => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[36]~11_combout\,
	cin => \nomeComponente|Mod0|auto_generated|divider|divider|op_7~22\,
	sumout => \nomeComponente|Mod0|auto_generated|divider|divider|op_7~17_sumout\,
	cout => \nomeComponente|Mod0|auto_generated|divider|divider|op_7~18\);

-- Location: LABCELL_X20_Y1_N54
\nomeComponente|Mod0|auto_generated|divider|divider|op_7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_7~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \nomeComponente|Mod0|auto_generated|divider|divider|op_7~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \nomeComponente|Mod0|auto_generated|divider|divider|op_7~18\,
	sumout => \nomeComponente|Mod0|auto_generated|divider|divider|op_7~1_sumout\);

-- Location: LABCELL_X20_Y1_N15
\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[45]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[45]~7_combout\ = ( \nomeComponente|Mod0|auto_generated|divider|divider|op_6~13_sumout\ & ( !\nomeComponente|Mod0|auto_generated|divider|divider|op_6~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	dataf => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\,
	combout => \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[45]~7_combout\);

-- Location: LABCELL_X20_Y1_N27
\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[45]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[45]~12_combout\ = (\nomeComponente|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ((\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[36]~11_combout\) # 
-- (\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[36]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110011000000110011001100000011001100110000001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[36]~8_combout\,
	datad => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[36]~11_combout\,
	combout => \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[45]~12_combout\);

-- Location: LABCELL_X20_Y1_N24
\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[44]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[44]~14_combout\ = (!\nomeComponente|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & \nomeComponente|Mod0|auto_generated|divider|divider|op_6~17_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\,
	combout => \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[44]~14_combout\);

-- Location: LABCELL_X20_Y1_N9
\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[44]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[44]~18_combout\ = (\nomeComponente|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[35]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datad => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[35]~17_combout\,
	combout => \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[44]~18_combout\);

-- Location: LABCELL_X20_Y1_N0
\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[43]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[43]~23_combout\ = ( \nomeComponente|Mod0|auto_generated|divider|divider|op_6~21_sumout\ & ( \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[34]~20_combout\ ) ) # ( 
-- !\nomeComponente|Mod0|auto_generated|divider|divider|op_6~21_sumout\ & ( \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[34]~20_combout\ & ( \nomeComponente|Mod0|auto_generated|divider|divider|op_6~1_sumout\ ) ) ) # ( 
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_6~21_sumout\ & ( !\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[34]~20_combout\ & ( (!\nomeComponente|Mod0|auto_generated|divider|divider|op_6~1_sumout\) # 
-- (\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[34]~22_combout\) ) ) ) # ( !\nomeComponente|Mod0|auto_generated|divider|divider|op_6~21_sumout\ & ( !\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[34]~20_combout\ & ( 
-- (\nomeComponente|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[34]~22_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011110011111100111100110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[34]~22_combout\,
	datae => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\,
	dataf => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[34]~20_combout\,
	combout => \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[43]~23_combout\);

-- Location: LABCELL_X20_Y1_N21
\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[42]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[42]~25_combout\ = ( \nomeComponente|Mod0|auto_generated|divider|divider|op_6~25_sumout\ & ( !\nomeComponente|Mod0|auto_generated|divider|divider|op_6~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	dataf => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_6~25_sumout\,
	combout => \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[42]~25_combout\);

-- Location: LABCELL_X20_Y1_N6
\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[42]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[42]~28_combout\ = (\nomeComponente|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[33]~27_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[33]~27_combout\,
	combout => \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[42]~28_combout\);

-- Location: LABCELL_X20_Y1_N12
\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[41]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[41]~1_combout\ = ( \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[32]~0_combout\ & ( (\nomeComponente|Mod0|auto_generated|divider|divider|op_6~5_sumout\) # 
-- (\nomeComponente|Mod0|auto_generated|divider|divider|op_6~1_sumout\) ) ) # ( !\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[32]~0_combout\ & ( (!\nomeComponente|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_6~5_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datad => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\,
	dataf => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[32]~0_combout\,
	combout => \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[41]~1_combout\);

-- Location: LABCELL_X20_Y1_N18
\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[40]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[40]~3_combout\ = ( \CONTADOR|DOUT\(2) & ( (\nomeComponente|Mod0|auto_generated|divider|divider|op_6~9_sumout\) # (\nomeComponente|Mod0|auto_generated|divider|divider|op_6~1_sumout\) ) ) # ( 
-- !\CONTADOR|DOUT\(2) & ( (!\nomeComponente|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & \nomeComponente|Mod0|auto_generated|divider|divider|op_6~9_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\,
	dataf => \CONTADOR|ALT_INV_DOUT\(2),
	combout => \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[40]~3_combout\);

-- Location: LABCELL_X21_Y1_N12
\nomeComponente|Mod0|auto_generated|divider|divider|op_8~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_8~38_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \nomeComponente|Mod0|auto_generated|divider|divider|op_8~38_cout\);

-- Location: LABCELL_X21_Y1_N15
\nomeComponente|Mod0|auto_generated|divider|divider|op_8~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_8~17_sumout\ = SUM(( \CONTADOR|DOUT\(0) ) + ( VCC ) + ( \nomeComponente|Mod0|auto_generated|divider|divider|op_8~38_cout\ ))
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_8~18\ = CARRY(( \CONTADOR|DOUT\(0) ) + ( VCC ) + ( \nomeComponente|Mod0|auto_generated|divider|divider|op_8~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONTADOR|ALT_INV_DOUT\(0),
	cin => \nomeComponente|Mod0|auto_generated|divider|divider|op_8~38_cout\,
	sumout => \nomeComponente|Mod0|auto_generated|divider|divider|op_8~17_sumout\,
	cout => \nomeComponente|Mod0|auto_generated|divider|divider|op_8~18\);

-- Location: LABCELL_X21_Y1_N18
\nomeComponente|Mod0|auto_generated|divider|divider|op_8~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_8~13_sumout\ = SUM(( (!\nomeComponente|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ((\nomeComponente|Mod0|auto_generated|divider|divider|op_7~13_sumout\))) # 
-- (\nomeComponente|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (\CONTADOR|DOUT\(1))) ) + ( GND ) + ( \nomeComponente|Mod0|auto_generated|divider|divider|op_8~18\ ))
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_8~14\ = CARRY(( (!\nomeComponente|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ((\nomeComponente|Mod0|auto_generated|divider|divider|op_7~13_sumout\))) # 
-- (\nomeComponente|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (\CONTADOR|DOUT\(1))) ) + ( GND ) + ( \nomeComponente|Mod0|auto_generated|divider|divider|op_8~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \CONTADOR|ALT_INV_DOUT\(1),
	datad => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\,
	cin => \nomeComponente|Mod0|auto_generated|divider|divider|op_8~18\,
	sumout => \nomeComponente|Mod0|auto_generated|divider|divider|op_8~13_sumout\,
	cout => \nomeComponente|Mod0|auto_generated|divider|divider|op_8~14\);

-- Location: LABCELL_X21_Y1_N21
\nomeComponente|Mod0|auto_generated|divider|divider|op_8~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_8~9_sumout\ = SUM(( VCC ) + ( (!\nomeComponente|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ((\nomeComponente|Mod0|auto_generated|divider|divider|op_7~9_sumout\))) # 
-- (\nomeComponente|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[40]~3_combout\)) ) + ( \nomeComponente|Mod0|auto_generated|divider|divider|op_8~14\ ))
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_8~10\ = CARRY(( VCC ) + ( (!\nomeComponente|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ((\nomeComponente|Mod0|auto_generated|divider|divider|op_7~9_sumout\))) # 
-- (\nomeComponente|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[40]~3_combout\)) ) + ( \nomeComponente|Mod0|auto_generated|divider|divider|op_8~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[40]~3_combout\,
	dataf => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\,
	cin => \nomeComponente|Mod0|auto_generated|divider|divider|op_8~14\,
	sumout => \nomeComponente|Mod0|auto_generated|divider|divider|op_8~9_sumout\,
	cout => \nomeComponente|Mod0|auto_generated|divider|divider|op_8~10\);

-- Location: LABCELL_X21_Y1_N24
\nomeComponente|Mod0|auto_generated|divider|divider|op_8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_8~1_sumout\ = SUM(( GND ) + ( (!\nomeComponente|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ((\nomeComponente|Mod0|auto_generated|divider|divider|op_7~5_sumout\))) # 
-- (\nomeComponente|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[41]~1_combout\)) ) + ( \nomeComponente|Mod0|auto_generated|divider|divider|op_8~10\ ))
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_8~2\ = CARRY(( GND ) + ( (!\nomeComponente|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ((\nomeComponente|Mod0|auto_generated|divider|divider|op_7~5_sumout\))) # 
-- (\nomeComponente|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[41]~1_combout\)) ) + ( \nomeComponente|Mod0|auto_generated|divider|divider|op_8~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[41]~1_combout\,
	dataf => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_7~5_sumout\,
	cin => \nomeComponente|Mod0|auto_generated|divider|divider|op_8~10\,
	sumout => \nomeComponente|Mod0|auto_generated|divider|divider|op_8~1_sumout\,
	cout => \nomeComponente|Mod0|auto_generated|divider|divider|op_8~2\);

-- Location: LABCELL_X21_Y1_N27
\nomeComponente|Mod0|auto_generated|divider|divider|op_8~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_8~33_sumout\ = SUM(( (!\nomeComponente|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (((\nomeComponente|Mod0|auto_generated|divider|divider|op_7~29_sumout\)))) # 
-- (\nomeComponente|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (((\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[42]~28_combout\)) # (\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[42]~25_combout\))) ) + ( VCC ) + ( 
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_8~2\ ))
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_8~34\ = CARRY(( (!\nomeComponente|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (((\nomeComponente|Mod0|auto_generated|divider|divider|op_7~29_sumout\)))) # 
-- (\nomeComponente|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (((\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[42]~28_combout\)) # (\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[42]~25_combout\))) ) + ( VCC ) + ( 
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_8~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[42]~25_combout\,
	datac => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_7~29_sumout\,
	datad => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[42]~28_combout\,
	cin => \nomeComponente|Mod0|auto_generated|divider|divider|op_8~2\,
	sumout => \nomeComponente|Mod0|auto_generated|divider|divider|op_8~33_sumout\,
	cout => \nomeComponente|Mod0|auto_generated|divider|divider|op_8~34\);

-- Location: LABCELL_X21_Y1_N30
\nomeComponente|Mod0|auto_generated|divider|divider|op_8~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_8~29_sumout\ = SUM(( VCC ) + ( (!\nomeComponente|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ((\nomeComponente|Mod0|auto_generated|divider|divider|op_7~25_sumout\))) # 
-- (\nomeComponente|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[43]~23_combout\)) ) + ( \nomeComponente|Mod0|auto_generated|divider|divider|op_8~34\ ))
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_8~30\ = CARRY(( VCC ) + ( (!\nomeComponente|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ((\nomeComponente|Mod0|auto_generated|divider|divider|op_7~25_sumout\))) # 
-- (\nomeComponente|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[43]~23_combout\)) ) + ( \nomeComponente|Mod0|auto_generated|divider|divider|op_8~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[43]~23_combout\,
	dataf => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_7~25_sumout\,
	cin => \nomeComponente|Mod0|auto_generated|divider|divider|op_8~34\,
	sumout => \nomeComponente|Mod0|auto_generated|divider|divider|op_8~29_sumout\,
	cout => \nomeComponente|Mod0|auto_generated|divider|divider|op_8~30\);

-- Location: LABCELL_X21_Y1_N33
\nomeComponente|Mod0|auto_generated|divider|divider|op_8~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_8~25_sumout\ = SUM(( VCC ) + ( (!\nomeComponente|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (\nomeComponente|Mod0|auto_generated|divider|divider|op_7~21_sumout\)) # 
-- (\nomeComponente|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (((\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[44]~18_combout\) # (\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[44]~14_combout\)))) ) + ( 
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_8~30\ ))
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_8~26\ = CARRY(( VCC ) + ( (!\nomeComponente|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (\nomeComponente|Mod0|auto_generated|divider|divider|op_7~21_sumout\)) # 
-- (\nomeComponente|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (((\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[44]~18_combout\) # (\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[44]~14_combout\)))) ) + ( 
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_8~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110110001000100000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\,
	datac => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[44]~14_combout\,
	dataf => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[44]~18_combout\,
	cin => \nomeComponente|Mod0|auto_generated|divider|divider|op_8~30\,
	sumout => \nomeComponente|Mod0|auto_generated|divider|divider|op_8~25_sumout\,
	cout => \nomeComponente|Mod0|auto_generated|divider|divider|op_8~26\);

-- Location: LABCELL_X21_Y1_N36
\nomeComponente|Mod0|auto_generated|divider|divider|op_8~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_8~21_sumout\ = SUM(( (!\nomeComponente|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (((\nomeComponente|Mod0|auto_generated|divider|divider|op_7~17_sumout\)))) # 
-- (\nomeComponente|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (((\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[45]~12_combout\)) # (\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[45]~7_combout\))) ) + ( VCC ) + ( 
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_8~26\ ))
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_8~22\ = CARRY(( (!\nomeComponente|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (((\nomeComponente|Mod0|auto_generated|divider|divider|op_7~17_sumout\)))) # 
-- (\nomeComponente|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (((\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[45]~12_combout\)) # (\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[45]~7_combout\))) ) + ( VCC ) + ( 
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_8~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[45]~7_combout\,
	datac => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\,
	datad => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[45]~12_combout\,
	cin => \nomeComponente|Mod0|auto_generated|divider|divider|op_8~26\,
	sumout => \nomeComponente|Mod0|auto_generated|divider|divider|op_8~21_sumout\,
	cout => \nomeComponente|Mod0|auto_generated|divider|divider|op_8~22\);

-- Location: LABCELL_X21_Y1_N39
\nomeComponente|Mod0|auto_generated|divider|divider|op_8~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Mod0|auto_generated|divider|divider|op_8~5_sumout\ = SUM(( VCC ) + ( GND ) + ( \nomeComponente|Mod0|auto_generated|divider|divider|op_8~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \nomeComponente|Mod0|auto_generated|divider|divider|op_8~22\,
	sumout => \nomeComponente|Mod0|auto_generated|divider|divider|op_8~5_sumout\);

-- Location: LABCELL_X21_Y1_N51
\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[58]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[58]~4_combout\ = ( \nomeComponente|Mod0|auto_generated|divider|divider|op_7~9_sumout\ & ( (!\nomeComponente|Mod0|auto_generated|divider|divider|op_8~5_sumout\ & 
-- (((\nomeComponente|Mod0|auto_generated|divider|divider|op_8~9_sumout\)))) # (\nomeComponente|Mod0|auto_generated|divider|divider|op_8~5_sumout\ & ((!\nomeComponente|Mod0|auto_generated|divider|divider|op_7~1_sumout\) # 
-- ((\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[40]~3_combout\)))) ) ) # ( !\nomeComponente|Mod0|auto_generated|divider|divider|op_7~9_sumout\ & ( (!\nomeComponente|Mod0|auto_generated|divider|divider|op_8~5_sumout\ & 
-- (((\nomeComponente|Mod0|auto_generated|divider|divider|op_8~9_sumout\)))) # (\nomeComponente|Mod0|auto_generated|divider|divider|op_8~5_sumout\ & (\nomeComponente|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[40]~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101000000011100110100100011111011110010001111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_8~5_sumout\,
	datac => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[40]~3_combout\,
	datad => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_8~9_sumout\,
	dataf => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\,
	combout => \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[58]~4_combout\);

-- Location: LABCELL_X21_Y1_N54
\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[57]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[57]~5_combout\ = ( \CONTADOR|DOUT\(1) & ( (!\nomeComponente|Mod0|auto_generated|divider|divider|op_8~5_sumout\ & (\nomeComponente|Mod0|auto_generated|divider|divider|op_8~13_sumout\)) # 
-- (\nomeComponente|Mod0|auto_generated|divider|divider|op_8~5_sumout\ & (((\nomeComponente|Mod0|auto_generated|divider|divider|op_7~13_sumout\) # (\nomeComponente|Mod0|auto_generated|divider|divider|op_7~1_sumout\)))) ) ) # ( !\CONTADOR|DOUT\(1) & ( 
-- (!\nomeComponente|Mod0|auto_generated|divider|divider|op_8~5_sumout\ & (\nomeComponente|Mod0|auto_generated|divider|divider|op_8~13_sumout\)) # (\nomeComponente|Mod0|auto_generated|divider|divider|op_8~5_sumout\ & 
-- (((!\nomeComponente|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & \nomeComponente|Mod0|auto_generated|divider|divider|op_7~13_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110100010001000111010001000111011101110100011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_8~13_sumout\,
	datab => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_8~5_sumout\,
	datac => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datad => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\,
	dataf => \CONTADOR|ALT_INV_DOUT\(1),
	combout => \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[57]~5_combout\);

-- Location: LABCELL_X21_Y1_N57
\nomeComponente|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Equal0~1_combout\ = ( \nomeComponente|Mod0|auto_generated|divider|divider|op_8~25_sumout\ & ( !\nomeComponente|Mod0|auto_generated|divider|divider|op_8~5_sumout\ ) ) # ( !\nomeComponente|Mod0|auto_generated|divider|divider|op_8~25_sumout\ 
-- & ( (!\nomeComponente|Mod0|auto_generated|divider|divider|op_8~5_sumout\ & ((\nomeComponente|Mod0|auto_generated|divider|divider|op_8~33_sumout\) # (\nomeComponente|Mod0|auto_generated|divider|divider|op_8~29_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011001100000011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_8~5_sumout\,
	datac => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_8~29_sumout\,
	datad => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_8~33_sumout\,
	dataf => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_8~25_sumout\,
	combout => \nomeComponente|Equal0~1_combout\);

-- Location: LABCELL_X21_Y1_N0
\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[60]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[60]~29_combout\ = (!\nomeComponente|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (((!\nomeComponente|Mod0|auto_generated|divider|divider|op_7~29_sumout\)))) # 
-- (\nomeComponente|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (!\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[42]~25_combout\ & (!\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[42]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101001000000111010100100000011101010010000001110101001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[42]~25_combout\,
	datac => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[42]~28_combout\,
	datad => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_7~29_sumout\,
	combout => \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[60]~29_combout\);

-- Location: LABCELL_X21_Y1_N42
\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[63]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[63]~13_combout\ = ( \nomeComponente|Mod0|auto_generated|divider|divider|op_7~17_sumout\ & ( (\nomeComponente|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (!\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[45]~7_combout\ & !\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[45]~12_combout\)) ) ) # ( !\nomeComponente|Mod0|auto_generated|divider|divider|op_7~17_sumout\ & ( 
-- (!\nomeComponente|Mod0|auto_generated|divider|divider|op_7~1_sumout\) # ((!\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[45]~7_combout\ & !\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[45]~12_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101011101010111010101110101001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[45]~7_combout\,
	datac => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[45]~12_combout\,
	dataf => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\,
	combout => \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[63]~13_combout\);

-- Location: LABCELL_X21_Y1_N3
\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[61]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[61]~24_combout\ = ( \nomeComponente|Mod0|auto_generated|divider|divider|op_7~25_sumout\ & ( (!\nomeComponente|Mod0|auto_generated|divider|divider|op_7~1_sumout\) # 
-- (\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[43]~23_combout\) ) ) # ( !\nomeComponente|Mod0|auto_generated|divider|divider|op_7~25_sumout\ & ( (\nomeComponente|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[43]~23_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datad => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[43]~23_combout\,
	dataf => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_7~25_sumout\,
	combout => \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[61]~24_combout\);

-- Location: LABCELL_X21_Y1_N45
\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[62]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[62]~19_combout\ = ( \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[44]~14_combout\ & ( (!\nomeComponente|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- !\nomeComponente|Mod0|auto_generated|divider|divider|op_7~21_sumout\) ) ) # ( !\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[44]~14_combout\ & ( (!\nomeComponente|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- ((!\nomeComponente|Mod0|auto_generated|divider|divider|op_7~21_sumout\))) # (\nomeComponente|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (!\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[44]~18_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101001010000111110100101000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[44]~18_combout\,
	datad => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\,
	dataf => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[44]~14_combout\,
	combout => \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[62]~19_combout\);

-- Location: LABCELL_X21_Y1_N6
\nomeComponente|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Equal0~0_combout\ = ( \nomeComponente|Mod0|auto_generated|divider|divider|op_8~21_sumout\ & ( \nomeComponente|Mod0|auto_generated|divider|divider|op_8~5_sumout\ & ( 
-- (\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[60]~29_combout\ & (\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[63]~13_combout\ & (!\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[61]~24_combout\ & 
-- \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[62]~19_combout\))) ) ) ) # ( !\nomeComponente|Mod0|auto_generated|divider|divider|op_8~21_sumout\ & ( \nomeComponente|Mod0|auto_generated|divider|divider|op_8~5_sumout\ & ( 
-- (\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[60]~29_combout\ & (\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[63]~13_combout\ & (!\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[61]~24_combout\ & 
-- \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[62]~19_combout\))) ) ) ) # ( !\nomeComponente|Mod0|auto_generated|divider|divider|op_8~21_sumout\ & ( !\nomeComponente|Mod0|auto_generated|divider|divider|op_8~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[60]~29_combout\,
	datab => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[63]~13_combout\,
	datac => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[61]~24_combout\,
	datad => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[62]~19_combout\,
	datae => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_8~21_sumout\,
	dataf => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_8~5_sumout\,
	combout => \nomeComponente|Equal0~0_combout\);

-- Location: LABCELL_X21_Y1_N48
\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[59]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[59]~2_combout\ = ( \nomeComponente|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( (!\nomeComponente|Mod0|auto_generated|divider|divider|op_8~5_sumout\) # 
-- ((!\nomeComponente|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (\nomeComponente|Mod0|auto_generated|divider|divider|op_7~5_sumout\)) # (\nomeComponente|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- ((\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[41]~1_combout\)))) ) ) # ( !\nomeComponente|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( (\nomeComponente|Mod0|auto_generated|divider|divider|op_8~5_sumout\ & 
-- ((!\nomeComponente|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (\nomeComponente|Mod0|auto_generated|divider|divider|op_7~5_sumout\)) # (\nomeComponente|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- ((\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[41]~1_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011000000100001001111001110110111111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_8~5_sumout\,
	datac => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_7~5_sumout\,
	datad => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[41]~1_combout\,
	dataf => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	combout => \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[59]~2_combout\);

-- Location: LABCELL_X26_Y1_N24
\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[56]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[56]~6_combout\ = ( \nomeComponente|Mod0|auto_generated|divider|divider|op_8~17_sumout\ & ( (!\nomeComponente|Mod0|auto_generated|divider|divider|op_8~5_sumout\) # (\CONTADOR|DOUT\(0)) ) ) # ( 
-- !\nomeComponente|Mod0|auto_generated|divider|divider|op_8~17_sumout\ & ( (\CONTADOR|DOUT\(0) & \nomeComponente|Mod0|auto_generated|divider|divider|op_8~5_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONTADOR|ALT_INV_DOUT\(0),
	datac => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_8~5_sumout\,
	dataf => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_op_8~17_sumout\,
	combout => \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[56]~6_combout\);

-- Location: LABCELL_X26_Y1_N18
\nomeComponente|saida_UNIDADE_7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|saida_UNIDADE_7seg[0]~0_combout\ = ( \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[59]~2_combout\ & ( \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[56]~6_combout\ & ( ((!\nomeComponente|Equal0~0_combout\) # 
-- (!\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[58]~4_combout\ $ (!\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[57]~5_combout\))) # (\nomeComponente|Equal0~1_combout\) ) ) ) # ( 
-- !\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[59]~2_combout\ & ( \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[56]~6_combout\ & ( ((!\nomeComponente|Equal0~0_combout\) # 
-- ((!\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[58]~4_combout\ & !\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[57]~5_combout\))) # (\nomeComponente|Equal0~1_combout\) ) ) ) # ( 
-- \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[59]~2_combout\ & ( !\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[56]~6_combout\ & ( (!\nomeComponente|Equal0~0_combout\) # (\nomeComponente|Equal0~1_combout\) ) ) ) # ( 
-- !\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[59]~2_combout\ & ( !\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[56]~6_combout\ & ( ((!\nomeComponente|Equal0~0_combout\) # 
-- ((\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[58]~4_combout\ & !\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[57]~5_combout\))) # (\nomeComponente|Equal0~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101001111111111110000111111111111100011111111111101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[58]~4_combout\,
	datab => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[57]~5_combout\,
	datac => \nomeComponente|ALT_INV_Equal0~1_combout\,
	datad => \nomeComponente|ALT_INV_Equal0~0_combout\,
	datae => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[59]~2_combout\,
	dataf => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[56]~6_combout\,
	combout => \nomeComponente|saida_UNIDADE_7seg[0]~0_combout\);

-- Location: LABCELL_X26_Y1_N36
\nomeComponente|saida_UNIDADE_7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|saida_UNIDADE_7seg[1]~1_combout\ = ( \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[59]~2_combout\ & ( \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[56]~6_combout\ & ( ((!\nomeComponente|Equal0~0_combout\) # 
-- (\nomeComponente|Equal0~1_combout\)) # (\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[57]~5_combout\) ) ) ) # ( !\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[59]~2_combout\ & ( 
-- \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[56]~6_combout\ & ( ((!\nomeComponente|Equal0~0_combout\) # ((\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[58]~4_combout\ & 
-- !\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[57]~5_combout\))) # (\nomeComponente|Equal0~1_combout\) ) ) ) # ( \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[59]~2_combout\ & ( 
-- !\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[56]~6_combout\ & ( ((!\nomeComponente|Equal0~0_combout\) # (\nomeComponente|Equal0~1_combout\)) # (\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[58]~4_combout\) ) ) ) # ( 
-- !\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[59]~2_combout\ & ( !\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[56]~6_combout\ & ( ((!\nomeComponente|Equal0~0_combout\) # 
-- ((\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[58]~4_combout\ & \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[57]~5_combout\))) # (\nomeComponente|Equal0~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100011111111111110101111111111111010011111111111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[58]~4_combout\,
	datab => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[57]~5_combout\,
	datac => \nomeComponente|ALT_INV_Equal0~1_combout\,
	datad => \nomeComponente|ALT_INV_Equal0~0_combout\,
	datae => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[59]~2_combout\,
	dataf => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[56]~6_combout\,
	combout => \nomeComponente|saida_UNIDADE_7seg[1]~1_combout\);

-- Location: LABCELL_X26_Y1_N6
\nomeComponente|saida_UNIDADE_7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|saida_UNIDADE_7seg[2]~2_combout\ = ( \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[59]~2_combout\ & ( \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[56]~6_combout\ & ( ((!\nomeComponente|Equal0~0_combout\) # 
-- ((\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[58]~4_combout\ & \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[57]~5_combout\))) # (\nomeComponente|Equal0~1_combout\) ) ) ) # ( 
-- !\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[59]~2_combout\ & ( \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[56]~6_combout\ & ( (!\nomeComponente|Equal0~0_combout\) # (\nomeComponente|Equal0~1_combout\) ) ) ) # ( 
-- \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[59]~2_combout\ & ( !\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[56]~6_combout\ & ( ((!\nomeComponente|Equal0~0_combout\) # (\nomeComponente|Equal0~1_combout\)) # 
-- (\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[58]~4_combout\) ) ) ) # ( !\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[59]~2_combout\ & ( !\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[56]~6_combout\ & ( 
-- ((!\nomeComponente|Equal0~0_combout\) # ((!\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[58]~4_combout\ & \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[57]~5_combout\))) # (\nomeComponente|Equal0~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100101111111111110101111111111111000011111111111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[58]~4_combout\,
	datab => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[57]~5_combout\,
	datac => \nomeComponente|ALT_INV_Equal0~1_combout\,
	datad => \nomeComponente|ALT_INV_Equal0~0_combout\,
	datae => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[59]~2_combout\,
	dataf => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[56]~6_combout\,
	combout => \nomeComponente|saida_UNIDADE_7seg[2]~2_combout\);

-- Location: LABCELL_X26_Y1_N48
\nomeComponente|saida_UNIDADE_7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|saida_UNIDADE_7seg[3]~3_combout\ = ( \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[59]~2_combout\ & ( \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[56]~6_combout\ & ( ((!\nomeComponente|Equal0~0_combout\) # 
-- ((\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[58]~4_combout\ & \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[57]~5_combout\))) # (\nomeComponente|Equal0~1_combout\) ) ) ) # ( 
-- !\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[59]~2_combout\ & ( \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[56]~6_combout\ & ( ((!\nomeComponente|Equal0~0_combout\) # 
-- (!\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[58]~4_combout\ $ (\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[57]~5_combout\))) # (\nomeComponente|Equal0~1_combout\) ) ) ) # ( 
-- \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[59]~2_combout\ & ( !\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[56]~6_combout\ & ( ((!\nomeComponente|Equal0~0_combout\) # 
-- ((!\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[58]~4_combout\ & \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[57]~5_combout\))) # (\nomeComponente|Equal0~1_combout\) ) ) ) # ( 
-- !\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[59]~2_combout\ & ( !\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[56]~6_combout\ & ( ((!\nomeComponente|Equal0~0_combout\) # 
-- ((\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[58]~4_combout\ & !\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[57]~5_combout\))) # (\nomeComponente|Equal0~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101001111111111110010111111111111100111111111111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[58]~4_combout\,
	datab => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[57]~5_combout\,
	datac => \nomeComponente|ALT_INV_Equal0~1_combout\,
	datad => \nomeComponente|ALT_INV_Equal0~0_combout\,
	datae => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[59]~2_combout\,
	dataf => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[56]~6_combout\,
	combout => \nomeComponente|saida_UNIDADE_7seg[3]~3_combout\);

-- Location: LABCELL_X26_Y1_N30
\nomeComponente|saida_UNIDADE_7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|saida_UNIDADE_7seg[4]~4_combout\ = ( \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[59]~2_combout\ & ( \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[56]~6_combout\ & ( ((!\nomeComponente|Equal0~0_combout\) # 
-- ((!\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[58]~4_combout\ & !\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[57]~5_combout\))) # (\nomeComponente|Equal0~1_combout\) ) ) ) # ( 
-- !\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[59]~2_combout\ & ( \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[56]~6_combout\ ) ) # ( \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[59]~2_combout\ & ( 
-- !\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[56]~6_combout\ & ( (!\nomeComponente|Equal0~0_combout\) # (\nomeComponente|Equal0~1_combout\) ) ) ) # ( !\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[59]~2_combout\ & ( 
-- !\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[56]~6_combout\ & ( ((!\nomeComponente|Equal0~0_combout\) # ((\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[58]~4_combout\ & 
-- !\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[57]~5_combout\))) # (\nomeComponente|Equal0~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101001111111111110000111111111111111111111111111110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[58]~4_combout\,
	datab => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[57]~5_combout\,
	datac => \nomeComponente|ALT_INV_Equal0~1_combout\,
	datad => \nomeComponente|ALT_INV_Equal0~0_combout\,
	datae => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[59]~2_combout\,
	dataf => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[56]~6_combout\,
	combout => \nomeComponente|saida_UNIDADE_7seg[4]~4_combout\);

-- Location: LABCELL_X26_Y1_N12
\nomeComponente|saida_UNIDADE_7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|saida_UNIDADE_7seg[5]~5_combout\ = ( \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[59]~2_combout\ & ( \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[56]~6_combout\ & ( ((!\nomeComponente|Equal0~0_combout\) # 
-- ((\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[58]~4_combout\ & !\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[57]~5_combout\))) # (\nomeComponente|Equal0~1_combout\) ) ) ) # ( 
-- !\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[59]~2_combout\ & ( \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[56]~6_combout\ & ( (!\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[58]~4_combout\) # 
-- (((!\nomeComponente|Equal0~0_combout\) # (\nomeComponente|Equal0~1_combout\)) # (\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[57]~5_combout\)) ) ) ) # ( \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[59]~2_combout\ & ( 
-- !\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[56]~6_combout\ & ( (!\nomeComponente|Equal0~0_combout\) # (\nomeComponente|Equal0~1_combout\) ) ) ) # ( !\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[59]~2_combout\ & ( 
-- !\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[56]~6_combout\ & ( ((!\nomeComponente|Equal0~0_combout\) # ((!\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[58]~4_combout\ & 
-- \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[57]~5_combout\))) # (\nomeComponente|Equal0~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100101111111111110000111111111111101111111111111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[58]~4_combout\,
	datab => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[57]~5_combout\,
	datac => \nomeComponente|ALT_INV_Equal0~1_combout\,
	datad => \nomeComponente|ALT_INV_Equal0~0_combout\,
	datae => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[59]~2_combout\,
	dataf => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[56]~6_combout\,
	combout => \nomeComponente|saida_UNIDADE_7seg[5]~5_combout\);

-- Location: LABCELL_X26_Y1_N42
\nomeComponente|saida_UNIDADE_7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|saida_UNIDADE_7seg[6]~6_combout\ = ( \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[59]~2_combout\ & ( \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[56]~6_combout\ & ( (!\nomeComponente|Equal0~0_combout\) # 
-- (\nomeComponente|Equal0~1_combout\) ) ) ) # ( !\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[59]~2_combout\ & ( \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[56]~6_combout\ & ( ((!\nomeComponente|Equal0~0_combout\) # 
-- (!\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[58]~4_combout\ $ (\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[57]~5_combout\))) # (\nomeComponente|Equal0~1_combout\) ) ) ) # ( 
-- \nomeComponente|Mod0|auto_generated|divider|divider|StageOut[59]~2_combout\ & ( !\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[56]~6_combout\ & ( ((!\nomeComponente|Equal0~0_combout\) # 
-- ((\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[58]~4_combout\ & !\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[57]~5_combout\))) # (\nomeComponente|Equal0~1_combout\) ) ) ) # ( 
-- !\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[59]~2_combout\ & ( !\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[56]~6_combout\ & ( ((!\nomeComponente|Equal0~0_combout\) # 
-- ((!\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[58]~4_combout\ & !\nomeComponente|Mod0|auto_generated|divider|divider|StageOut[57]~5_combout\))) # (\nomeComponente|Equal0~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110001111111111110100111111111111100111111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[58]~4_combout\,
	datab => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[57]~5_combout\,
	datac => \nomeComponente|ALT_INV_Equal0~1_combout\,
	datad => \nomeComponente|ALT_INV_Equal0~0_combout\,
	datae => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[59]~2_combout\,
	dataf => \nomeComponente|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[56]~6_combout\,
	combout => \nomeComponente|saida_UNIDADE_7seg[6]~6_combout\);

-- Location: LABCELL_X25_Y1_N30
\nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\ = SUM(( \CONTADOR|DOUT\(4) ) + ( !VCC ) + ( !VCC ))
-- \nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~18\ = CARRY(( \CONTADOR|DOUT\(4) ) + ( !VCC ) + ( !VCC ))
-- \nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~19\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \CONTADOR|ALT_INV_DOUT\(4),
	cin => GND,
	sharein => GND,
	sumout => \nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\,
	cout => \nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~18\,
	shareout => \nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~19\);

-- Location: LABCELL_X25_Y1_N33
\nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~13_sumout\ = SUM(( \CONTADOR|DOUT\(5) ) + ( \nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~19\ ) + ( 
-- \nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~18\ ))
-- \nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~14\ = CARRY(( \CONTADOR|DOUT\(5) ) + ( \nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~19\ ) + ( 
-- \nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~18\ ))
-- \nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~15\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \CONTADOR|ALT_INV_DOUT\(5),
	cin => \nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~18\,
	sharein => \nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~19\,
	sumout => \nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~13_sumout\,
	cout => \nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~14\,
	shareout => \nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~15\);

-- Location: LABCELL_X25_Y1_N36
\nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\ = SUM(( !\CONTADOR|DOUT\(6) ) + ( \nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~15\ ) + ( 
-- \nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~14\ ))
-- \nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~10\ = CARRY(( !\CONTADOR|DOUT\(6) ) + ( \nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~15\ ) + ( 
-- \nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~14\ ))
-- \nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~11\ = SHARE(\CONTADOR|DOUT\(6))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111000011110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \CONTADOR|ALT_INV_DOUT\(6),
	cin => \nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~14\,
	sharein => \nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~15\,
	sumout => \nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\,
	cout => \nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~10\,
	shareout => \nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~11\);

-- Location: LABCELL_X25_Y1_N39
\nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_sumout\ = SUM(( \CONTADOR|DOUT\(7) ) + ( \nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~11\ ) + ( 
-- \nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~10\ ))
-- \nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ = CARRY(( \CONTADOR|DOUT\(7) ) + ( \nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~11\ ) + ( 
-- \nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~10\ ))
-- \nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \CONTADOR|ALT_INV_DOUT\(7),
	cin => \nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~10\,
	sharein => \nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~11\,
	sumout => \nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_sumout\,
	cout => \nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\,
	shareout => \nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\);

-- Location: LABCELL_X25_Y1_N42
\nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ = SUM(( VCC ) + ( \nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ ) + ( 
-- \nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\,
	sharein => \nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\,
	sumout => \nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\);

-- Location: LABCELL_X25_Y1_N24
\nomeComponente|Div0|auto_generated|divider|divider|StageOut[18]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Div0|auto_generated|divider|divider|StageOut[18]~0_combout\ = ( \nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_sumout\ & ( 
-- !\nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	dataf => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~5_sumout\,
	combout => \nomeComponente|Div0|auto_generated|divider|divider|StageOut[18]~0_combout\);

-- Location: LABCELL_X19_Y1_N30
\nomeComponente|Div0|auto_generated|divider|divider|StageOut[18]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Div0|auto_generated|divider|divider|StageOut[18]~1_combout\ = ( \nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( \CONTADOR|DOUT\(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CONTADOR|ALT_INV_DOUT\(7),
	dataf => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \nomeComponente|Div0|auto_generated|divider|divider|StageOut[18]~1_combout\);

-- Location: LABCELL_X25_Y1_N27
\nomeComponente|Div0|auto_generated|divider|divider|StageOut[16]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Div0|auto_generated|divider|divider|StageOut[16]~5_combout\ = ( \nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~13_sumout\ & ( 
-- !\nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	dataf => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~13_sumout\,
	combout => \nomeComponente|Div0|auto_generated|divider|divider|StageOut[16]~5_combout\);

-- Location: LABCELL_X25_Y1_N6
\nomeComponente|Div0|auto_generated|divider|divider|StageOut[16]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Div0|auto_generated|divider|divider|StageOut[16]~6_combout\ = (\nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & \CONTADOR|DOUT\(5))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datac => \CONTADOR|ALT_INV_DOUT\(5),
	combout => \nomeComponente|Div0|auto_generated|divider|divider|StageOut[16]~6_combout\);

-- Location: LABCELL_X24_Y1_N0
\nomeComponente|Div0|auto_generated|divider|divider|op_5~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Div0|auto_generated|divider|divider|op_5~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \nomeComponente|Div0|auto_generated|divider|divider|op_5~26_cout\);

-- Location: LABCELL_X24_Y1_N3
\nomeComponente|Div0|auto_generated|divider|divider|op_5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Div0|auto_generated|divider|divider|op_5~21_sumout\ = SUM(( \CONTADOR|DOUT\(3) ) + ( VCC ) + ( \nomeComponente|Div0|auto_generated|divider|divider|op_5~26_cout\ ))
-- \nomeComponente|Div0|auto_generated|divider|divider|op_5~22\ = CARRY(( \CONTADOR|DOUT\(3) ) + ( VCC ) + ( \nomeComponente|Div0|auto_generated|divider|divider|op_5~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CONTADOR|ALT_INV_DOUT\(3),
	cin => \nomeComponente|Div0|auto_generated|divider|divider|op_5~26_cout\,
	sumout => \nomeComponente|Div0|auto_generated|divider|divider|op_5~21_sumout\,
	cout => \nomeComponente|Div0|auto_generated|divider|divider|op_5~22\);

-- Location: LABCELL_X24_Y1_N6
\nomeComponente|Div0|auto_generated|divider|divider|op_5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Div0|auto_generated|divider|divider|op_5~17_sumout\ = SUM(( GND ) + ( (!\nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & 
-- ((\nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\))) # (\nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (\CONTADOR|DOUT\(4))) ) + ( 
-- \nomeComponente|Div0|auto_generated|divider|divider|op_5~22\ ))
-- \nomeComponente|Div0|auto_generated|divider|divider|op_5~18\ = CARRY(( GND ) + ( (!\nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & 
-- ((\nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\))) # (\nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (\CONTADOR|DOUT\(4))) ) + ( 
-- \nomeComponente|Div0|auto_generated|divider|divider|op_5~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CONTADOR|ALT_INV_DOUT\(4),
	datac => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	dataf => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~17_sumout\,
	cin => \nomeComponente|Div0|auto_generated|divider|divider|op_5~22\,
	sumout => \nomeComponente|Div0|auto_generated|divider|divider|op_5~17_sumout\,
	cout => \nomeComponente|Div0|auto_generated|divider|divider|op_5~18\);

-- Location: LABCELL_X24_Y1_N9
\nomeComponente|Div0|auto_generated|divider|divider|op_5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Div0|auto_generated|divider|divider|op_5~13_sumout\ = SUM(( (\nomeComponente|Div0|auto_generated|divider|divider|StageOut[16]~6_combout\) # (\nomeComponente|Div0|auto_generated|divider|divider|StageOut[16]~5_combout\) ) + ( VCC ) + ( 
-- \nomeComponente|Div0|auto_generated|divider|divider|op_5~18\ ))
-- \nomeComponente|Div0|auto_generated|divider|divider|op_5~14\ = CARRY(( (\nomeComponente|Div0|auto_generated|divider|divider|StageOut[16]~6_combout\) # (\nomeComponente|Div0|auto_generated|divider|divider|StageOut[16]~5_combout\) ) + ( VCC ) + ( 
-- \nomeComponente|Div0|auto_generated|divider|divider|op_5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~5_combout\,
	datad => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~6_combout\,
	cin => \nomeComponente|Div0|auto_generated|divider|divider|op_5~18\,
	sumout => \nomeComponente|Div0|auto_generated|divider|divider|op_5~13_sumout\,
	cout => \nomeComponente|Div0|auto_generated|divider|divider|op_5~14\);

-- Location: LABCELL_X24_Y1_N12
\nomeComponente|Div0|auto_generated|divider|divider|op_5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Div0|auto_generated|divider|divider|op_5~9_sumout\ = SUM(( (!\nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\))) 
-- # (\nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (\CONTADOR|DOUT\(6))) ) + ( GND ) + ( \nomeComponente|Div0|auto_generated|divider|divider|op_5~14\ ))
-- \nomeComponente|Div0|auto_generated|divider|divider|op_5~10\ = CARRY(( (!\nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\))) # 
-- (\nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (\CONTADOR|DOUT\(6))) ) + ( GND ) + ( \nomeComponente|Div0|auto_generated|divider|divider|op_5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONTADOR|ALT_INV_DOUT\(6),
	datab => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~9_sumout\,
	datac => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	cin => \nomeComponente|Div0|auto_generated|divider|divider|op_5~14\,
	sumout => \nomeComponente|Div0|auto_generated|divider|divider|op_5~9_sumout\,
	cout => \nomeComponente|Div0|auto_generated|divider|divider|op_5~10\);

-- Location: LABCELL_X24_Y1_N15
\nomeComponente|Div0|auto_generated|divider|divider|op_5~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Div0|auto_generated|divider|divider|op_5~6_cout\ = CARRY(( VCC ) + ( (\nomeComponente|Div0|auto_generated|divider|divider|StageOut[18]~1_combout\) # (\nomeComponente|Div0|auto_generated|divider|divider|StageOut[18]~0_combout\) ) + ( 
-- \nomeComponente|Div0|auto_generated|divider|divider|op_5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_StageOut[18]~0_combout\,
	dataf => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_StageOut[18]~1_combout\,
	cin => \nomeComponente|Div0|auto_generated|divider|divider|op_5~10\,
	cout => \nomeComponente|Div0|auto_generated|divider|divider|op_5~6_cout\);

-- Location: LABCELL_X24_Y1_N18
\nomeComponente|Div0|auto_generated|divider|divider|op_5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Div0|auto_generated|divider|divider|op_5~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \nomeComponente|Div0|auto_generated|divider|divider|op_5~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \nomeComponente|Div0|auto_generated|divider|divider|op_5~6_cout\,
	sumout => \nomeComponente|Div0|auto_generated|divider|divider|op_5~1_sumout\);

-- Location: LABCELL_X24_Y1_N57
\nomeComponente|Div0|auto_generated|divider|divider|StageOut[22]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Div0|auto_generated|divider|divider|StageOut[22]~4_combout\ = (!\nomeComponente|Div0|auto_generated|divider|divider|op_5~1_sumout\ & \nomeComponente|Div0|auto_generated|divider|divider|op_5~13_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\,
	combout => \nomeComponente|Div0|auto_generated|divider|divider|StageOut[22]~4_combout\);

-- Location: LABCELL_X24_Y1_N51
\nomeComponente|Div0|auto_generated|divider|divider|StageOut[17]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Div0|auto_generated|divider|divider|StageOut[17]~2_combout\ = ( !\nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( 
-- \nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~9_sumout\,
	dataf => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \nomeComponente|Div0|auto_generated|divider|divider|StageOut[17]~2_combout\);

-- Location: LABCELL_X25_Y1_N21
\nomeComponente|Div0|auto_generated|divider|divider|StageOut[17]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Div0|auto_generated|divider|divider|StageOut[17]~3_combout\ = (\nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & \CONTADOR|DOUT\(6))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datad => \CONTADOR|ALT_INV_DOUT\(6),
	combout => \nomeComponente|Div0|auto_generated|divider|divider|StageOut[17]~3_combout\);

-- Location: LABCELL_X25_Y1_N57
\nomeComponente|Div0|auto_generated|divider|divider|StageOut[16]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Div0|auto_generated|divider|divider|StageOut[16]~7_combout\ = (\nomeComponente|Div0|auto_generated|divider|divider|StageOut[16]~6_combout\) # (\nomeComponente|Div0|auto_generated|divider|divider|StageOut[16]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~5_combout\,
	datac => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~6_combout\,
	combout => \nomeComponente|Div0|auto_generated|divider|divider|StageOut[16]~7_combout\);

-- Location: LABCELL_X25_Y1_N54
\nomeComponente|Div0|auto_generated|divider|divider|StageOut[15]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Div0|auto_generated|divider|divider|StageOut[15]~10_combout\ = ( \nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\ & ( 
-- (!\nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\) # (\CONTADOR|DOUT\(4)) ) ) # ( !\nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\ & ( (\CONTADOR|DOUT\(4) & 
-- \nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CONTADOR|ALT_INV_DOUT\(4),
	datad => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	dataf => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~17_sumout\,
	combout => \nomeComponente|Div0|auto_generated|divider|divider|StageOut[15]~10_combout\);

-- Location: LABCELL_X24_Y1_N24
\nomeComponente|Div0|auto_generated|divider|divider|op_6~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Div0|auto_generated|divider|divider|op_6~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \nomeComponente|Div0|auto_generated|divider|divider|op_6~26_cout\);

-- Location: LABCELL_X24_Y1_N27
\nomeComponente|Div0|auto_generated|divider|divider|op_6~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Div0|auto_generated|divider|divider|op_6~21_sumout\ = SUM(( \CONTADOR|DOUT\(2) ) + ( VCC ) + ( \nomeComponente|Div0|auto_generated|divider|divider|op_6~26_cout\ ))
-- \nomeComponente|Div0|auto_generated|divider|divider|op_6~22\ = CARRY(( \CONTADOR|DOUT\(2) ) + ( VCC ) + ( \nomeComponente|Div0|auto_generated|divider|divider|op_6~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONTADOR|ALT_INV_DOUT\(2),
	cin => \nomeComponente|Div0|auto_generated|divider|divider|op_6~26_cout\,
	sumout => \nomeComponente|Div0|auto_generated|divider|divider|op_6~21_sumout\,
	cout => \nomeComponente|Div0|auto_generated|divider|divider|op_6~22\);

-- Location: LABCELL_X24_Y1_N30
\nomeComponente|Div0|auto_generated|divider|divider|op_6~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Div0|auto_generated|divider|divider|op_6~17_sumout\ = SUM(( (!\nomeComponente|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\nomeComponente|Div0|auto_generated|divider|divider|op_5~21_sumout\))) # 
-- (\nomeComponente|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\CONTADOR|DOUT\(3))) ) + ( GND ) + ( \nomeComponente|Div0|auto_generated|divider|divider|op_6~22\ ))
-- \nomeComponente|Div0|auto_generated|divider|divider|op_6~18\ = CARRY(( (!\nomeComponente|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\nomeComponente|Div0|auto_generated|divider|divider|op_5~21_sumout\))) # 
-- (\nomeComponente|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\CONTADOR|DOUT\(3))) ) + ( GND ) + ( \nomeComponente|Div0|auto_generated|divider|divider|op_6~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datab => \CONTADOR|ALT_INV_DOUT\(3),
	datad => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\,
	cin => \nomeComponente|Div0|auto_generated|divider|divider|op_6~22\,
	sumout => \nomeComponente|Div0|auto_generated|divider|divider|op_6~17_sumout\,
	cout => \nomeComponente|Div0|auto_generated|divider|divider|op_6~18\);

-- Location: LABCELL_X24_Y1_N33
\nomeComponente|Div0|auto_generated|divider|divider|op_6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Div0|auto_generated|divider|divider|op_6~13_sumout\ = SUM(( VCC ) + ( (!\nomeComponente|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\nomeComponente|Div0|auto_generated|divider|divider|op_5~17_sumout\))) # 
-- (\nomeComponente|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\nomeComponente|Div0|auto_generated|divider|divider|StageOut[15]~10_combout\)) ) + ( \nomeComponente|Div0|auto_generated|divider|divider|op_6~18\ ))
-- \nomeComponente|Div0|auto_generated|divider|divider|op_6~14\ = CARRY(( VCC ) + ( (!\nomeComponente|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\nomeComponente|Div0|auto_generated|divider|divider|op_5~17_sumout\))) # 
-- (\nomeComponente|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\nomeComponente|Div0|auto_generated|divider|divider|StageOut[15]~10_combout\)) ) + ( \nomeComponente|Div0|auto_generated|divider|divider|op_6~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_StageOut[15]~10_combout\,
	dataf => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\,
	cin => \nomeComponente|Div0|auto_generated|divider|divider|op_6~18\,
	sumout => \nomeComponente|Div0|auto_generated|divider|divider|op_6~13_sumout\,
	cout => \nomeComponente|Div0|auto_generated|divider|divider|op_6~14\);

-- Location: LABCELL_X24_Y1_N36
\nomeComponente|Div0|auto_generated|divider|divider|op_6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Div0|auto_generated|divider|divider|op_6~9_sumout\ = SUM(( GND ) + ( (!\nomeComponente|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\nomeComponente|Div0|auto_generated|divider|divider|op_5~13_sumout\))) # 
-- (\nomeComponente|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\nomeComponente|Div0|auto_generated|divider|divider|StageOut[16]~7_combout\)) ) + ( \nomeComponente|Div0|auto_generated|divider|divider|op_6~14\ ))
-- \nomeComponente|Div0|auto_generated|divider|divider|op_6~10\ = CARRY(( GND ) + ( (!\nomeComponente|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\nomeComponente|Div0|auto_generated|divider|divider|op_5~13_sumout\))) # 
-- (\nomeComponente|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\nomeComponente|Div0|auto_generated|divider|divider|StageOut[16]~7_combout\)) ) + ( \nomeComponente|Div0|auto_generated|divider|divider|op_6~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~7_combout\,
	dataf => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\,
	cin => \nomeComponente|Div0|auto_generated|divider|divider|op_6~14\,
	sumout => \nomeComponente|Div0|auto_generated|divider|divider|op_6~9_sumout\,
	cout => \nomeComponente|Div0|auto_generated|divider|divider|op_6~10\);

-- Location: LABCELL_X24_Y1_N39
\nomeComponente|Div0|auto_generated|divider|divider|op_6~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Div0|auto_generated|divider|divider|op_6~6_cout\ = CARRY(( (!\nomeComponente|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\nomeComponente|Div0|auto_generated|divider|divider|op_5~9_sumout\)) # 
-- (\nomeComponente|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (((\nomeComponente|Div0|auto_generated|divider|divider|StageOut[17]~3_combout\) # (\nomeComponente|Div0|auto_generated|divider|divider|StageOut[17]~2_combout\)))) ) + ( VCC ) + ( 
-- \nomeComponente|Div0|auto_generated|divider|divider|op_6~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datab => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\,
	datac => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~2_combout\,
	datad => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~3_combout\,
	cin => \nomeComponente|Div0|auto_generated|divider|divider|op_6~10\,
	cout => \nomeComponente|Div0|auto_generated|divider|divider|op_6~6_cout\);

-- Location: LABCELL_X24_Y1_N42
\nomeComponente|Div0|auto_generated|divider|divider|op_6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Div0|auto_generated|divider|divider|op_6~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \nomeComponente|Div0|auto_generated|divider|divider|op_6~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \nomeComponente|Div0|auto_generated|divider|divider|op_6~6_cout\,
	sumout => \nomeComponente|Div0|auto_generated|divider|divider|op_6~1_sumout\);

-- Location: LABCELL_X25_Y1_N15
\nomeComponente|Div0|auto_generated|divider|divider|StageOut[22]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Div0|auto_generated|divider|divider|StageOut[22]~8_combout\ = (\nomeComponente|Div0|auto_generated|divider|divider|op_5~1_sumout\ & \nomeComponente|Div0|auto_generated|divider|divider|StageOut[16]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~7_combout\,
	combout => \nomeComponente|Div0|auto_generated|divider|divider|StageOut[22]~8_combout\);

-- Location: LABCELL_X24_Y1_N48
\nomeComponente|Div0|auto_generated|divider|divider|StageOut[21]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Div0|auto_generated|divider|divider|StageOut[21]~11_combout\ = (!\nomeComponente|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\nomeComponente|Div0|auto_generated|divider|divider|op_5~17_sumout\)) # 
-- (\nomeComponente|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\nomeComponente|Div0|auto_generated|divider|divider|StageOut[15]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111100110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\,
	datac => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datad => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_StageOut[15]~10_combout\,
	combout => \nomeComponente|Div0|auto_generated|divider|divider|StageOut[21]~11_combout\);

-- Location: LABCELL_X24_Y1_N54
\nomeComponente|Div0|auto_generated|divider|divider|StageOut[20]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Div0|auto_generated|divider|divider|StageOut[20]~13_combout\ = ( \CONTADOR|DOUT\(3) & ( (\nomeComponente|Div0|auto_generated|divider|divider|op_5~21_sumout\) # (\nomeComponente|Div0|auto_generated|divider|divider|op_5~1_sumout\) ) ) # ( 
-- !\CONTADOR|DOUT\(3) & ( (!\nomeComponente|Div0|auto_generated|divider|divider|op_5~1_sumout\ & \nomeComponente|Div0|auto_generated|divider|divider|op_5~21_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\,
	dataf => \CONTADOR|ALT_INV_DOUT\(3),
	combout => \nomeComponente|Div0|auto_generated|divider|divider|StageOut[20]~13_combout\);

-- Location: MLABCELL_X23_Y1_N0
\nomeComponente|Div0|auto_generated|divider|divider|op_7~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Div0|auto_generated|divider|divider|op_7~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \nomeComponente|Div0|auto_generated|divider|divider|op_7~26_cout\);

-- Location: MLABCELL_X23_Y1_N3
\nomeComponente|Div0|auto_generated|divider|divider|op_7~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Div0|auto_generated|divider|divider|op_7~21_sumout\ = SUM(( \CONTADOR|DOUT\(1) ) + ( VCC ) + ( \nomeComponente|Div0|auto_generated|divider|divider|op_7~26_cout\ ))
-- \nomeComponente|Div0|auto_generated|divider|divider|op_7~22\ = CARRY(( \CONTADOR|DOUT\(1) ) + ( VCC ) + ( \nomeComponente|Div0|auto_generated|divider|divider|op_7~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONTADOR|ALT_INV_DOUT\(1),
	cin => \nomeComponente|Div0|auto_generated|divider|divider|op_7~26_cout\,
	sumout => \nomeComponente|Div0|auto_generated|divider|divider|op_7~21_sumout\,
	cout => \nomeComponente|Div0|auto_generated|divider|divider|op_7~22\);

-- Location: MLABCELL_X23_Y1_N6
\nomeComponente|Div0|auto_generated|divider|divider|op_7~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Div0|auto_generated|divider|divider|op_7~17_sumout\ = SUM(( (!\nomeComponente|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\nomeComponente|Div0|auto_generated|divider|divider|op_6~21_sumout\))) # 
-- (\nomeComponente|Div0|auto_generated|divider|divider|op_6~1_sumout\ & (\CONTADOR|DOUT\(2))) ) + ( GND ) + ( \nomeComponente|Div0|auto_generated|divider|divider|op_7~22\ ))
-- \nomeComponente|Div0|auto_generated|divider|divider|op_7~18\ = CARRY(( (!\nomeComponente|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\nomeComponente|Div0|auto_generated|divider|divider|op_6~21_sumout\))) # 
-- (\nomeComponente|Div0|auto_generated|divider|divider|op_6~1_sumout\ & (\CONTADOR|DOUT\(2))) ) + ( GND ) + ( \nomeComponente|Div0|auto_generated|divider|divider|op_7~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONTADOR|ALT_INV_DOUT\(2),
	datab => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\,
	cin => \nomeComponente|Div0|auto_generated|divider|divider|op_7~22\,
	sumout => \nomeComponente|Div0|auto_generated|divider|divider|op_7~17_sumout\,
	cout => \nomeComponente|Div0|auto_generated|divider|divider|op_7~18\);

-- Location: MLABCELL_X23_Y1_N9
\nomeComponente|Div0|auto_generated|divider|divider|op_7~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Div0|auto_generated|divider|divider|op_7~13_sumout\ = SUM(( VCC ) + ( (!\nomeComponente|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\nomeComponente|Div0|auto_generated|divider|divider|op_6~17_sumout\))) # 
-- (\nomeComponente|Div0|auto_generated|divider|divider|op_6~1_sumout\ & (\nomeComponente|Div0|auto_generated|divider|divider|StageOut[20]~13_combout\)) ) + ( \nomeComponente|Div0|auto_generated|divider|divider|op_7~18\ ))
-- \nomeComponente|Div0|auto_generated|divider|divider|op_7~14\ = CARRY(( VCC ) + ( (!\nomeComponente|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\nomeComponente|Div0|auto_generated|divider|divider|op_6~17_sumout\))) # 
-- (\nomeComponente|Div0|auto_generated|divider|divider|op_6~1_sumout\ & (\nomeComponente|Div0|auto_generated|divider|divider|StageOut[20]~13_combout\)) ) + ( \nomeComponente|Div0|auto_generated|divider|divider|op_7~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_StageOut[20]~13_combout\,
	dataf => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\,
	cin => \nomeComponente|Div0|auto_generated|divider|divider|op_7~18\,
	sumout => \nomeComponente|Div0|auto_generated|divider|divider|op_7~13_sumout\,
	cout => \nomeComponente|Div0|auto_generated|divider|divider|op_7~14\);

-- Location: MLABCELL_X23_Y1_N12
\nomeComponente|Div0|auto_generated|divider|divider|op_7~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Div0|auto_generated|divider|divider|op_7~9_sumout\ = SUM(( GND ) + ( (!\nomeComponente|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\nomeComponente|Div0|auto_generated|divider|divider|op_6~13_sumout\))) # 
-- (\nomeComponente|Div0|auto_generated|divider|divider|op_6~1_sumout\ & (\nomeComponente|Div0|auto_generated|divider|divider|StageOut[21]~11_combout\)) ) + ( \nomeComponente|Div0|auto_generated|divider|divider|op_7~14\ ))
-- \nomeComponente|Div0|auto_generated|divider|divider|op_7~10\ = CARRY(( GND ) + ( (!\nomeComponente|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\nomeComponente|Div0|auto_generated|divider|divider|op_6~13_sumout\))) # 
-- (\nomeComponente|Div0|auto_generated|divider|divider|op_6~1_sumout\ & (\nomeComponente|Div0|auto_generated|divider|divider|StageOut[21]~11_combout\)) ) + ( \nomeComponente|Div0|auto_generated|divider|divider|op_7~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_StageOut[21]~11_combout\,
	dataf => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\,
	cin => \nomeComponente|Div0|auto_generated|divider|divider|op_7~14\,
	sumout => \nomeComponente|Div0|auto_generated|divider|divider|op_7~9_sumout\,
	cout => \nomeComponente|Div0|auto_generated|divider|divider|op_7~10\);

-- Location: MLABCELL_X23_Y1_N15
\nomeComponente|Div0|auto_generated|divider|divider|op_7~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Div0|auto_generated|divider|divider|op_7~6_cout\ = CARRY(( VCC ) + ( (!\nomeComponente|Div0|auto_generated|divider|divider|op_6~1_sumout\ & (((\nomeComponente|Div0|auto_generated|divider|divider|op_6~9_sumout\)))) # 
-- (\nomeComponente|Div0|auto_generated|divider|divider|op_6~1_sumout\ & (((\nomeComponente|Div0|auto_generated|divider|divider|StageOut[22]~8_combout\)) # (\nomeComponente|Div0|auto_generated|divider|divider|StageOut[22]~4_combout\))) ) + ( 
-- \nomeComponente|Div0|auto_generated|divider|divider|op_7~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111000101100000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_StageOut[22]~4_combout\,
	datab => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\,
	dataf => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_StageOut[22]~8_combout\,
	cin => \nomeComponente|Div0|auto_generated|divider|divider|op_7~10\,
	cout => \nomeComponente|Div0|auto_generated|divider|divider|op_7~6_cout\);

-- Location: MLABCELL_X23_Y1_N18
\nomeComponente|Div0|auto_generated|divider|divider|op_7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Div0|auto_generated|divider|divider|op_7~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \nomeComponente|Div0|auto_generated|divider|divider|op_7~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \nomeComponente|Div0|auto_generated|divider|divider|op_7~6_cout\,
	sumout => \nomeComponente|Div0|auto_generated|divider|divider|op_7~1_sumout\);

-- Location: MLABCELL_X23_Y1_N48
\nomeComponente|Div0|auto_generated|divider|divider|StageOut[27]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Div0|auto_generated|divider|divider|StageOut[27]~9_combout\ = ( \nomeComponente|Div0|auto_generated|divider|divider|op_6~13_sumout\ & ( !\nomeComponente|Div0|auto_generated|divider|divider|op_6~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	dataf => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\,
	combout => \nomeComponente|Div0|auto_generated|divider|divider|StageOut[27]~9_combout\);

-- Location: MLABCELL_X23_Y1_N51
\nomeComponente|Div0|auto_generated|divider|divider|StageOut[27]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Div0|auto_generated|divider|divider|StageOut[27]~12_combout\ = ( \nomeComponente|Div0|auto_generated|divider|divider|StageOut[21]~11_combout\ & ( \nomeComponente|Div0|auto_generated|divider|divider|op_6~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	dataf => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_StageOut[21]~11_combout\,
	combout => \nomeComponente|Div0|auto_generated|divider|divider|StageOut[27]~12_combout\);

-- Location: MLABCELL_X23_Y1_N54
\nomeComponente|Div0|auto_generated|divider|divider|StageOut[26]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Div0|auto_generated|divider|divider|StageOut[26]~14_combout\ = ( \nomeComponente|Div0|auto_generated|divider|divider|op_6~17_sumout\ & ( (!\nomeComponente|Div0|auto_generated|divider|divider|op_6~1_sumout\) # 
-- (\nomeComponente|Div0|auto_generated|divider|divider|StageOut[20]~13_combout\) ) ) # ( !\nomeComponente|Div0|auto_generated|divider|divider|op_6~17_sumout\ & ( (\nomeComponente|Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- \nomeComponente|Div0|auto_generated|divider|divider|StageOut[20]~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datad => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_StageOut[20]~13_combout\,
	dataf => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\,
	combout => \nomeComponente|Div0|auto_generated|divider|divider|StageOut[26]~14_combout\);

-- Location: MLABCELL_X23_Y1_N57
\nomeComponente|Div0|auto_generated|divider|divider|StageOut[25]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Div0|auto_generated|divider|divider|StageOut[25]~15_combout\ = (!\nomeComponente|Div0|auto_generated|divider|divider|op_6~1_sumout\ & (\nomeComponente|Div0|auto_generated|divider|divider|op_6~21_sumout\)) # 
-- (\nomeComponente|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\CONTADOR|DOUT\(2))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011101000100011101110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\,
	datab => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datad => \CONTADOR|ALT_INV_DOUT\(2),
	combout => \nomeComponente|Div0|auto_generated|divider|divider|StageOut[25]~15_combout\);

-- Location: MLABCELL_X23_Y1_N24
\nomeComponente|Div0|auto_generated|divider|divider|op_8~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Div0|auto_generated|divider|divider|op_8~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \nomeComponente|Div0|auto_generated|divider|divider|op_8~26_cout\);

-- Location: MLABCELL_X23_Y1_N27
\nomeComponente|Div0|auto_generated|divider|divider|op_8~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Div0|auto_generated|divider|divider|op_8~22_cout\ = CARRY(( \CONTADOR|DOUT\(0) ) + ( VCC ) + ( \nomeComponente|Div0|auto_generated|divider|divider|op_8~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CONTADOR|ALT_INV_DOUT\(0),
	cin => \nomeComponente|Div0|auto_generated|divider|divider|op_8~26_cout\,
	cout => \nomeComponente|Div0|auto_generated|divider|divider|op_8~22_cout\);

-- Location: MLABCELL_X23_Y1_N30
\nomeComponente|Div0|auto_generated|divider|divider|op_8~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Div0|auto_generated|divider|divider|op_8~18_cout\ = CARRY(( (!\nomeComponente|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ((\nomeComponente|Div0|auto_generated|divider|divider|op_7~21_sumout\))) # 
-- (\nomeComponente|Div0|auto_generated|divider|divider|op_7~1_sumout\ & (\CONTADOR|DOUT\(1))) ) + ( GND ) + ( \nomeComponente|Div0|auto_generated|divider|divider|op_8~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \CONTADOR|ALT_INV_DOUT\(1),
	datad => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\,
	cin => \nomeComponente|Div0|auto_generated|divider|divider|op_8~22_cout\,
	cout => \nomeComponente|Div0|auto_generated|divider|divider|op_8~18_cout\);

-- Location: MLABCELL_X23_Y1_N33
\nomeComponente|Div0|auto_generated|divider|divider|op_8~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Div0|auto_generated|divider|divider|op_8~14_cout\ = CARRY(( VCC ) + ( (!\nomeComponente|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ((\nomeComponente|Div0|auto_generated|divider|divider|op_7~17_sumout\))) # 
-- (\nomeComponente|Div0|auto_generated|divider|divider|op_7~1_sumout\ & (\nomeComponente|Div0|auto_generated|divider|divider|StageOut[25]~15_combout\)) ) + ( \nomeComponente|Div0|auto_generated|divider|divider|op_8~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_StageOut[25]~15_combout\,
	dataf => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\,
	cin => \nomeComponente|Div0|auto_generated|divider|divider|op_8~18_cout\,
	cout => \nomeComponente|Div0|auto_generated|divider|divider|op_8~14_cout\);

-- Location: MLABCELL_X23_Y1_N36
\nomeComponente|Div0|auto_generated|divider|divider|op_8~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Div0|auto_generated|divider|divider|op_8~10_cout\ = CARRY(( GND ) + ( (!\nomeComponente|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ((\nomeComponente|Div0|auto_generated|divider|divider|op_7~13_sumout\))) # 
-- (\nomeComponente|Div0|auto_generated|divider|divider|op_7~1_sumout\ & (\nomeComponente|Div0|auto_generated|divider|divider|StageOut[26]~14_combout\)) ) + ( \nomeComponente|Div0|auto_generated|divider|divider|op_8~14_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_StageOut[26]~14_combout\,
	dataf => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\,
	cin => \nomeComponente|Div0|auto_generated|divider|divider|op_8~14_cout\,
	cout => \nomeComponente|Div0|auto_generated|divider|divider|op_8~10_cout\);

-- Location: MLABCELL_X23_Y1_N39
\nomeComponente|Div0|auto_generated|divider|divider|op_8~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Div0|auto_generated|divider|divider|op_8~6_cout\ = CARRY(( VCC ) + ( (!\nomeComponente|Div0|auto_generated|divider|divider|op_7~1_sumout\ & (\nomeComponente|Div0|auto_generated|divider|divider|op_7~9_sumout\)) # 
-- (\nomeComponente|Div0|auto_generated|divider|divider|op_7~1_sumout\ & (((\nomeComponente|Div0|auto_generated|divider|divider|StageOut[27]~12_combout\) # (\nomeComponente|Div0|auto_generated|divider|divider|StageOut[27]~9_combout\)))) ) + ( 
-- \nomeComponente|Div0|auto_generated|divider|divider|op_8~10_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110110001000100000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\,
	datac => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_StageOut[27]~9_combout\,
	dataf => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_StageOut[27]~12_combout\,
	cin => \nomeComponente|Div0|auto_generated|divider|divider|op_8~10_cout\,
	cout => \nomeComponente|Div0|auto_generated|divider|divider|op_8~6_cout\);

-- Location: MLABCELL_X23_Y1_N42
\nomeComponente|Div0|auto_generated|divider|divider|op_8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|Div0|auto_generated|divider|divider|op_8~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \nomeComponente|Div0|auto_generated|divider|divider|op_8~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \nomeComponente|Div0|auto_generated|divider|divider|op_8~6_cout\,
	sumout => \nomeComponente|Div0|auto_generated|divider|divider|op_8~1_sumout\);

-- Location: LABCELL_X25_Y1_N48
\nomeComponente|saida_DEZENA_7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|saida_DEZENA_7seg[0]~0_combout\ = ( \nomeComponente|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( (!\nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\) # 
-- ((\nomeComponente|Div0|auto_generated|divider|divider|op_7~1_sumout\ & (!\nomeComponente|Div0|auto_generated|divider|divider|op_8~1_sumout\ $ (!\nomeComponente|Div0|auto_generated|divider|divider|op_6~1_sumout\)))) ) ) # ( 
-- !\nomeComponente|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( (!\nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\) # ((!\nomeComponente|Div0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (!\nomeComponente|Div0|auto_generated|divider|divider|op_7~1_sumout\ $ (!\nomeComponente|Div0|auto_generated|divider|divider|op_6~1_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011101100110111001110110011001101110111001100110111011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datac => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datad => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	dataf => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \nomeComponente|saida_DEZENA_7seg[0]~0_combout\);

-- Location: LABCELL_X25_Y1_N9
\nomeComponente|saida_DEZENA_7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|saida_DEZENA_7seg[1]~1_combout\ = ( \nomeComponente|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( (!\nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\) # 
-- ((!\nomeComponente|Div0|auto_generated|divider|divider|op_6~1_sumout\ & (!\nomeComponente|Div0|auto_generated|divider|divider|op_8~1_sumout\ $ (!\nomeComponente|Div0|auto_generated|divider|divider|op_7~1_sumout\)))) ) ) # ( 
-- !\nomeComponente|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( (!\nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\) # ((!\nomeComponente|Div0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- ((!\nomeComponente|Div0|auto_generated|divider|divider|op_7~1_sumout\))) # (\nomeComponente|Div0|auto_generated|divider|divider|op_8~1_sumout\ & (!\nomeComponente|Div0|auto_generated|divider|divider|op_6~1_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011011100111111101101110011011100111011001101110011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datab => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datac => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datad => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	dataf => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \nomeComponente|saida_DEZENA_7seg[1]~1_combout\);

-- Location: LABCELL_X25_Y1_N51
\nomeComponente|saida_DEZENA_7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|saida_DEZENA_7seg[2]~2_combout\ = ( \nomeComponente|Div0|auto_generated|divider|divider|op_8~1_sumout\ & ( (!\nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\) # 
-- ((!\nomeComponente|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((!\nomeComponente|Div0|auto_generated|divider|divider|op_6~1_sumout\))) # (\nomeComponente|Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (!\nomeComponente|Div0|auto_generated|divider|divider|op_7~1_sumout\ & \nomeComponente|Div0|auto_generated|divider|divider|op_6~1_sumout\))) ) ) # ( !\nomeComponente|Div0|auto_generated|divider|divider|op_8~1_sumout\ & ( 
-- (!\nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\) # ((!\nomeComponente|Div0|auto_generated|divider|divider|op_7~1_sumout\ & (!\nomeComponente|Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- !\nomeComponente|Div0|auto_generated|divider|divider|op_6~1_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110110011001100111011001100110011111100110011101111110011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datac => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datad => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	dataf => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	combout => \nomeComponente|saida_DEZENA_7seg[2]~2_combout\);

-- Location: LABCELL_X25_Y1_N0
\nomeComponente|saida_DEZENA_7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|saida_DEZENA_7seg[3]~3_combout\ = ( \nomeComponente|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( (!\nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\) # 
-- ((!\nomeComponente|Div0|auto_generated|divider|divider|op_7~1_sumout\ & (!\nomeComponente|Div0|auto_generated|divider|divider|op_8~1_sumout\ & !\nomeComponente|Div0|auto_generated|divider|divider|op_6~1_sumout\)) # 
-- (\nomeComponente|Div0|auto_generated|divider|divider|op_7~1_sumout\ & (!\nomeComponente|Div0|auto_generated|divider|divider|op_8~1_sumout\ $ (!\nomeComponente|Div0|auto_generated|divider|divider|op_6~1_sumout\)))) ) ) # ( 
-- !\nomeComponente|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( (!\nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\) # ((!\nomeComponente|Div0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (!\nomeComponente|Div0|auto_generated|divider|divider|op_8~1_sumout\ $ (\nomeComponente|Div0|auto_generated|divider|divider|op_6~1_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110110011001110111011001100111011101101110111001110110111011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datac => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datad => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	dataf => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \nomeComponente|saida_DEZENA_7seg[3]~3_combout\);

-- Location: LABCELL_X25_Y1_N18
\nomeComponente|saida_DEZENA_7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|saida_DEZENA_7seg[4]~4_combout\ = ( \nomeComponente|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( (!\nomeComponente|Div0|auto_generated|divider|divider|op_8~1_sumout\) # 
-- ((!\nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\) # ((\nomeComponente|Div0|auto_generated|divider|divider|op_7~1_sumout\ & !\nomeComponente|Div0|auto_generated|divider|divider|op_6~1_sumout\))) ) ) # ( 
-- !\nomeComponente|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( (!\nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\) # ((!\nomeComponente|Div0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (\nomeComponente|Div0|auto_generated|divider|divider|op_7~1_sumout\ & \nomeComponente|Div0|auto_generated|divider|divider|op_6~1_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001110110011001100111011101111111011101110111111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datab => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datac => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datad => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	dataf => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \nomeComponente|saida_DEZENA_7seg[4]~4_combout\);

-- Location: LABCELL_X25_Y1_N3
\nomeComponente|saida_DEZENA_7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|saida_DEZENA_7seg[5]~5_combout\ = ( \nomeComponente|Div0|auto_generated|divider|divider|op_8~1_sumout\ & ( (!\nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\) # 
-- ((!\nomeComponente|Div0|auto_generated|divider|divider|op_7~1_sumout\ & (\nomeComponente|Div0|auto_generated|divider|divider|op_5~1_sumout\ & \nomeComponente|Div0|auto_generated|divider|divider|op_6~1_sumout\))) ) ) # ( 
-- !\nomeComponente|Div0|auto_generated|divider|divider|op_8~1_sumout\ & ( (!\nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\) # (!\nomeComponente|Div0|auto_generated|divider|divider|op_5~1_sumout\ $ 
-- (((!\nomeComponente|Div0|auto_generated|divider|divider|op_7~1_sumout\) # (\nomeComponente|Div0|auto_generated|divider|divider|op_6~1_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111011001111110111101100111111001100110011101100110011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datac => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datad => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	dataf => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	combout => \nomeComponente|saida_DEZENA_7seg[5]~5_combout\);

-- Location: LABCELL_X25_Y1_N12
\nomeComponente|saida_DEZENA_7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \nomeComponente|saida_DEZENA_7seg[6]~6_combout\ = ( \nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( (!\nomeComponente|Div0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (\nomeComponente|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (!\nomeComponente|Div0|auto_generated|divider|divider|op_7~1_sumout\ $ (\nomeComponente|Div0|auto_generated|divider|divider|op_6~1_sumout\)))) # 
-- (\nomeComponente|Div0|auto_generated|divider|divider|op_8~1_sumout\ & (\nomeComponente|Div0|auto_generated|divider|divider|op_7~1_sumout\ & (!\nomeComponente|Div0|auto_generated|divider|divider|op_5~1_sumout\ $ 
-- (\nomeComponente|Div0|auto_generated|divider|divider|op_6~1_sumout\)))) ) ) # ( !\nomeComponente|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100100100000000110010010000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datab => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datad => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	dataf => \nomeComponente|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \nomeComponente|saida_DEZENA_7seg[6]~6_combout\);

-- Location: MLABCELL_X37_Y40_N3
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


