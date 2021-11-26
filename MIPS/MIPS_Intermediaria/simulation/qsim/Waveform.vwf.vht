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
-- Generated on "11/25/2021 18:00:17"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          MIPS_Intermediaria
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY MIPS_Intermediaria_vhd_vec_tst IS
END MIPS_Intermediaria_vhd_vec_tst;
ARCHITECTURE MIPS_Intermediaria_arch OF MIPS_Intermediaria_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL entradaA_MUX_BEQ : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL entradaA_MUX_PC : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL entradaB_MUX_BEQ : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL entradaB_MUX_PC : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL HEX0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX3 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX4 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX5 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL KEY : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL LEDR : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL saida_PC_Teste : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL saida_Somador_Constant : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL saida_ULA_Teste : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL seletor_MUX_BEQ : STD_LOGIC;
SIGNAL SW : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL ULA_A : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL ULA_B : STD_LOGIC_VECTOR(31 DOWNTO 0);
COMPONENT MIPS_Intermediaria
	PORT (
	CLOCK_50 : IN STD_LOGIC;
	entradaA_MUX_BEQ : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	entradaA_MUX_PC : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	entradaB_MUX_BEQ : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	entradaB_MUX_PC : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	HEX0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX3 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX4 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX5 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	KEY : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	LEDR : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	saida_PC_Teste : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	saida_Somador_Constant : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	saida_ULA_Teste : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	seletor_MUX_BEQ : OUT STD_LOGIC;
	SW : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
	ULA_A : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	ULA_B : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : MIPS_Intermediaria
	PORT MAP (
-- list connections between master ports and signals
	CLOCK_50 => CLOCK_50,
	entradaA_MUX_BEQ => entradaA_MUX_BEQ,
	entradaA_MUX_PC => entradaA_MUX_PC,
	entradaB_MUX_BEQ => entradaB_MUX_BEQ,
	entradaB_MUX_PC => entradaB_MUX_PC,
	HEX0 => HEX0,
	HEX1 => HEX1,
	HEX2 => HEX2,
	HEX3 => HEX3,
	HEX4 => HEX4,
	HEX5 => HEX5,
	KEY => KEY,
	LEDR => LEDR,
	saida_PC_Teste => saida_PC_Teste,
	saida_Somador_Constant => saida_Somador_Constant,
	saida_ULA_Teste => saida_ULA_Teste,
	seletor_MUX_BEQ => seletor_MUX_BEQ,
	SW => SW,
	ULA_A => ULA_A,
	ULA_B => ULA_B
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
END MIPS_Intermediaria_arch;
