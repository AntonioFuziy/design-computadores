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

-- DATE "10/19/2021 17:16:44"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
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

ENTITY 	MIPS_Aula13 IS
    PORT (
	CLOCK_50 : IN std_logic;
	Wr_R3 : IN std_logic;
	Operacao_ULA : IN std_logic;
	ULA_A : OUT std_logic_vector(31 DOWNTO 0);
	ULA_B : OUT std_logic_vector(31 DOWNTO 0);
	Valor_Operacao : OUT std_logic_vector(31 DOWNTO 0)
	);
END MIPS_Aula13;

ARCHITECTURE structure OF MIPS_Aula13 IS
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
SIGNAL ww_Wr_R3 : std_logic;
SIGNAL ww_Operacao_ULA : std_logic;
SIGNAL ww_ULA_A : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_ULA_B : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Valor_Operacao : std_logic_vector(31 DOWNTO 0);
SIGNAL \Wr_R3~input_o\ : std_logic;
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
SIGNAL \PC|DOUT[2]~0_combout\ : std_logic;
SIGNAL \somador|Add0~17_sumout\ : std_logic;
SIGNAL \somador|Add0~18\ : std_logic;
SIGNAL \somador|Add0~13_sumout\ : std_logic;
SIGNAL \somador|Add0~14\ : std_logic;
SIGNAL \somador|Add0~9_sumout\ : std_logic;
SIGNAL \somador|Add0~10\ : std_logic;
SIGNAL \somador|Add0~5_sumout\ : std_logic;
SIGNAL \somador|Add0~6\ : std_logic;
SIGNAL \somador|Add0~1_sumout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \Operacao_ULA~input_o\ : std_logic;
SIGNAL \ULA1|Add0~130_cout\ : std_logic;
SIGNAL \ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \ULA1|Add0~2\ : std_logic;
SIGNAL \ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \ULA1|Add0~6\ : std_logic;
SIGNAL \ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \ULA1|Add0~10\ : std_logic;
SIGNAL \ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \ULA1|Add0~14\ : std_logic;
SIGNAL \ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \ULA1|Add0~18\ : std_logic;
SIGNAL \ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \ULA1|Add0~22\ : std_logic;
SIGNAL \ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \ULA1|Add0~26\ : std_logic;
SIGNAL \ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \ULA1|Add0~30\ : std_logic;
SIGNAL \ULA1|Add0~33_sumout\ : std_logic;
SIGNAL \ULA1|Add0~34\ : std_logic;
SIGNAL \ULA1|Add0~37_sumout\ : std_logic;
SIGNAL \ULA1|Add0~38\ : std_logic;
SIGNAL \ULA1|Add0~41_sumout\ : std_logic;
SIGNAL \ULA1|Add0~42\ : std_logic;
SIGNAL \ULA1|Add0~45_sumout\ : std_logic;
SIGNAL \ULA1|Add0~46\ : std_logic;
SIGNAL \ULA1|Add0~49_sumout\ : std_logic;
SIGNAL \ULA1|Add0~50\ : std_logic;
SIGNAL \ULA1|Add0~53_sumout\ : std_logic;
SIGNAL \ULA1|Add0~54\ : std_logic;
SIGNAL \ULA1|Add0~57_sumout\ : std_logic;
SIGNAL \ULA1|Add0~58\ : std_logic;
SIGNAL \ULA1|Add0~61_sumout\ : std_logic;
SIGNAL \ULA1|Add0~62\ : std_logic;
SIGNAL \ULA1|Add0~65_sumout\ : std_logic;
SIGNAL \ULA1|Add0~66\ : std_logic;
SIGNAL \ULA1|Add0~69_sumout\ : std_logic;
SIGNAL \ULA1|Add0~70\ : std_logic;
SIGNAL \ULA1|Add0~73_sumout\ : std_logic;
SIGNAL \ULA1|Add0~74\ : std_logic;
SIGNAL \ULA1|Add0~77_sumout\ : std_logic;
SIGNAL \ULA1|Add0~78\ : std_logic;
SIGNAL \ULA1|Add0~81_sumout\ : std_logic;
SIGNAL \ULA1|Add0~82\ : std_logic;
SIGNAL \ULA1|Add0~85_sumout\ : std_logic;
SIGNAL \ULA1|Add0~86\ : std_logic;
SIGNAL \ULA1|Add0~89_sumout\ : std_logic;
SIGNAL \ULA1|Add0~90\ : std_logic;
SIGNAL \ULA1|Add0~93_sumout\ : std_logic;
SIGNAL \ULA1|Add0~94\ : std_logic;
SIGNAL \ULA1|Add0~97_sumout\ : std_logic;
SIGNAL \ULA1|Add0~98\ : std_logic;
SIGNAL \ULA1|Add0~101_sumout\ : std_logic;
SIGNAL \ULA1|Add0~102\ : std_logic;
SIGNAL \ULA1|Add0~105_sumout\ : std_logic;
SIGNAL \ULA1|Add0~106\ : std_logic;
SIGNAL \ULA1|Add0~109_sumout\ : std_logic;
SIGNAL \ULA1|Add0~110\ : std_logic;
SIGNAL \ULA1|Add0~113_sumout\ : std_logic;
SIGNAL \ULA1|Add0~114\ : std_logic;
SIGNAL \ULA1|Add0~117_sumout\ : std_logic;
SIGNAL \ULA1|Add0~118\ : std_logic;
SIGNAL \ULA1|Add0~121_sumout\ : std_logic;
SIGNAL \ULA1|Add0~122\ : std_logic;
SIGNAL \ULA1|Add0~125_sumout\ : std_logic;
SIGNAL \PC|DOUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_Operacao_ULA~input_o\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 2);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_Wr_R3 <= Wr_R3;
ww_Operacao_ULA <= Operacao_ULA;
ULA_A <= ww_ULA_A;
ULA_B <= ww_ULA_B;
Valor_Operacao <= ww_Valor_Operacao;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Operacao_ULA~input_o\ <= NOT \Operacao_ULA~input_o\;
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\PC|ALT_INV_DOUT\(2) <= NOT \PC|DOUT\(2);
\PC|ALT_INV_DOUT\(3) <= NOT \PC|DOUT\(3);
\PC|ALT_INV_DOUT\(4) <= NOT \PC|DOUT\(4);
\PC|ALT_INV_DOUT\(5) <= NOT \PC|DOUT\(5);
\PC|ALT_INV_DOUT\(6) <= NOT \PC|DOUT\(6);
\PC|ALT_INV_DOUT\(7) <= NOT \PC|DOUT\(7);

