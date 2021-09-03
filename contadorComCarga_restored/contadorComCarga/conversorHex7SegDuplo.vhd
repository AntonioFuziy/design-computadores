library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity conversorHex7SegDuplo is
    port
    (
        -- Input ports
        dadoHex : in  std_logic_vector(7 downto 0);
        -- Output ports
        saida_UNIDADE_7seg, saida_DEZENA_7seg : out std_logic_vector(6 downto 0)  -- := (others => '1')
    );
end entity;

architecture comportamento of conversorHex7SegDuplo is
   --
   --       0
   --      ---
   --     |   |
   --    5|   |1
   --     | 6 |
   --      ---
   --     |   |
   --    4|   |2
   --     |   |
   --      ---
   --       3
   --
    signal rasc_UNIDADE_Saida7seg, rasc_DEZENA_Saida7seg: std_logic_vector(6 downto 0);
	 
	 signal dadoHexUnidade, dadoHexDezena: std_logic_vector(7 downto 0);
begin

	 dadoHexUnidade <= STD_LOGIC_VECTOR(unsigned(dadoHex) mod 10);
	 dadoHexDezena <= STD_LOGIC_VECTOR(unsigned(dadoHex) / 10);
	 
    rasc_UNIDADE_Saida7seg <=    "1000000" when dadoHexUnidade="00000000" else ---0
                            "1111001" when dadoHexUnidade="00000001" else ---1
                            "0100100" when dadoHexUnidade="00000010" else ---2
                            "0110000" when dadoHexUnidade="00000011" else ---3
                            "0011001" when dadoHexUnidade="00000100" else ---4
                            "0010010" when dadoHexUnidade="00000101" else ---5
                            "0000010" when dadoHexUnidade="00000110" else ---6
                            "1111000" when dadoHexUnidade="00000111" else ---7
                            "0000000" when dadoHexUnidade="00001000" else ---8
                            "0010000" when dadoHexUnidade="00001001" else ---9
                            "0001000" when dadoHexUnidade="00001010" else ---A
                            "0000011" when dadoHexUnidade="00001011" else ---B
                            "1000110" when dadoHexUnidade="00001100" else ---C
                            "0100001" when dadoHexUnidade="00001101" else ---D
                            "0000110" when dadoHexUnidade="00001110" else ---E
                            "0001110" when dadoHexUnidade="00001111" else ---F
                            "1111111"; -- Apaga todos segmentos.

									 
	rasc_DEZENA_Saida7seg <=    "1000000" when dadoHexDezena="00000000" else ---0
                            "1111001" when dadoHexDezena="00000001" else ---1
                            "0100100" when dadoHexDezena="00000010" else ---2
                            "0110000" when dadoHexDezena="00000011" else ---3
                            "0011001" when dadoHexDezena="00000100" else ---4
                            "0010010" when dadoHexDezena="00000101" else ---5
                            "0000010" when dadoHexDezena="00000110" else ---6
                            "1111000" when dadoHexDezena="00000111" else ---7
                            "0000000" when dadoHexDezena="00001000" else ---8
                            "0010000" when dadoHexDezena="00001001" else ---9
                            "0001000" when dadoHexDezena="00001010" else ---A
                            "0000011" when dadoHexDezena="00001011" else ---B
                            "1000110" when dadoHexDezena="00001100" else ---C
                            "0100001" when dadoHexDezena="00001101" else ---D
                            "0000110" when dadoHexDezena="00001110" else ---E
                            "0001110" when dadoHexDezena="00001111" else ---F
                            "1111111"; -- Apaga todos segmentos.
									 
									 
    saida_UNIDADE_7seg <=         rasc_UNIDADE_Saida7seg;
	 saida_DEZENA_7seg <=        rasc_DEZENA_Saida7seg;
end architecture;