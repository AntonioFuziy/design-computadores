
library ieee;
use ieee.std_logic_1164.all;

entity estensorSinalGenerico is
    generic
    (
        larguraDadoEntrada : natural := 16;
        larguraDadoSaida : natural := 32
    );
    port
    (
        estendeSinal_IN : in  std_logic_vector(larguraDadoEntrada-1 downto 0);
        ORI: in std_logic;
        estendeSinal_OUT: out std_logic_vector(larguraDadoSaida-1 downto 0)
    );
end entity;

architecture comportamento of estensorSinalGenerico is
    signal saida_MUX_Extensor: std_logic;
    begin
        MUX_Estensor: entity work.muxGenerico2x1_Bit
        port map( 
            entradaA_MUX => estendeSinal_IN(15),
            entradaB_MUX => '0',
            seletor_MUX => ORI,
            saida_MUX => saida_MUX_Extensor
        );

estendeSinal_OUT <= (31 downto 16 => saida_MUX_Extensor) & estendeSinal_IN;

end architecture;