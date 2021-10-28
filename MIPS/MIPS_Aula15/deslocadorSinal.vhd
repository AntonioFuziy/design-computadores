
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity deslocadorSinal is
    generic(
		  larguraDados: natural := 32;
		  deslocamento: natural := 2  
	  );
    port(
        DATA_IN : in  std_logic_vector(larguraDados-1 downto 0);
        DATA_OUT: out std_logic_vector(larguraDados-1 downto 0)
	 );
end entity;

architecture componente of deslocadorSinal is
    begin
        DATA_OUT <= DATA_IN(29 downto 0) & "00";
end architecture;