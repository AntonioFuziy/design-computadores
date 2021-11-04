library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MIPS_Aula16_ULA is
   generic ( 
      larguraDados : natural := 32
   );
   port(
      entradaA: in std_logic_vector(larguraDados-1 downto 0);
		entradaB: in std_logic_vector(larguraDados-1 downto 0);
      inverteB: in std_logic;
		operacao: in std_logic_vector(1 downto 0);
      flag_zero: out std_logic;
      saida: out std_logic_vector(larguraDados-1 downto 0)
   );
end entity;

architecture componente of MIPS_Aula16_ULA is

   signal bit_carryIN : std_logic;
   signal set : std_logic;
   signal carry0, carry1, carry2, carry3 : std_logic;
   signal carry4, carry5, carry6, carry7 : std_logic; 
   signal carry8, carry9, carry10, carry11 : std_logic;
   signal carry12, carry13, carry14, carry15 : std_logic;
   signal carry16, carry17, carry18, carry19 : std_logic;
   signal carry20, carry21, carry22, carry23 : std_logic;
   signal carry24, carry25, carry26, carry27 : std_logic;
   signal carry28, carry29, carry30 : std_logic;
	constant zero : std_logic_vector(larguraDados-1 downto 0) := (others => '0');

begin

bit_carryIN <= inverteB;
flag_zero <= '1' when unsigned(saida) = unsigned(zero) else '0';

ULA_0: entity work.ULA_31bits
   port map(
      entradaA =>  entradaA(0),
      entradaB =>  entradaB(0),
      inverteB =>  inverteB,
      less =>  set,
      operacao =>  operacao,
      carryIn =>  bit_carryIN,
      carryOut => carry0,
      saida => saida(0) 
   );

ULA_1: entity work.ULA_31bits
   port map(
      entradaA =>  entradaA(1),
      entradaB =>  entradaB(1),
      inverteB =>  inverteB,
      less =>  '0',
      operacao =>  operacao,
      carryIn =>  carry0,
      carryOut => carry1,
      saida => saida(1) 
   );

ULA_2: entity work.ULA_31bits
   port map(
      entradaA =>  entradaA(2),
      entradaB =>  entradaB(2),
      inverteB =>  inverteB,
      less =>  '0',
      operacao =>  operacao,
      carryIn =>  carry1,
      carryOut => carry2,
      saida => saida(2) 
   );

ULA_3: entity work.ULA_31bits
   port map(
      entradaA =>  entradaA(3),
      entradaB =>  entradaB(3),
      inverteB =>  inverteB,
      less =>  '0',
      operacao =>  operacao,
      carryIn =>  carry2,
      carryOut => carry3,
      saida => saida(3) 
   );

ULA_4: entity work.ULA_31bits
   port map(
      entradaA =>  entradaA(4),
      entradaB =>  entradaB(4),
      inverteB =>  inverteB,
      less =>  '0',
      operacao =>  operacao,
      carryIn =>  carry3,
      carryOut => carry4,
      saida => saida(4) 
   );

ULA_5: entity work.ULA_31bits
   port map(
      entradaA =>  entradaA(5),
      entradaB =>  entradaB(5),
      inverteB =>  inverteB,
      less =>  '0',
      operacao =>  operacao,
      carryIn =>  carry4,
      carryOut => carry5,
      saida => saida(5) 
   );

ULA_6: entity work.ULA_31bits
   port map(
      entradaA =>  entradaA(6),
      entradaB =>  entradaB(6),
      inverteB =>  inverteB,
      less =>  '0',
      operacao =>  operacao,
      carryIn =>  carry5,
      carryOut => carry6,
      saida => saida(6) 
   );

ULA_7: entity work.ULA_31bits
   port map(
      entradaA =>  entradaA(7),
      entradaB =>  entradaB(7),
      inverteB =>  inverteB,
      less =>  '0',
      operacao =>  operacao,
      carryIn =>  carry6,
      carryOut => carry7,
      saida => saida(7) 
   );

