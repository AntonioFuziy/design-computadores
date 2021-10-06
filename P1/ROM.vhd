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
		
		-- MEM[0] = UNIDADE
		-- MEM[1] = DEZENA
		-- MEM[2] = CENTENA
		-- MEM[3] = UNIDADE DE MILHAR
		-- MEM[4] = DEZENA DE MILHAR 
		-- MEM[5] = CENTENA DE MILHAR

		-- MEM[6] = FLAG INIBE CONTAGEM

		-- MEM[10] = 0
		-- MEM[11] = 1
		-- MEM[12] = 9
		-- MEM[13] = 10

		-- MEM[288] DISPLAY 0
		-- MEM[289] DISPLAY 1
		-- MEM[290] DISPLAY 2
		-- MEM[291] DISPLAY 3
		-- MEM[292] DISPLAY 4
		-- MEM[293] DISPLAY 5

				
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
		tmp(7) := STA & '1' & x"00"; -- Apagando LEDS 0 downto 7 MEM[256]
		tmp(8) := STA & '1' & x"01"; -- Apagando LED8 MEM[257]
		tmp(9) := STA & '1' & x"02"; -- Apagando LED9 MEM[258]



		-- ========================================================================
		-- Inicializando variaveis dos displays
		-- ========================================================================	
		tmp(10) := STA & '0' & x"00"; -- Armazenando 0 no MEM[0] (UNIDADE)
		tmp(11) := STA & '0' & x"01"; -- Armazenando 0 no MEM[1] (DEZENA)
		tmp(12) := STA & '0' & x"02"; -- Armazenando 0 no MEM[2] (CENTENA)
		tmp(13) := STA & '0' & x"03"; -- Armazenando 0 no MEM[3] (UNIDADE DE MILHAR)
		tmp(14) := STA & '0' & x"04"; -- Armazenando 0 no MEM[4] (DEZENA DE MILHAR)
		tmp(15) := STA & '0' & x"05"; -- Armazenando 0 no MEM[5] (CENTENA DE MILHAR)



		-- ========================================================================
		-- Zerando flag de inibir contagem
		-- ========================================================================
		tmp(16) := STA & '0' & x"06"; -- Armazenando 0 no MEM[6] (ZERA FLAG DE INIBIR)

		-- ========================================================================
		-- Armazenando limite de contagem e o incremento do contador
		-- ========================================================================	
		tmp(17) := LDI & '0' & x"00"; -- Carregando 0 no acumulador
		tmp(18) := STA & '0' & x"0A"; -- Armazenando incremento no MEM[10]
		tmp(19) := LDI & '0' & x"01"; -- Carregando 1 no acumulador
		tmp(20) := STA & '0' & x"0B"; -- Armazenando incremento no MEM[11]
		tmp(21) := LDI & '0' & x"09"; -- Carregando 9 no acumulador
		tmp(22) := STA & '0' & x"0C"; -- Valor de comparacao no MEM[12]
		tmp(23) := LDI & '0' & x"0A"; -- Carregando 10 no acumulador
		tmp(24) := STA & '0' & x"0D"; -- Valor de comparacao no MEM[13]


		-- ========================================================================
		-- LOOP PRINCIPAL (CHECA KEY0, KEY1 E O FPGA RESET)
		-- ========================================================================	



		-- ========================================================================
		-- LOOP DE INCREMENTO (KEY0 SUB-ROTINA)
		-- ========================================================================	



		-- ========================================================================
		-- LOOP DE DEFINIR LIMITE (KEY1 SUB ROTINA) UTILIZAR OS SW(7 downto 0)
		-- ========================================================================	



		-- ========================================================================
		-- CHECAGEM DO LIMITE DA CONTAGEM
		-- ========================================================================	



		-- ========================================================================
		-- REINICIALIZAR PLACA
		-- ========================================================================	
			
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;