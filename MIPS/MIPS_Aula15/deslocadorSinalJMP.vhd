library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity deslocadorSinalJMP is
    generic(
        larguraDadosIn : natural := 26;
        larguraDadosOut : natural := 28;
		  deslocamento: natural := 2  
	 );
    port(
        DATA_IN : in  std_logic_vector(larguraDadosIn-1 downto 0);
        DATA_OUT: out std_logic_vector(larguraDadosOut-1 downto 0)
	 );
end entity;

architecture componente of deslocadorSinalJMP is
    begin
        DATA_OUT <= DATA_IN(larguraDadosIn-1 downto 0) & "00";
end architecture;