\ULA_A[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~0_combout\,
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
	i => \ROM1|memROM~0_combout\,
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
	i => GND,
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
	i => \ROM1|memROM~0_combout\,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
	devoe => ww_devoe,
	o => \ULA_B[31]~output_o\);

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

\PC|DOUT[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC|DOUT[2]~0_combout\ = !\PC|DOUT\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	combout => \PC|DOUT[2]~0_combout\);

\PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PC|DOUT[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(2));

\somador|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~17_sumout\ = SUM(( \PC|DOUT\(2) ) + ( \PC|DOUT\(3) ) + ( !VCC ))
-- \somador|Add0~18\ = CARRY(( \PC|DOUT\(2) ) + ( \PC|DOUT\(3) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(2),
	dataf => \PC|ALT_INV_DOUT\(3),
	cin => GND,
	sumout => \somador|Add0~17_sumout\,
	cout => \somador|Add0~18\);

\PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \somador|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(3));

\somador|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~13_sumout\ = SUM(( \PC|DOUT\(4) ) + ( GND ) + ( \somador|Add0~18\ ))
-- \somador|Add0~14\ = CARRY(( \PC|DOUT\(4) ) + ( GND ) + ( \somador|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(4),
	cin => \somador|Add0~18\,
	sumout => \somador|Add0~13_sumout\,
	cout => \somador|Add0~14\);

\PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \somador|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(4));

\somador|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~9_sumout\ = SUM(( \PC|DOUT\(5) ) + ( GND ) + ( \somador|Add0~14\ ))
-- \somador|Add0~10\ = CARRY(( \PC|DOUT\(5) ) + ( GND ) + ( \somador|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(5),
	cin => \somador|Add0~14\,
	sumout => \somador|Add0~9_sumout\,
	cout => \somador|Add0~10\);

\PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \somador|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(5));

