library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity logicaDesvio is
	generic ( larguraDados : natural := 2);
    port (
       SelMUX_ROM : out std_logic_vector(larguraDados-1 downto 0);
       RET, JSR, JEQ, FLAG_COMP, SelMUX_JMP_PC : in std_logic
	  );
end entity;

architecture comportamento of logicaDesvio is
begin
	SelMUX_ROM <= "01" when (JSR = '1') else 
					  "01" when (JEQ = '1' and FLAG_COMP = '1') else
					  "10" when (RET = '1') else
					  "01" when (SelMUX_JMP_PC = '1') else
					  "00";
end architecture;