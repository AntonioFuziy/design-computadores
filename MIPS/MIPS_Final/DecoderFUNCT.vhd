library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity DecoderFUNCT is
  port   (
	 FUNCT: in std_logic_vector(5 downto 0);
	 OUTPUT: out std_logic_vector(2 downto 0)
  );
end entity;

architecture arch_name of DecoderFUNCT is
  constant ADD  : std_logic_vector(5 downto 0) := "100000";
  constant SUB  : std_logic_vector(5 downto 0) := "100010";
  constant ANDD : std_logic_vector(5 downto 0) := "100100";
  constant ORR : std_logic_vector(5 downto 0) := "100101";
  constant SLT : std_logic_vector(5 downto 0) := "101010";
  constant JR: std_logic_vector(5 downto 0) := "001000";
  
begin
	
	OUTPUT <= "000" when (FUNCT = ANDD) else 
            "001" when (FUNCT = ORR) else
            "010" when (FUNCT = ADD) else
            "110" when (FUNCT = SUB) else
            "111" when (FUNCT = SLT) else
            "000";
	
end architecture;