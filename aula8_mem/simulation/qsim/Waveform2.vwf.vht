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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "09/27/2021 19:04:59"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Aula8_mem
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Aula8_mem_vhd_vec_tst IS
END Aula8_mem_vhd_vec_tst;
ARCHITECTURE Aula8_mem_arch OF Aula8_mem_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL FPGA_RESET : STD_LOGIC;
SIGNAL HEX0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX3 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX4 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX5 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL KEY : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL LEDR : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL saida_RAM : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL saida_ROM : STD_LOGIC_VECTOR(12 DOWNTO 0);
SIGNAL SW : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL Teste_Endereco : STD_LOGIC_VECTOR(8 DOWNTO 0);
COMPONENT Aula8_mem
	PORT (
	CLOCK_50 : IN STD_LOGIC;
	FPGA_RESET : IN STD_LOGIC;
	HEX0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX3 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX4 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX5 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	KEY : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	LEDR : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	saida_RAM : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	saida_ROM : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
	SW : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
	Teste_Endereco : OUT STD_LOGIC_VECTOR(8 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Aula8_mem
	PORT MAP (
-- list connections between master ports and signals
	CLOCK_50 => CLOCK_50,
	FPGA_RESET => FPGA_RESET,
	HEX0 => HEX0,
	HEX1 => HEX1,
	HEX2 => HEX2,
	HEX3 => HEX3,
	HEX4 => HEX4,
	HEX5 => HEX5,
	KEY => KEY,
	LEDR => LEDR,
	saida_RAM => saida_RAM,
	saida_ROM => saida_ROM,
	SW => SW,
	Teste_Endereco => Teste_Endereco
	);

-- CLOCK_50
t_prcs_CLOCK_50: PROCESS
BEGIN
LOOP
	CLOCK_50 <= '0';
	WAIT FOR 1000 ps;
	CLOCK_50 <= '1';
	WAIT FOR 1000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLOCK_50;

-- FPGA_RESET
t_prcs_FPGA_RESET: PROCESS
BEGIN
	FPGA_RESET <= '0';
WAIT;
END PROCESS t_prcs_FPGA_RESET;
-- KEY[3]
t_prcs_KEY_3: PROCESS
BEGIN
	KEY(3) <= '0';
WAIT;
END PROCESS t_prcs_KEY_3;
-- KEY[2]
t_prcs_KEY_2: PROCESS
BEGIN
	KEY(2) <= '0';
WAIT;
END PROCESS t_prcs_KEY_2;
-- KEY[1]
t_prcs_KEY_1: PROCESS
BEGIN
	KEY(1) <= '0';
WAIT;
END PROCESS t_prcs_KEY_1;
-- KEY[0]
t_prcs_KEY_0: PROCESS
BEGIN
	KEY(0) <= '1';
	WAIT FOR 1000 ps;
	FOR i IN 1 TO 499
	LOOP
		KEY(0) <= '0';
		WAIT FOR 1000 ps;
		KEY(0) <= '1';
		WAIT FOR 1000 ps;
	END LOOP;
	KEY(0) <= '0';
WAIT;
END PROCESS t_prcs_KEY_0;
-- SW[9]
t_prcs_SW_9: PROCESS
BEGIN
	SW(9) <= '0';
	WAIT FOR 512000 ps;
	SW(9) <= '1';
WAIT;
END PROCESS t_prcs_SW_9;
-- SW[8]
t_prcs_SW_8: PROCESS
BEGIN
	SW(8) <= '0';
	WAIT FOR 256000 ps;
	SW(8) <= '1';
	WAIT FOR 256000 ps;
	SW(8) <= '0';
	WAIT FOR 256000 ps;
	SW(8) <= '1';
WAIT;
END PROCESS t_prcs_SW_8;
-- SW[7]
t_prcs_SW_7: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		SW(7) <= '0';
		WAIT FOR 128000 ps;
		SW(7) <= '1';
		WAIT FOR 128000 ps;
	END LOOP;
	SW(7) <= '0';
	WAIT FOR 128000 ps;
	SW(7) <= '1';
WAIT;
END PROCESS t_prcs_SW_7;
-- SW[6]
t_prcs_SW_6: PROCESS
BEGIN
	FOR i IN 1 TO 7
	LOOP
		SW(6) <= '0';
		WAIT FOR 64000 ps;
		SW(6) <= '1';
		WAIT FOR 64000 ps;
	END LOOP;
	SW(6) <= '0';
	WAIT FOR 64000 ps;
	SW(6) <= '1';
WAIT;
END PROCESS t_prcs_SW_6;
-- SW[5]
t_prcs_SW_5: PROCESS
BEGIN
	FOR i IN 1 TO 15
	LOOP
		SW(5) <= '0';
		WAIT FOR 32000 ps;
		SW(5) <= '1';
		WAIT FOR 32000 ps;
	END LOOP;
	SW(5) <= '0';
	WAIT FOR 32000 ps;
	SW(5) <= '1';
WAIT;
END PROCESS t_prcs_SW_5;
-- SW[4]
t_prcs_SW_4: PROCESS
BEGIN
	FOR i IN 1 TO 31
	LOOP
		SW(4) <= '0';
		WAIT FOR 16000 ps;
		SW(4) <= '1';
		WAIT FOR 16000 ps;
	END LOOP;
	SW(4) <= '0';
WAIT;
END PROCESS t_prcs_SW_4;
-- SW[3]
t_prcs_SW_3: PROCESS
BEGIN
	FOR i IN 1 TO 62
	LOOP
		SW(3) <= '0';
		WAIT FOR 8000 ps;
		SW(3) <= '1';
		WAIT FOR 8000 ps;
	END LOOP;
	SW(3) <= '0';
WAIT;
END PROCESS t_prcs_SW_3;
-- SW[2]
t_prcs_SW_2: PROCESS
BEGIN
LOOP
	SW(2) <= '0';
	WAIT FOR 4000 ps;
	SW(2) <= '1';
	WAIT FOR 4000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_SW_2;
-- SW[1]
t_prcs_SW_1: PROCESS
BEGIN
LOOP
	SW(1) <= '0';
	WAIT FOR 2000 ps;
	SW(1) <= '1';
	WAIT FOR 2000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_SW_1;
-- SW[0]
t_prcs_SW_0: PROCESS
BEGIN
LOOP
	SW(0) <= '0';
	WAIT FOR 1000 ps;
	SW(0) <= '1';
	WAIT FOR 1000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_SW_0;
END Aula8_mem_arch;
