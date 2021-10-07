library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Decoder3x8 is
	
	generic (	
		dataWidth: natural := 4
	);
	port   (
	 -- Input ports
	 INPUT: in std_logic_vector(2 downto 0);
	 OUTPUT: out std_logic_vector(dataWidth-1 downto 0)
	);
end entity;


architecture arch_name of Decoder3x8 is
  constant Bloco0  : std_logic_vector(7 downto 0) := "00000001";
  constant Bloco1  : std_logic_vector(7 downto 0) := "00000010";
  constant Bloco2  : std_logic_vector(7 downto 0) := "00000100";
  constant Bloco3  : std_logic_vector(7 downto 0) := "00001000";
  constant Bloco4  : std_logic_vector(7 downto 0) := "00010000";
  constant Bloco5  : std_logic_vector(7 downto 0) := "00100000";
  constant Bloco6  : std_logic_vector(7 downto 0) := "01000000";
  constant Bloco7  : std_logic_vector(7 downto 0) := "10000000";
  
begin
	
	OUTPUT <= Bloco0 when (INPUT = "000") else
				 Bloco1 when (INPUT = "001") else
				 Bloco2 when (INPUT = "010") else
				 Bloco3 when (INPUT = "011") else
				 Bloco4 when (INPUT = "100") else
				 Bloco5 when (INPUT = "101") else
				 Bloco6 when (INPUT = "110") else
				 Bloco7 when (INPUT = "111") else
				 "00000000";
	
end architecture;