ULA_8: entity work.ULA_31bits
   port map(
      entradaA =>  entradaA(8),
      entradaB =>  entradaB(8),
      inverteB =>  inverteB,
      less =>  '0',
      operacao =>  operacao,
      carryIn =>  carry7,
      carryOut => carry8,
      saida => saida(8) 
   );

ULA_9: entity work.ULA_31bits
   port map(
      entradaA =>  entradaA(9),
      entradaB =>  entradaB(9),
      inverteB =>  inverteB,
      less =>  set,
      operacao =>  operacao,
      carryIn =>  carry8,
      carryOut => carry9,
      saida => saida(9) 
   );

ULA_10: entity work.ULA_31bits
   port map(
      entradaA =>  entradaA(10),
      entradaB =>  entradaB(10),
      inverteB =>  inverteB,
      less =>  '0',
      operacao =>  operacao,
      carryIn =>  carry9,
      carryOut => carry10,
      saida => saida(10) 
   );

ULA_11: entity work.ULA_31bits
   port map(
      entradaA =>  entradaA(11),
      entradaB =>  entradaB(11),
      inverteB =>  inverteB,
      less =>  '0',
      operacao =>  operacao,
      carryIn =>  carry10,
      carryOut => carry11,
      saida => saida(11) 
   );

ULA_12: entity work.ULA_31bits
   port map(
      entradaA =>  entradaA(12),
      entradaB =>  entradaB(12),
      inverteB =>  inverteB,
      less =>  '0',
      operacao =>  operacao,
      carryIn =>  carry11,
      carryOut => carry12,
      saida => saida(12) 
   );

ULA_13: entity work.ULA_31bits
   port map(
      entradaA =>  entradaA(13),
      entradaB =>  entradaB(13),
      inverteB =>  inverteB,
      less =>  '0',
      operacao =>  operacao,
      carryIn =>  carry12,
      carryOut => carry13,
      saida => saida(13) 
   );

ULA_14: entity work.ULA_31bits
   port map(
      entradaA =>  entradaA(14),
      entradaB =>  entradaB(14),
      inverteB =>  inverteB,
      less =>  '0',
      operacao =>  operacao,
      carryIn =>  carry13,
      carryOut => carry14,
      saida => saida(14) 
   );

ULA_15: entity work.ULA_31bits
   port map(
      entradaA =>  entradaA(15),
      entradaB =>  entradaB(15),
      inverteB =>  inverteB,
      less =>  '0',
      operacao =>  operacao,
      carryIn =>  carry14,
      carryOut => carry15,
      saida => saida(15) 
   );

ULA_16: entity work.ULA_31bits
   port map(
      entradaA =>  entradaA(16),
      entradaB =>  entradaB(16),
      inverteB =>  inverteB,
      less =>  '0',
      operacao =>  operacao,
      carryIn =>  carry15,
      carryOut => carry16,
      saida => saida(16) 
   );

ULA_17: entity work.ULA_31bits
   port map(
      entradaA =>  entradaA(17),
      entradaB =>  entradaB(17),
      inverteB =>  inverteB,
      less =>  '0',
      operacao =>  operacao,
      carryIn =>  carry16,
      carryOut => carry17,
      saida => saida(17) 
   );

ULA_18: entity work.ULA_31bits
   port map(
      entradaA =>  entradaA(18),
      entradaB =>  entradaB(18),
      inverteB =>  inverteB,
      less =>  set,
      operacao =>  operacao,
      carryIn =>  carry17,
      carryOut => carry18,
      saida => saida(18) 
   );

ULA_19: entity work.ULA_31bits
   port map(
      entradaA =>  entradaA(19),
      entradaB =>  entradaB(19),
      inverteB =>  inverteB,
      less =>  '0',
      operacao =>  operacao,
      carryIn =>  carry18,
      carryOut => carry19,
      saida => saida(19) 
   );

