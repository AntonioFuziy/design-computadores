library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bufferThreeStateBit is
	generic(
		dataWidth: natural := 8
	);
	port   (
	 -- Input ports
	 INPUT: in std_logic;
	 ENABLE: in std_logic;
	 OUTPUT: out std_logic_vector(dataWidth-1 downto 0)
	);
end entity;


architecture arch_name of bufferThreeStateBit is
  
begin
				 
	OUTPUT <= ("0000000" & INPUT) when (ENABLE = '1') else (others => 'Z');
	
end architecture;