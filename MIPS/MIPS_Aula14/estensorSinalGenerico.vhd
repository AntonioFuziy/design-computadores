
library ieee;
use ieee.std_logic_1164.all;

entity estensorSinalGenerico is
    generic
    (
        larguraDadoEntrada : natural  :=    16;
        larguraDadoSaida   : natural  :=    32
    );
    port
    (
        estendeSinal_IN : in  std_logic_vector(larguraDadoEntrada-1 downto 0);
        estendeSinal_OUT: out std_logic_vector(larguraDadoSaida-1 downto 0)
    );
end entity;

architecture comportamento of estensorSinalGenerico is
begin
    process (estendeSinal_IN) is
    begin
            if (estendeSinal_IN(larguraDadoEntrada-1) = '1') then
                estendeSinal_OUT <= (larguraDadoSaida-1 downto larguraDadoEntrada => '1') & estendeSinal_IN;
            else
                estendeSinal_OUT <= (larguraDadoSaida-1 downto larguraDadoEntrada => '0') & estendeSinal_IN;
            end if;
    end process;
end architecture;