ULA_20: entity work.ULA_31bits
   port map(
      entradaA =>  entradaA(20),
      entradaB =>  entradaB(20),
      inverteB =>  inverteB,
      less =>  '0',
      operacao =>  operacao,
      carryIn =>  carry19,
      carryOut => carry20,
      saida => saida(20) 
   );

ULA_21: entity work.ULA_31bits
   port map(
      entradaA =>  entradaA(21),
      entradaB =>  entradaB(21),
      inverteB =>  inverteB,
      less =>  '0',
      operacao =>  operacao,
      carryIn =>  carry20,
      carryOut => carry21,
      saida => saida(21) 
   );

ULA_22: entity work.ULA_31bits
   port map(
      entradaA =>  entradaA(22),
      entradaB =>  entradaB(22),
      inverteB =>  inverteB,
      less =>  '0',
      operacao =>  operacao,
      carryIn =>  carry21,
      carryOut => carry22,
      saida => saida(22) 
   );

ULA_23: entity work.ULA_31bits
   port map(
      entradaA =>  entradaA(23),
      entradaB =>  entradaB(23),
      inverteB =>  inverteB,
      less =>  '0',
      operacao =>  operacao,
      carryIn =>  carry22,
      carryOut => carry23,
      saida => saida(23) 
   );

ULA_24: entity work.ULA_31bits
   port map(
      entradaA =>  entradaA(24),
      entradaB =>  entradaB(24),
      inverteB =>  inverteB,
      less =>  '0',
      operacao =>  operacao,
      carryIn =>  carry23,
      carryOut => carry24,
      saida => saida(24) 
   );

ULA_25: entity work.ULA_31bits
   port map(
      entradaA =>  entradaA(25),
      entradaB =>  entradaB(25),
      inverteB =>  inverteB,
      less =>  '0',
      operacao =>  operacao,
      carryIn =>  carry24,
      carryOut => carry25,
      saida => saida(25) 
   );

ULA_26: entity work.ULA_31bits
   port map(
      entradaA =>  entradaA(26),
      entradaB =>  entradaB(26),
      inverteB =>  inverteB,
      less =>  '0',
      operacao =>  operacao,
      carryIn =>  carry25,
      carryOut => carry26,
      saida => saida(26) 
   );

ULA_27: entity work.ULA_31bits
   port map(
      entradaA =>  entradaA(27),
      entradaB =>  entradaB(27),
      inverteB =>  inverteB,
      less =>  set,
      operacao =>  operacao,
      carryIn =>  carry26,
      carryOut => carry27,
      saida => saida(27) 
   );

ULA_28: entity work.ULA_31bits
   port map(
      entradaA =>  entradaA(28),
      entradaB =>  entradaB(28),
      inverteB =>  inverteB,
      less =>  '0',
      operacao =>  operacao,
      carryIn =>  carry27,
      carryOut => carry28,
      saida => saida(28) 
   );

ULA_29: entity work.ULA_31bits
   port map(
      entradaA =>  entradaA(29),
      entradaB =>  entradaB(29),
      inverteB =>  inverteB,
      less =>  '0',
      operacao =>  operacao,
      carryIn =>  carry28,
      carryOut => carry29,
      saida => saida(29) 
   );

ULA_30: entity work.ULA_31bits
   port map(
      entradaA =>  entradaA(30),
      entradaB =>  entradaB(30),
      inverteB =>  inverteB,
      less =>  '0',
      operacao =>  operacao,
      carryIn =>  carry29,
      carryOut => carry30,
      saida => saida(30) 
   );

ULA_31: entity work.ULA_Overflow
   port map(
      entradaA =>  entradaA(31),
      entradaB =>  entradaB(31),
      inverteB =>  inverteB,
      less =>  '0',
      operacao =>  operacao,
      carryIn =>  carry30,
      set => set,
      saida => saida(31) 
   );

end architecture;