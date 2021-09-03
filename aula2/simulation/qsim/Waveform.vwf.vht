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
-- Generated on "08/20/2021 20:34:38"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ROM
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ROM_vhd_vec_tst IS
END ROM_vhd_vec_tst;
ARCHITECTURE ROM_arch OF ROM_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Dado : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Endereco : STD_LOGIC_VECTOR(9 DOWNTO 0);
COMPONENT ROM
	PORT (
	Dado : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	Endereco : IN STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : ROM
	PORT MAP (
-- list connections between master ports and signals
	Dado => Dado,
	Endereco => Endereco
	);
-- Endereco[9]
t_prcs_Endereco_9: PROCESS
BEGIN
	Endereco(9) <= '0';
	WAIT FOR 90000 ps;
	Endereco(9) <= '1';
WAIT;
END PROCESS t_prcs_Endereco_9;
-- Endereco[8]
t_prcs_Endereco_8: PROCESS
BEGIN
	Endereco(8) <= '0';
	WAIT FOR 90000 ps;
	Endereco(8) <= '1';
WAIT;
END PROCESS t_prcs_Endereco_8;
-- Endereco[7]
t_prcs_Endereco_7: PROCESS
BEGIN
	Endereco(7) <= '0';
	WAIT FOR 90000 ps;
	Endereco(7) <= '1';
WAIT;
END PROCESS t_prcs_Endereco_7;
-- Endereco[6]
t_prcs_Endereco_6: PROCESS
BEGIN
	Endereco(6) <= '0';
	WAIT FOR 90000 ps;
	Endereco(6) <= '1';
WAIT;
END PROCESS t_prcs_Endereco_6;
-- Endereco[5]
t_prcs_Endereco_5: PROCESS
BEGIN
	Endereco(5) <= '0';
	WAIT FOR 90000 ps;
	Endereco(5) <= '1';
WAIT;
END PROCESS t_prcs_Endereco_5;
-- Endereco[4]
t_prcs_Endereco_4: PROCESS
BEGIN
	Endereco(4) <= '0';
	WAIT FOR 90000 ps;
	Endereco(4) <= '1';
WAIT;
END PROCESS t_prcs_Endereco_4;
-- Endereco[3]
t_prcs_Endereco_3: PROCESS
BEGIN
	Endereco(3) <= '0';
	WAIT FOR 80000 ps;
	Endereco(3) <= '1';
WAIT;
END PROCESS t_prcs_Endereco_3;
-- Endereco[2]
t_prcs_Endereco_2: PROCESS
BEGIN
	Endereco(2) <= '0';
	WAIT FOR 40000 ps;
	Endereco(2) <= '1';
	WAIT FOR 40000 ps;
	Endereco(2) <= '0';
	WAIT FOR 10000 ps;
	Endereco(2) <= '1';
WAIT;
END PROCESS t_prcs_Endereco_2;
-- Endereco[1]
t_prcs_Endereco_1: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		Endereco(1) <= '0';
		WAIT FOR 20000 ps;
		Endereco(1) <= '1';
		WAIT FOR 20000 ps;
	END LOOP;
	Endereco(1) <= '0';
	WAIT FOR 10000 ps;
	Endereco(1) <= '1';
WAIT;
END PROCESS t_prcs_Endereco_1;
-- Endereco[0]
t_prcs_Endereco_0: PROCESS
BEGIN
	FOR i IN 1 TO 4
	LOOP
		Endereco(0) <= '0';
		WAIT FOR 10000 ps;
		Endereco(0) <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
	Endereco(0) <= '0';
	WAIT FOR 10000 ps;
	Endereco(0) <= '1';
WAIT;
END PROCESS t_prcs_Endereco_0;
END ROM_arch;
