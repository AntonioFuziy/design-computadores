
library ieee;
use ieee.std_logic_1164.all;

entity extensorSinalLUI is
    generic
    (
      larguraDadoEntrada : natural := 16;
      larguraDadoSaida : natural := 32
    );
    port
    (
      estendeSinal_IN : in  std_logic_vector(larguraDadoEntrada-1 downto 0);
      estendeSinal_OUT: out std_logic_vector(larguraDadoSaida-1 downto 0)
    );
end entity;

architecture comportamento of extensorSinalLUI is
  begin
    estendeSinal_OUT <= estendeSinal_IN & "0000000000000000";
end architecture;