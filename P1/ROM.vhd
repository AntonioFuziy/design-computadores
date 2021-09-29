library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity ROM is
   generic (
          dataWidth: natural := 8;
          addrWidth: natural := 4
    );
   port (
          Endereco : in std_logic_vector (addrWidth-1 DOWNTO 0);
          Dado : out std_logic_vector (dataWidth-1 DOWNTO 0)
    );
end entity;

architecture assincrona of ROM is
  constant NOP : std_logic_vector(3 downto 0) := "0000";
  constant LDA : std_logic_vector(3 downto 0) := "0001";
  constant SOMA : std_logic_vector(3 downto 0) := "0010";
  constant SUB : std_logic_vector(3 downto 0) := "0011";
  constant LDI : std_logic_vector(3 downto 0) := "0100";
  constant STA : std_logic_vector(3 downto 0) := "0101"; 
  constant JMP : std_logic_vector(3 downto 0) := "0110"; 
  constant JEQ : std_logic_vector(3 downto 0) := "0111"; 
  constant CEQ : std_logic_vector(3 downto 0) := "1000"; 
  constant JSR : std_logic_vector(3 downto 0) := "1001"; 
  constant RET : std_logic_vector(3 downto 0) := "1010"; 

  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin
		
		-- ========================================================================
		-- Escrevendo 0 nos displays
		-- ========================================================================
		tmp(0) := LDI & '0' & x"00"; -- Carregando 0 no acumulador
		tmp(1) := STA & '1' & x"20"; -- DISPLAY 0 MEM[288]
		tmp(2) := STA & '1' & x"21"; -- DISPLAY 1 MEM[289]
		tmp(3) := STA & '1' & x"22"; -- DISPLAY 2 MEM[290]
		tmp(4) := STA & '1' & x"23"; -- DISPLAY 3 MEM[291]
		tmp(5) := STA & '1' & x"24"; -- DISPLAY 4 MEM[292]
		tmp(6) := STA & '1' & x"25"; -- DISPLAY 5 MEM[293]
		
		-- ========================================================================
		-- Apagando os LEDS
		-- ========================================================================
		tmp(7) := STA & '1' & x"00"; -- Apagando LEDS MEM[256]
		tmp(8) := STA & '1' & x"01"; -- Apagando LEDS MEM[257]
		tmp(9) := STA & '1' & x"02"; -- Apagando LEDS MEM[258]
		
		-- ========================================================================
		-- Inicializando variaveis dos displays
		-- ========================================================================	
		tmp(10) := STA & '0' & x"00"; -- Armazenando 0 no MEM[0] (UNIDADE)
		tmp(11) := STA & '0' & x"01"; -- Armazenando 0 no MEM[1] (DEZENA)
		tmp(12) := STA & '0' & x"02"; -- Armazenando 0 no MEM[2] (MILHAR)
		
		-- ========================================================================
		-- Armazenando limite de contagem e o incremento do contador
		-- ========================================================================	
		tmp(13) := LDI & '0' & x"01"; -- Carregando 1 no acumulador
		tmp(14) := STA & '0' & x"0A"; -- Armazenando incremento no MEM[10]
		tmp(15) := LDI & '0' & x"0A"; -- Carregando 10 no acumulador
		tmp(16) := STA & '0' & x"0B"; -- Armazenando incremento no MEM[11]
		tmp(17) := LDI & '0' & x"00"; -- Carregando 0 no acumulador
		tmp(18) := STA & '0' & x"0C"; -- Valor de comparacao no MEM[12]
		
		
--		tmp(3) := LDI & '0' & x"01"; -- MEM[288]
--		tmp(4) := STA & '0' & x"01"; -- MEM[288]
--		tmp(5) := NOP & '0' & x"00"; -- MEM[288]
--		
--		tmp(6) := LDA & '1' & x"60";
--		tmp(7) := CEQ & '0' & x"00";
--		tmp(8) := JEQ & '0' & x"0A";
--		tmp(9) := JSR & '0' & x"20";
--		tmp(10) := NOP & '0' & x"00";
--		tmp(11) := JMP & '0' & x"05";
--		
--		tmp(32) := STA & '1' & x"FF";
--		tmp(33) := LDA & '0' & x"02";
--		tmp(34) := SOMA & '0' & x"01";
--		tmp(35) := STA & '0' & x"02";
--		tmp(36) := STA & '1' & x"02";
--		tmp(37) := RET & '0' & x"00";
			
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;