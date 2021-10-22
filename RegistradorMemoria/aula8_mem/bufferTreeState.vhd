library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bufferTreeState is
	generic(
		dataWidth: natural := 8
	);

  port   (
	 INPUT: in std_logic_vector(dataWidth-1 downto 0);
	 ENABLE: in std_logic;
	 OUTPUT: out std_logic_vector(dataWidth-1 downto 0)
  );
end entity;


architecture arch_name of bufferTreeState is
  
begin
				 
	OUTPUT <= INPUT when (ENABLE = '1') else (others => 'Z');
	
end architecture;