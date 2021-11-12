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
-- Generated on "11/12/2021 11:44:31"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          MIPS_Aula17_UnidadeControle
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY MIPS_Aula17_UnidadeControle_vhd_vec_tst IS
END MIPS_Aula17_UnidadeControle_vhd_vec_tst;
ARCHITECTURE MIPS_Aula17_UnidadeControle_arch OF MIPS_Aula17_UnidadeControle_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL Funct : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL Opcode : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL Operacao_ULA_OUT : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL Resulado_Operacao : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL Saida_PC : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL Tipo_Instrucao : STD_LOGIC;
SIGNAL ULA_A : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL ULA_B : STD_LOGIC_VECTOR(31 DOWNTO 0);
COMPONENT MIPS_Aula17_UnidadeControle
	PORT (
	CLOCK_50 : IN STD_LOGIC;
	Funct : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	Opcode : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	Operacao_ULA_OUT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	Resulado_Operacao : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	Saida_PC : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	Tipo_Instrucao : OUT STD_LOGIC;
	ULA_A : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	ULA_B : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : MIPS_Aula17_UnidadeControle
	PORT MAP (
-- list connections between master ports and signals
	CLOCK_50 => CLOCK_50,
	Funct => Funct,
	Opcode => Opcode,
	Operacao_ULA_OUT => Operacao_ULA_OUT,
	Resulado_Operacao => Resulado_Operacao,
	Saida_PC => Saida_PC,
	Tipo_Instrucao => Tipo_Instrucao,
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
END MIPS_Aula17_UnidadeControle_arch;
