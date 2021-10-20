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
-- Generated on "10/20/2021 16:34:21"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          MIPS_Aula13
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY MIPS_Aula13_vhd_vec_tst IS
END MIPS_Aula13_vhd_vec_tst;
ARCHITECTURE MIPS_Aula13_arch OF MIPS_Aula13_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL Operacao_ULA : STD_LOGIC;
SIGNAL ULA_A : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL ULA_B : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL Valor_Operacao : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL Wr_R3 : STD_LOGIC;
COMPONENT MIPS_Aula13
	PORT (
	CLOCK_50 : IN STD_LOGIC;
	Operacao_ULA : IN STD_LOGIC;
	ULA_A : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	ULA_B : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	Valor_Operacao : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	Wr_R3 : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : MIPS_Aula13
	PORT MAP (
-- list connections between master ports and signals
	CLOCK_50 => CLOCK_50,
	Operacao_ULA => Operacao_ULA,
	ULA_A => ULA_A,
	ULA_B => ULA_B,
	Valor_Operacao => Valor_Operacao,
	Wr_R3 => Wr_R3
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

-- Operacao_ULA
t_prcs_Operacao_ULA: PROCESS
BEGIN
	Operacao_ULA <= '0';
	WAIT FOR 10000 ps;
	Operacao_ULA <= '1';
	WAIT FOR 120000 ps;
	Operacao_ULA <= '0';
WAIT;
END PROCESS t_prcs_Operacao_ULA;

-- Wr_R3
t_prcs_Wr_R3: PROCESS
BEGIN
	Wr_R3 <= '0';
	WAIT FOR 10000 ps;
	Wr_R3 <= '1';
	WAIT FOR 80000 ps;
	Wr_R3 <= '0';
WAIT;
END PROCESS t_prcs_Wr_R3;
END MIPS_Aula13_arch;
