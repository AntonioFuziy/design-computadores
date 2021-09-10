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
-- Generated on "09/10/2021 14:59:28"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Aula5
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Aula5_vhd_vec_tst IS
END Aula5_vhd_vec_tst;
ARCHITECTURE Aula5_arch OF Aula5_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL HABILITA : STD_LOGIC;
SIGNAL KEY : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL OPERACAO : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL SAIDA : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL SAIDA_MUX : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL SEL_MUX : STD_LOGIC;
SIGNAL TESTE_ENDERECO_MEM : STD_LOGIC_VECTOR(8 DOWNTO 0);
COMPONENT Aula5
	PORT (
	CLOCK_50 : IN STD_LOGIC;
	HABILITA : OUT STD_LOGIC;
	KEY : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	OPERACAO : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	SAIDA : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	SAIDA_MUX : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	SEL_MUX : OUT STD_LOGIC;
	TESTE_ENDERECO_MEM : OUT STD_LOGIC_VECTOR(8 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Aula5
	PORT MAP (
-- list connections between master ports and signals
	CLOCK_50 => CLOCK_50,
	HABILITA => HABILITA,
	KEY => KEY,
	OPERACAO => OPERACAO,
	SAIDA => SAIDA,
	SAIDA_MUX => SAIDA_MUX,
	SEL_MUX => SEL_MUX,
	TESTE_ENDERECO_MEM => TESTE_ENDERECO_MEM
	);

-- CLOCK_50
t_prcs_CLOCK_50: PROCESS
BEGIN
LOOP
	CLOCK_50 <= '0';
	WAIT FOR 10000 ps;
	CLOCK_50 <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLOCK_50;
-- KEY[3]
t_prcs_KEY_3: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		KEY(3) <= '0';
		WAIT FOR 80000 ps;
		KEY(3) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	KEY(3) <= '0';
WAIT;
END PROCESS t_prcs_KEY_3;
-- KEY[2]
t_prcs_KEY_2: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		KEY(2) <= '0';
		WAIT FOR 40000 ps;
		KEY(2) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	KEY(2) <= '0';
WAIT;
END PROCESS t_prcs_KEY_2;
-- KEY[1]
t_prcs_KEY_1: PROCESS
BEGIN
LOOP
	KEY(1) <= '0';
	WAIT FOR 20000 ps;
	KEY(1) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_KEY_1;
-- KEY[0]
t_prcs_KEY_0: PROCESS
BEGIN
LOOP
	KEY(0) <= '0';
	WAIT FOR 10000 ps;
	KEY(0) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_KEY_0;
END Aula5_arch;
