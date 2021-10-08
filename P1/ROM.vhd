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
	constant SOMA: std_logic_vector(3 downto 0) := "0010";
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
		
		-- MEM[256] LEDS (7 downto 0)
		-- MEM[257] LED8
		-- MEM[258] LED9

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
		
		tmp(24) := STA & '0' & x"14"; -- Armazenando limite no MEM[20]
		tmp(25) := STA & '0' & x"15"; -- Armazenando limite no MEM[21]
		tmp(26) := STA & '0' & x"16"; -- Armazenando limite no MEM[22]
		tmp(27) := STA & '0' & x"17"; -- Armazenando limite no MEM[23]
		tmp(28) := STA & '0' & x"18"; -- Armazenando limite no MEM[24]
		tmp(29) := STA & '0' & x"19"; -- Armazenando limite no MEM[25]
		
		tmp(30) := LDI & '0' & x"0A"; -- Carregando 10 no acumulador
		tmp(31) := STA & '0' & x"0D"; -- Valor de comparacao no MEM[13]


		-- ========================================================================
		-- LOOP PRINCIPAL (CHECA KEY0, KEY1 E O FPGA RESET)
		-- ========================================================================	
		tmp(32) := NOP & '0' & x"00";
		tmp(33) := LDA & '0' & x"06"; -- Olha pro valor da flag de inibir
		tmp(34) := CEQ & '0' & x"0B"; -- Compara o valor da flag com 1
		tmp(35) := JEQ & '0' & x"28"; -- Pula quando a flag esta zerada ignorando a KEY0
		
		tmp(36) := LDA & '1' & x"60"; -- Observa o valor da KEY0
		tmp(37) := CEQ & '0' & x"0A"; -- Compara o valor da KEY0 com 1
		tmp(38) := JEQ & '0' & x"28"; -- Caso a KEY0 for igual a 1, pula para o incremento
		tmp(39) := JSR & '0' & x"36"; -- Caso a KEY0 for igual a 1, pula para o incremento
		
		tmp(40) := LDA & '1' & x"61"; -- Observa o valor da KEY1
		tmp(41) := CEQ & '0' & x"0A"; -- Compara o valor da KEY1 com 1		
		tmp(42) := JEQ & '0' & x"2C"; -- Caso a KEY1 for igual a 1, pula para a definicao do limite
		tmp(43) := JSR & '0' & x"BD"; -- Caso a KEY1 for igual a 1, pula para o limite
		tmp(44) := JSR & '0' & x"A1"; -- Pula pra limite de contagem
		
		
		tmp(45) := LDA & '1' & x"64"; -- Observa o valor do FPGA RESET
		tmp(46) := CEQ & '0' & x"0B"; -- Compara o valor do FPGA RESET com 1		
		tmp(47) := JEQ & '0' & x"31"; -- Caso a FPGA RESET for igual a 1, pula para a reset
		tmp(48) := JSR & '0' & x"96"; -- Caso a FPGA RESET for igual a 1, pula para o resetar a placa
		
		tmp(49) := JSR & '0' & x"78"; -- Pula para atualizar os DISPLAYS
		tmp(50) := JMP & '0' & x"20"; -- Volta para o loop principal
		
		-- ========================================================================
		-- LOOP DE INCREMENTO (KEY0 SUB-ROTINA)
		-- ========================================================================	
		tmp(54) := STA & '1' & x"FF"; -- Zerar KEY0
		
		tmp(55) := LDA & '0' & x"00"; -- Carrega MEM[0]
		tmp(56) := SOMA & '0' & x"0B"; -- Soma 1 em MEM[0]
		tmp(57) := STA & '0' & x"00"; -- Armazena valor da soma no MEM[0]
		tmp(58) := CEQ & '0' & x"0D"; -- Compara o valor de MEM[0] com 10
		tmp(59) := JEQ & '0' & x"3D"; -- Pula pra checar a dezena
		tmp(60) := JMP & '0' & x"6F"; -- Vai pra sub-rotina do incremento
		
		
		tmp(61) := LDA & '0' & x"0A"; -- Carrega MEM[10] = 0
		tmp(62) := STA & '0' & x"00"; -- Zera a unidade
		
		tmp(63) := LDA & '0' & x"01"; -- Carrega MEM[1]
		tmp(64) := SOMA & '0' & x"0B"; -- Soma 1 em MEM[1]
		tmp(65) := STA & '0' & x"01"; -- Armazena valor da soma no MEM[1]
		tmp(66) := CEQ & '0' & x"0D"; -- Compara o valor de MEM[1] com 10
		tmp(67) := JEQ & '0' & x"45"; -- Pula pra checar a centena
		tmp(68) := JMP & '0' & x"6F"; -- Vai pra sub-rotina do incremento
		
		
		tmp(69) := LDA & '0' & x"0A"; -- Carrega MEM[10] = 0
		tmp(70) := STA & '0' & x"00"; -- Zera a dezena
		
		tmp(71) := LDA & '0' & x"02"; -- Carrega MEM[2]
		tmp(72) := SOMA & '0' & x"0B"; -- Soma 1 em MEM[2]
		tmp(73) := STA & '0' & x"02"; -- Armazena valor da soma no MEM[2]
		tmp(74) := CEQ & '0' & x"0D"; -- Compara o valor de MEM[2] com 10
		tmp(75) := JEQ & '0' & x"4D"; -- Pula pra checar a unidade de milhar
		tmp(76) := JMP & '0' & x"6F"; -- Vai pra sub-rotina do incremento
		
		
		tmp(77) := LDA & '0' & x"0A"; -- Carrega MEM[10] = 0
		tmp(78) := STA & '0' & x"00"; -- Zera a centena
		
		tmp(79) := LDA & '0' & x"03"; -- Carrega MEM[3]
		tmp(80) := SOMA & '0' & x"0B"; -- Soma 1 em MEM[3]
		tmp(81) := STA & '0' & x"03"; -- Armazena valor da soma no MEM[3]
		tmp(82) := CEQ & '0' & x"0D"; -- Compara o valor de MEM[3] com 10
		tmp(83) := JEQ & '0' & x"55"; -- Pula pra checar dezena de milhar
		tmp(84) := JMP & '0' & x"6F"; -- Vai pra sub-rotina do incremento
		
		
		tmp(85) := LDA & '0' & x"0A"; -- Carrega MEM[10] = 0
		tmp(86) := STA & '0' & x"00"; -- Zera a unidade de milhar
		
		tmp(87) := LDA & '0' & x"04"; -- Carrega MEM[4]
		tmp(88) := SOMA & '0' & x"0B"; -- Soma 1 em MEM[4]
		tmp(89) := STA & '0' & x"04"; -- Armazena valor da soma no MEM[4]
		tmp(90) := CEQ & '0' & x"0D"; -- Compara o valor de MEM[4] com 10
		tmp(91) := JEQ & '0' & x"5D"; -- Pula pra checar a centena de milhar
		tmp(92) := JMP & '0' & x"6F"; -- Vai pra sub-rotina do incremento
		
		
		tmp(93) := LDA & '0' & x"0A"; -- Carrega MEM[10] = 0
		tmp(94) := STA & '0' & x"00"; -- Zera a dezena de milhar
		
		tmp(95) := LDA & '0' & x"05"; -- Carrega MEM[5]
		tmp(96) := SOMA & '0' & x"0B"; -- Soma 1 em MEM[5]
		tmp(97) := STA & '0' & x"05"; -- Armazena valor da soma no MEM[5]
		tmp(98) := CEQ & '0' & x"0D"; -- Compara o valor de MEM[5] com 10
		tmp(99) := JEQ & '0' & x"65"; -- Pula pra flag de inibir contagem
		tmp(100) := JMP & '0' & x"6F"; -- Vai pra sub-rotina do incremento
		
		tmp(101) := LDA & '0' & x"0B"; -- Carrega MEM[11] = 1
		tmp(102) := STA & '0' & x"06"; -- Ativa Flag de inibir contagem
		tmp(103) := STA & '1' & x"02"; -- Ativa LED9 de limite da contagem
		
		tmp(104) := RET & '0' & x"00"; -- Retorna da sub-rotina de incremento

		-- ========================================================================
		-- ATUALIZA DISPLAYS COM OS VALORES CORRESPONDENTES
		-- ========================================================================	
		
		tmp(120) := LDA & '0' & x"00"; -- Carrega MEM[0]
		tmp(121) := STA & '1' & x"20"; -- Carrega o valor de MEM[0] no HEX0 = MEM[288]
		
		tmp(122) := LDA & '0' & x"01"; -- Carrega MEM[1]
		tmp(123) := STA & '1' & x"21"; -- Carrega o valor de MEM[1] no HEX1 = MEM[289]
		
		tmp(124) := LDA & '0' & x"02"; -- Carrega MEM[2]
		tmp(125) := STA & '1' & x"22"; -- Carrega o valor de MEM[2] no HEX2 = MEM[290]
		
		tmp(126) := LDA & '0' & x"03"; -- Carrega MEM[3]
		tmp(127) := STA & '1' & x"23"; -- Carrega o valor de MEM[3] no HEX3 = MEM[291]
		
		tmp(128) := LDA & '0' & x"04"; -- Carrega MEM[4]
		tmp(129) := STA & '1' & x"24"; -- Carrega o valor de MEM[4] no HEX4 = MEM[292]
		
		tmp(130) := LDA & '0' & x"05"; -- Carrega MEM[5]
		tmp(131) := STA & '1' & x"25"; -- Carrega o valor de MEM[5] no HEX5 = MEM[293]
		
		tmp(132) := JMP & '0' & x"19"; -- Volta para o LOOP PRINCIPAL


		-- ========================================================================
		-- REINICIALIZAR PLACA
		-- ========================================================================	
		
		tmp(150) := LDA & '0' & x"0A"; -- Carrega MEM[10] = 0
		tmp(151) := STA & '0' & x"00"; -- Armazena 0 no MEM[0]
		tmp(152) := STA & '0' & x"01"; -- Armazena 0 no MEM[1]
		tmp(153) := STA & '0' & x"02"; -- Armazena 0 no MEM[2]
		tmp(154) := STA & '0' & x"03"; -- Armazena 0 no MEM[3]
		tmp(155) := STA & '0' & x"04"; -- Armazena 0 no MEM[4]
		tmp(156) := STA & '0' & x"05"; -- Armazena 0 no MEM[5]
		
		tmp(157) := STA & '0' & x"06"; -- Zerando Flag de inibir 
		tmp(158) := STA & '1' & x"01"; -- Zera o LED8 de Overflow
		tmp(159) := STA & '1' & x"02"; -- Zera o LED9 de Limite Atingido
		tmp(160) := RET & '0' & x"00"; -- Retorna da sub-rotina do RESET_FPGA


		
		-- ========================================================================
		-- CHECAGEM DO LIMITE DA CONTAGEM
		-- ========================================================================	
		
		--checando unidade
		tmp(161) := LDA & '0' & x"14"; -- Carrega limite unidade = MEM[20]
		tmp(162) := CEQ & '0' & x"0C"; -- Compara o valor de MEM[12] com a unidade
		tmp(163) := JEQ & '0' & x"A5"; -- Pula pra checar a unidade
		tmp(164) := RET & '0' & x"00"; -- Retorna da sub-rotina da checagem
		
		--checando centena
		tmp(165) := LDA & '0' & x"15"; -- Carrega limite dezena = MEM[21]
		tmp(166) := CEQ & '0' & x"0D"; -- Compara o valor de MEM[12] com a dezena
		tmp(167) := JEQ & '0' & x"A9"; -- Pula pra checar a dezena
		tmp(168) := RET & '0' & x"00"; -- Retorna da sub-rotina da checagem
		
		--checando centena
		tmp(169) := LDA & '0' & x"16"; -- Carrega limite centena = MEM[22]
		tmp(170) := CEQ & '0' & x"0D"; -- Compara o valor de MEM[12] com a centena
		tmp(171) := JEQ & '0' & x"AD"; -- Pula pra checar a centena
		tmp(172) := RET & '0' & x"00"; -- Retorna da sub-rotina da checagem
		
		--checando unidade de milhar
		tmp(173) := LDA & '0' & x"17"; -- Carrega limite unidade de milhar = MEM[23]
		tmp(174) := CEQ & '0' & x"0D"; -- Compara o valor de MEM[12] com a unidade de milhar
		tmp(175) := JEQ & '0' & x"B1"; -- Pula pra checar a unidade de milhar
		tmp(176) := RET & '0' & x"00"; -- Retorna da sub-rotina da checagem
		
		--checando dezena de milhar
		tmp(177) := LDA & '0' & x"18"; -- Carrega limite dezena de milhar = MEM[24]
		tmp(178) := CEQ & '0' & x"0D"; -- Compara o valor de MEM[12] com a dezena de milhar
		tmp(179) := JEQ & '0' & x"B5"; -- Pula pra checar a dezena de milhar
		tmp(180) := RET & '0' & x"00"; -- Retorna da sub-rotina da checagem
		
		--checando centena de milhar
		tmp(181) := LDA & '0' & x"19"; -- Carrega limite centena de milhar = MEM[25]
		tmp(182) := CEQ & '0' & x"0D"; -- Compara o valor de MEM[12] com a centena de milhar
		tmp(183) := JEQ & '0' & x"B9"; -- Pula pra checar a centena de milhar
		tmp(184) := RET & '0' & x"00"; -- Retorna da sub-rotina da checagem
		
		--checando flags
		tmp(185) := LDA & '0' & x"0B"; -- Carrega limite MEM[11] = 1
		tmp(186) := STA & '0' & x"06"; -- Inibe a contagem
		tmp(187) := STA & '1' & x"01"; -- Ativa o LED9
		tmp(188) := RET & '0' & x"00"; -- Retorna da sub-rotina da checagem
		
		

		-- ========================================================================
		-- LOOP DE DEFINIR LIMITE (KEY1 SUB ROTINA) UTILIZAR OS SW(7 downto 0)
		-- ========================================================================	
		
		tmp(189) := STA & '1' & x"FE"; -- Zera a KEY1
		tmp(191) := LDA & '0' & x"0B"; -- Carrega ROM[11] = 1
		tmp(190) := STA & '1' & x"00"; -- Ativa LED7
		
		tmp(191) := LDA & '1' & x"61"; -- Olha pra KEY1
		tmp(192) := CEQ & '0' & x"0A"; -- Compara o valor da KEY1 com 0
		tmp(193) := LDA & '1' & x"40"; -- Verifica SW(7)
		tmp(194) := JEQ & '0' & x"C4"; -- Pula para dezena
		tmp(195) := STA & '0' & x"14"; -- Armazena novo limite para unidade
		
		
		tmp(196) := STA & '1' & x"FE"; -- Zera a KEY1
		tmp(197) := LDI & '0' & x"02"; -- Carrega 2 no imediato
		tmp(198) := STA & '1' & x"00"; -- Ativa LED7
		
		tmp(199) := LDA & '1' & x"61"; -- Olha pra KEY1
		tmp(200) := CEQ & '0' & x"0A"; -- Compara o valor da KEY1 com 0
		tmp(201) := LDA & '1' & x"40"; -- Verifica SW(7)
		tmp(202) := JEQ & '0' & x"CC"; -- Pula para dezena
		tmp(203) := STA & '0' & x"15"; -- Armazena novo limite para dezena
		
		
		tmp(204) := STA & '1' & x"FE"; -- Zera a KEY1
		tmp(205) := LDI & '0' & x"04"; -- Carrega 4 no imediato
		tmp(206) := STA & '1' & x"00"; -- Ativa LED7
		
		tmp(207) := LDA & '1' & x"61"; -- Olha pra KEY1
		tmp(208) := CEQ & '0' & x"0A"; -- Compara o valor da KEY1 com 0
		tmp(209) := LDA & '1' & x"40"; -- Verifica SW(7)
		tmp(210) := JEQ & '0' & x"D4"; -- Pula para dezena
		tmp(211) := STA & '0' & x"16"; -- Armazena novo limite para centena
		
		
		tmp(212) := STA & '1' & x"FE"; -- Zera a KEY1
		tmp(213) := LDI & '0' & x"08"; -- Carrega 8 no imediato
		tmp(214) := STA & '1' & x"00"; -- Ativa LED7
		
		tmp(215) := LDA & '1' & x"61"; -- Olha pra KEY1
		tmp(216) := CEQ & '0' & x"0A"; -- Compara o valor da KEY1 com 0
		tmp(217) := LDA & '1' & x"40"; -- Verifica SW(7)
		tmp(218) := JEQ & '0' & x"DC"; -- Pula para dezena
		tmp(219) := STA & '0' & x"17"; -- Armazena novo limite para unidade de milhar
		
		
		tmp(220) := STA & '1' & x"FE"; -- Zera a KEY1
		tmp(221) := LDI & '0' & x"10"; -- Carrega 16 no imediato
		tmp(222) := STA & '1' & x"00"; -- Ativa LED7
		
		tmp(223) := LDA & '1' & x"61"; -- Olha pra KEY1
		tmp(224) := CEQ & '0' & x"0A"; -- Compara o valor da KEY1 com 0
		tmp(225) := LDA & '1' & x"40"; -- Verifica SW(7)
		tmp(226) := JEQ & '0' & x"E4"; -- Pula para dezena
		tmp(227) := STA & '0' & x"18"; -- Armazena novo limite para dezena de milhar
		
		
		tmp(228) := STA & '1' & x"FE"; -- Zera a KEY1
		tmp(229) := LDI & '0' & x"20"; -- Carrega 32 no imediato
		tmp(230) := STA & '1' & x"00"; -- Ativa LED7
		
		tmp(231) := LDA & '1' & x"61"; -- Olha pra KEY1
		tmp(232) := CEQ & '0' & x"0A"; -- Compara o valor da KEY1 com 0
		tmp(233) := LDA & '1' & x"40"; -- Verifica SW(7)
		tmp(234) := JEQ & '0' & x"EC"; -- Pula para Zerar KEY1
		tmp(235) := STA & '0' & x"19"; -- Armazena novo limite para centena de milhar
		
		tmp(236) := STA & '1' & x"FE"; -- Zerando KEY1
		tmp(237) := LDA & '0' & x"0A"; -- Carrega 0 no imediato
		tmp(238) := STA & '1' & x"00"; -- Zera o LED7
		tmp(239) := RET & '0' & x"00"; -- Zerando KEY1
		
		

        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;