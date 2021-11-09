library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ULA_31bits is
   port(
      entradaA: in std_logic;
		entradaB: in std_logic;
      inverteB: in std_logic;
		less:  in std_logic;
		carryIn: in std_logic;
		operacao: in std_logic_vector(1 downto 0);
		carryOut: out std_logic;
      saida: out std_logic
   );
end entity;

architecture componente of ULA_31bits is
   signal saida_MUX_entradaB: std_logic;
   signal AND_Entrada0: std_logic;
   signal OR_Entrada1: std_logic;
   signal Saida_Somador: std_logic;

begin

AND_Entrada0 <= (entradaA and saida_MUX_entradaB);
OR_Entrada1 <= (entradaA or saida_MUX_entradaB);
	
MUX_entradaB: entity work.muxGenerico2x1
   port map( 
      entradaA_MUX => entradaB,
      entradaB_MUX => not(entradaB),
      seletor_MUX => inverteB,
      saida_MUX => saida_MUX_entradaB
   );

somadorMux :  entity work.somadorGenerico
   port map( 
      entradaA => entradaA, 
      entradaB => saida_MUX_entradaB, 
      carryIn => carryIn,
      carryOut => carryOut,
      saida => Saida_Somador
   );

MUX_Resultado: entity work.muxGenerico4x1
   port map( 
      entradaA_MUX => AND_Entrada0,
      entradaB_MUX => OR_Entrada1,
      entradaC_MUX => Saida_Somador,
      entradaD_MUX => less,
      seletor_MUX => operacao,
      saida_MUX => saida
   );

end architecture;