\somador|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~5_sumout\ = SUM(( \PC|DOUT\(6) ) + ( GND ) + ( \somador|Add0~10\ ))
-- \somador|Add0~6\ = CARRY(( \PC|DOUT\(6) ) + ( GND ) + ( \somador|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(6),
	cin => \somador|Add0~10\,
	sumout => \somador|Add0~5_sumout\,
	cout => \somador|Add0~6\);

\PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \somador|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(6));

\somador|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~1_sumout\ = SUM(( \PC|DOUT\(7) ) + ( GND ) + ( \somador|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(7),
	cin => \somador|Add0~6\,
	sumout => \somador|Add0~1_sumout\);

\PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \somador|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(7));

\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = ( !\PC|DOUT\(3) & ( !\PC|DOUT\(2) & ( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & (!\PC|DOUT\(5) & !\PC|DOUT\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(5),
	datad => \PC|ALT_INV_DOUT\(4),
	datae => \PC|ALT_INV_DOUT\(3),
	dataf => \PC|ALT_INV_DOUT\(2),
	combout => \ROM1|memROM~0_combout\);

\Operacao_ULA~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Operacao_ULA,
	o => \Operacao_ULA~input_o\);

\ULA1|Add0~130\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~130_cout\ = CARRY(( !\Operacao_ULA~input_o\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Operacao_ULA~input_o\,
	cin => GND,
	cout => \ULA1|Add0~130_cout\);

\ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~1_sumout\ = SUM(( \ROM1|memROM~0_combout\ ) + ( !\Operacao_ULA~input_o\ ) + ( \ULA1|Add0~130_cout\ ))
-- \ULA1|Add0~2\ = CARRY(( \ROM1|memROM~0_combout\ ) + ( !\Operacao_ULA~input_o\ ) + ( \ULA1|Add0~130_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ALT_INV_Operacao_ULA~input_o\,
	cin => \ULA1|Add0~130_cout\,
	sumout => \ULA1|Add0~1_sumout\,
	cout => \ULA1|Add0~2\);

\ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~5_sumout\ = SUM(( \ROM1|memROM~0_combout\ ) + ( !\Operacao_ULA~input_o\ ) + ( \ULA1|Add0~2\ ))
-- \ULA1|Add0~6\ = CARRY(( \ROM1|memROM~0_combout\ ) + ( !\Operacao_ULA~input_o\ ) + ( \ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ALT_INV_Operacao_ULA~input_o\,
	cin => \ULA1|Add0~2\,
	sumout => \ULA1|Add0~5_sumout\,
	cout => \ULA1|Add0~6\);

\ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~9_sumout\ = SUM(( GND ) + ( !\Operacao_ULA~input_o\ ) + ( \ULA1|Add0~6\ ))
-- \ULA1|Add0~10\ = CARRY(( GND ) + ( !\Operacao_ULA~input_o\ ) + ( \ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Operacao_ULA~input_o\,
	cin => \ULA1|Add0~6\,
	sumout => \ULA1|Add0~9_sumout\,
	cout => \ULA1|Add0~10\);

\ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~13_sumout\ = SUM(( \ROM1|memROM~0_combout\ ) + ( !\Operacao_ULA~input_o\ ) + ( \ULA1|Add0~10\ ))
-- \ULA1|Add0~14\ = CARRY(( \ROM1|memROM~0_combout\ ) + ( !\Operacao_ULA~input_o\ ) + ( \ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ALT_INV_Operacao_ULA~input_o\,
	cin => \ULA1|Add0~10\,
	sumout => \ULA1|Add0~13_sumout\,
	cout => \ULA1|Add0~14\);

\ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~17_sumout\ = SUM(( GND ) + ( !\Operacao_ULA~input_o\ ) + ( \ULA1|Add0~14\ ))
-- \ULA1|Add0~18\ = CARRY(( GND ) + ( !\Operacao_ULA~input_o\ ) + ( \ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Operacao_ULA~input_o\,
	cin => \ULA1|Add0~14\,
	sumout => \ULA1|Add0~17_sumout\,
	cout => \ULA1|Add0~18\);

\ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~21_sumout\ = SUM(( GND ) + ( !\Operacao_ULA~input_o\ ) + ( \ULA1|Add0~18\ ))
-- \ULA1|Add0~22\ = CARRY(( GND ) + ( !\Operacao_ULA~input_o\ ) + ( \ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Operacao_ULA~input_o\,
	cin => \ULA1|Add0~18\,
	sumout => \ULA1|Add0~21_sumout\,
	cout => \ULA1|Add0~22\);

\ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~25_sumout\ = SUM(( GND ) + ( !\Operacao_ULA~input_o\ ) + ( \ULA1|Add0~22\ ))
-- \ULA1|Add0~26\ = CARRY(( GND ) + ( !\Operacao_ULA~input_o\ ) + ( \ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Operacao_ULA~input_o\,
	cin => \ULA1|Add0~22\,
	sumout => \ULA1|Add0~25_sumout\,
	cout => \ULA1|Add0~26\);

\ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~29_sumout\ = SUM(( GND ) + ( !\Operacao_ULA~input_o\ ) + ( \ULA1|Add0~26\ ))
-- \ULA1|Add0~30\ = CARRY(( GND ) + ( !\Operacao_ULA~input_o\ ) + ( \ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Operacao_ULA~input_o\,
	cin => \ULA1|Add0~26\,
	sumout => \ULA1|Add0~29_sumout\,
	cout => \ULA1|Add0~30\);

\ULA1|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~33_sumout\ = SUM(( GND ) + ( !\Operacao_ULA~input_o\ ) + ( \ULA1|Add0~30\ ))
-- \ULA1|Add0~34\ = CARRY(( GND ) + ( !\Operacao_ULA~input_o\ ) + ( \ULA1|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Operacao_ULA~input_o\,
	cin => \ULA1|Add0~30\,
	sumout => \ULA1|Add0~33_sumout\,
	cout => \ULA1|Add0~34\);

\ULA1|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~37_sumout\ = SUM(( GND ) + ( !\Operacao_ULA~input_o\ ) + ( \ULA1|Add0~34\ ))
-- \ULA1|Add0~38\ = CARRY(( GND ) + ( !\Operacao_ULA~input_o\ ) + ( \ULA1|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Operacao_ULA~input_o\,
	cin => \ULA1|Add0~34\,
	sumout => \ULA1|Add0~37_sumout\,
	cout => \ULA1|Add0~38\);

\ULA1|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~41_sumout\ = SUM(( GND ) + ( !\Operacao_ULA~input_o\ ) + ( \ULA1|Add0~38\ ))
-- \ULA1|Add0~42\ = CARRY(( GND ) + ( !\Operacao_ULA~input_o\ ) + ( \ULA1|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Operacao_ULA~input_o\,
	cin => \ULA1|Add0~38\,
	sumout => \ULA1|Add0~41_sumout\,
	cout => \ULA1|Add0~42\);

\ULA1|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~45_sumout\ = SUM(( GND ) + ( !\Operacao_ULA~input_o\ ) + ( \ULA1|Add0~42\ ))
-- \ULA1|Add0~46\ = CARRY(( GND ) + ( !\Operacao_ULA~input_o\ ) + ( \ULA1|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Operacao_ULA~input_o\,
	cin => \ULA1|Add0~42\,
	sumout => \ULA1|Add0~45_sumout\,
	cout => \ULA1|Add0~46\);

\ULA1|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~49_sumout\ = SUM(( GND ) + ( !\Operacao_ULA~input_o\ ) + ( \ULA1|Add0~46\ ))
-- \ULA1|Add0~50\ = CARRY(( GND ) + ( !\Operacao_ULA~input_o\ ) + ( \ULA1|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Operacao_ULA~input_o\,
	cin => \ULA1|Add0~46\,
	sumout => \ULA1|Add0~49_sumout\,
	cout => \ULA1|Add0~50\);

\ULA1|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~53_sumout\ = SUM(( GND ) + ( !\Operacao_ULA~input_o\ ) + ( \ULA1|Add0~50\ ))
-- \ULA1|Add0~54\ = CARRY(( GND ) + ( !\Operacao_ULA~input_o\ ) + ( \ULA1|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Operacao_ULA~input_o\,
	cin => \ULA1|Add0~50\,
	sumout => \ULA1|Add0~53_sumout\,
	cout => \ULA1|Add0~54\);

\ULA1|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~57_sumout\ = SUM(( GND ) + ( !\Operacao_ULA~input_o\ ) + ( \ULA1|Add0~54\ ))
-- \ULA1|Add0~58\ = CARRY(( GND ) + ( !\Operacao_ULA~input_o\ ) + ( \ULA1|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Operacao_ULA~input_o\,
	cin => \ULA1|Add0~54\,
	sumout => \ULA1|Add0~57_sumout\,
	cout => \ULA1|Add0~58\);

\ULA1|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~61_sumout\ = SUM(( GND ) + ( !\Operacao_ULA~input_o\ ) + ( \ULA1|Add0~58\ ))
-- \ULA1|Add0~62\ = CARRY(( GND ) + ( !\Operacao_ULA~input_o\ ) + ( \ULA1|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Operacao_ULA~input_o\,
	cin => \ULA1|Add0~58\,
	sumout => \ULA1|Add0~61_sumout\,
	cout => \ULA1|Add0~62\);

\ULA1|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~65_sumout\ = SUM(( GND ) + ( !\Operacao_ULA~input_o\ ) + ( \ULA1|Add0~62\ ))
-- \ULA1|Add0~66\ = CARRY(( GND ) + ( !\Operacao_ULA~input_o\ ) + ( \ULA1|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Operacao_ULA~input_o\,
	cin => \ULA1|Add0~62\,
	sumout => \ULA1|Add0~65_sumout\,
	cout => \ULA1|Add0~66\);

\ULA1|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~69_sumout\ = SUM(( GND ) + ( !\Operacao_ULA~input_o\ ) + ( \ULA1|Add0~66\ ))
-- \ULA1|Add0~70\ = CARRY(( GND ) + ( !\Operacao_ULA~input_o\ ) + ( \ULA1|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Operacao_ULA~input_o\,
	cin => \ULA1|Add0~66\,
	sumout => \ULA1|Add0~69_sumout\,
	cout => \ULA1|Add0~70\);

\ULA1|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~73_sumout\ = SUM(( GND ) + ( !\Operacao_ULA~input_o\ ) + ( \ULA1|Add0~70\ ))
-- \ULA1|Add0~74\ = CARRY(( GND ) + ( !\Operacao_ULA~input_o\ ) + ( \ULA1|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Operacao_ULA~input_o\,
	cin => \ULA1|Add0~70\,
	sumout => \ULA1|Add0~73_sumout\,
	cout => \ULA1|Add0~74\);

\ULA1|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~77_sumout\ = SUM(( GND ) + ( !\Operacao_ULA~input_o\ ) + ( \ULA1|Add0~74\ ))
-- \ULA1|Add0~78\ = CARRY(( GND ) + ( !\Operacao_ULA~input_o\ ) + ( \ULA1|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Operacao_ULA~input_o\,
	cin => \ULA1|Add0~74\,
	sumout => \ULA1|Add0~77_sumout\,
	cout => \ULA1|Add0~78\);

\ULA1|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~81_sumout\ = SUM(( GND ) + ( !\Operacao_ULA~input_o\ ) + ( \ULA1|Add0~78\ ))
-- \ULA1|Add0~82\ = CARRY(( GND ) + ( !\Operacao_ULA~input_o\ ) + ( \ULA1|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Operacao_ULA~input_o\,
	cin => \ULA1|Add0~78\,
	sumout => \ULA1|Add0~81_sumout\,
	cout => \ULA1|Add0~82\);

\ULA1|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~85_sumout\ = SUM(( GND ) + ( !\Operacao_ULA~input_o\ ) + ( \ULA1|Add0~82\ ))
-- \ULA1|Add0~86\ = CARRY(( GND ) + ( !\Operacao_ULA~input_o\ ) + ( \ULA1|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Operacao_ULA~input_o\,
	cin => \ULA1|Add0~82\,
	sumout => \ULA1|Add0~85_sumout\,
	cout => \ULA1|Add0~86\);

\ULA1|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~89_sumout\ = SUM(( GND ) + ( !\Operacao_ULA~input_o\ ) + ( \ULA1|Add0~86\ ))
-- \ULA1|Add0~90\ = CARRY(( GND ) + ( !\Operacao_ULA~input_o\ ) + ( \ULA1|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Operacao_ULA~input_o\,
	cin => \ULA1|Add0~86\,
	sumout => \ULA1|Add0~89_sumout\,
	cout => \ULA1|Add0~90\);

\ULA1|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~93_sumout\ = SUM(( GND ) + ( !\Operacao_ULA~input_o\ ) + ( \ULA1|Add0~90\ ))
-- \ULA1|Add0~94\ = CARRY(( GND ) + ( !\Operacao_ULA~input_o\ ) + ( \ULA1|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Operacao_ULA~input_o\,
	cin => \ULA1|Add0~90\,
	sumout => \ULA1|Add0~93_sumout\,
	cout => \ULA1|Add0~94\);

\ULA1|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~97_sumout\ = SUM(( GND ) + ( !\Operacao_ULA~input_o\ ) + ( \ULA1|Add0~94\ ))
-- \ULA1|Add0~98\ = CARRY(( GND ) + ( !\Operacao_ULA~input_o\ ) + ( \ULA1|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Operacao_ULA~input_o\,
	cin => \ULA1|Add0~94\,
	sumout => \ULA1|Add0~97_sumout\,
	cout => \ULA1|Add0~98\);

\ULA1|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~101_sumout\ = SUM(( GND ) + ( !\Operacao_ULA~input_o\ ) + ( \ULA1|Add0~98\ ))
-- \ULA1|Add0~102\ = CARRY(( GND ) + ( !\Operacao_ULA~input_o\ ) + ( \ULA1|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Operacao_ULA~input_o\,
	cin => \ULA1|Add0~98\,
	sumout => \ULA1|Add0~101_sumout\,
	cout => \ULA1|Add0~102\);

\ULA1|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~105_sumout\ = SUM(( GND ) + ( !\Operacao_ULA~input_o\ ) + ( \ULA1|Add0~102\ ))
-- \ULA1|Add0~106\ = CARRY(( GND ) + ( !\Operacao_ULA~input_o\ ) + ( \ULA1|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Operacao_ULA~input_o\,
	cin => \ULA1|Add0~102\,
	sumout => \ULA1|Add0~105_sumout\,
	cout => \ULA1|Add0~106\);

\ULA1|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~109_sumout\ = SUM(( GND ) + ( !\Operacao_ULA~input_o\ ) + ( \ULA1|Add0~106\ ))
-- \ULA1|Add0~110\ = CARRY(( GND ) + ( !\Operacao_ULA~input_o\ ) + ( \ULA1|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Operacao_ULA~input_o\,
	cin => \ULA1|Add0~106\,
	sumout => \ULA1|Add0~109_sumout\,
	cout => \ULA1|Add0~110\);

\ULA1|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~113_sumout\ = SUM(( GND ) + ( !\Operacao_ULA~input_o\ ) + ( \ULA1|Add0~110\ ))
-- \ULA1|Add0~114\ = CARRY(( GND ) + ( !\Operacao_ULA~input_o\ ) + ( \ULA1|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Operacao_ULA~input_o\,
	cin => \ULA1|Add0~110\,
	sumout => \ULA1|Add0~113_sumout\,
	cout => \ULA1|Add0~114\);

\ULA1|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~117_sumout\ = SUM(( GND ) + ( !\Operacao_ULA~input_o\ ) + ( \ULA1|Add0~114\ ))
-- \ULA1|Add0~118\ = CARRY(( GND ) + ( !\Operacao_ULA~input_o\ ) + ( \ULA1|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Operacao_ULA~input_o\,
	cin => \ULA1|Add0~114\,
	sumout => \ULA1|Add0~117_sumout\,
	cout => \ULA1|Add0~118\);

\ULA1|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~121_sumout\ = SUM(( GND ) + ( !\Operacao_ULA~input_o\ ) + ( \ULA1|Add0~118\ ))
-- \ULA1|Add0~122\ = CARRY(( GND ) + ( !\Operacao_ULA~input_o\ ) + ( \ULA1|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Operacao_ULA~input_o\,
	cin => \ULA1|Add0~118\,
	sumout => \ULA1|Add0~121_sumout\,
	cout => \ULA1|Add0~122\);

\ULA1|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~125_sumout\ = SUM(( GND ) + ( !\Operacao_ULA~input_o\ ) + ( \ULA1|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Operacao_ULA~input_o\,
	cin => \ULA1|Add0~122\,
	sumout => \ULA1|Add0~125_sumout\);

\Wr_R3~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Wr_R3,
	o => \Wr_R3~input_o\);

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


