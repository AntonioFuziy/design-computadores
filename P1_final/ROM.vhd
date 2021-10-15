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
	
	constant R0 : std_logic_vector(1 downto 0) := "00"; 
	constant R1 : std_logic_vector(1 downto 0) := "01"; 
	constant R2 : std_logic_vector(1 downto 0) := "10"; 
	constant R3 : std_logic_vector(1 downto 0) := "11"; 

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

-- MEM[20] = limite da unidade
-- MEM[21] = limite da dezena
-- MEM[22] = limite da centena
-- MEM[23] = limite da unidade de milhar
-- MEM[24] = limite da dezena de milhar
-- MEM[25] = limite da centena de milhar

-- MEM[256] LEDS (7 downto 0) indicacao dos algarismos no modo de definicao de limite
-- MEM[257] LED8 Overflow
-- MEM[258] LED9 limite de contagem

-- MEM[288] DISPLAY 0
-- MEM[289] DISPLAY 1
-- MEM[290] DISPLAY 2
-- MEM[291] DISPLAY 3
-- MEM[292] DISPLAY 4
-- MEM[293] DISPLAY 5

		
-- ========================================================================
-- Escrevendo 0 nos displays
-- ========================================================================
	tmp(0) := LDI & R0 & '0' & x"00"; -- Carregando 0 no acumulador
	tmp(1) := STA & R0 & '1' & x"20"; -- DISPLAY 0 MEM[288]
	tmp(2) := STA & R0 & '1' & x"21"; -- DISPLAY 1 MEM[289]
	tmp(3) := STA & R0 & '1' & x"22"; -- DISPLAY 2 MEM[290]
	tmp(4) := STA & R0 & '1' & x"23"; -- DISPLAY 3 MEM[291]
	tmp(5) := STA & R0 & '1' & x"24"; -- DISPLAY 4 MEM[292]
	tmp(6) := STA & R0 & '1' & x"25"; -- DISPLAY 5 MEM[293]



-- ========================================================================
-- Apagando os LEDS
-- ========================================================================
	tmp(7) := STA & R0 & '1' & x"00"; -- Apagando LEDS 0 downto 7 MEM[256]
	tmp(8) := STA & R0 & '1' & x"01"; -- Apagando LED8 MEM[257]
	tmp(9) := STA & R0 & '1' & x"02"; -- Apagando LED9 MEM[258]



-- ========================================================================
-- Inicializando variaveis dos displays
-- ========================================================================	
	tmp(10) := STA & R0 & '0' & x"00"; -- Armazenando 0 no MEM[0] (UNIDADE)
	tmp(11) := STA & R0 & '0' & x"01"; -- Armazenando 0 no MEM[1] (DEZENA)
	tmp(12) := STA & R0 & '0' & x"02"; -- Armazenando 0 no MEM[2] (CENTENA)
	tmp(13) := STA & R0 & '0' & x"03"; -- Armazenando 0 no MEM[3] (UNIDADE DE MILHAR)
	tmp(14) := STA & R0 & '0' & x"04"; -- Armazenando 0 no MEM[4] (DEZENA DE MILHAR)
	tmp(15) := STA & R0 & '0' & x"05"; -- Armazenando 0 no MEM[5] (CENTENA DE MILHAR)



-- ========================================================================
-- Zerando flag de inibir contagem
-- ========================================================================
	tmp(16) := STA & R0 & '0' & x"06"; -- Armazenando 0 no MEM[6] (ZERA FLAG DE INIBIR)

-- ========================================================================
-- Armazenando Variaveis
-- ========================================================================	
	tmp(17) := LDI & R0 & '0' & x"00"; -- Carregando 0 no acumulador
	tmp(18) := STA & R0 & '0' & x"0A"; -- Armazenando incremento no MEM[10]
	
	tmp(19) := LDI & R0 & '0' & x"01"; -- Carregando 1 no acumulador
	tmp(20) := STA & R0 & '0' & x"0B"; -- Armazenando incremento no MEM[11]

	tmp(21) := LDI & R0 & '0' & x"09"; -- Carregando 9 no acumulador
	tmp(22) := STA & R0 & '0' & x"0C"; -- Valor de comparacao no MEM[12]	


-- ========================================================================
-- Armazenando limite de contagem
-- ========================================================================	
	tmp(24) := STA & R0 & '0' & x"14"; -- Armazenando limite da unidade no MEM[20]
--	tmp(25) := STA & R0 & '0' & x"15"; -- Armazenando limite da dezena no MEM[21]
	tmp(25) := STA & R0 & '0' & x"16"; -- Armazenando limite da centena no MEM[22]
--	tmp(27) := STA & R0 & '0' & x"17"; -- Armazenando limite da unidade de milhar no MEM[23]
--	tmp(28) := STA & R0 & '0' & x"18"; -- Armazenando limite da dezena de milhar no MEM[24]
--	tmp(29) := STA & R0 & '0' & x"19"; -- Armazenando limite da centena de milhar no MEM[25]
	
	tmp(26) := LDI & R0 & '0' & x"05"; -- Carregando 5 no Registrador 0
	tmp(27) := STA & R0 & '0' & x"15"; -- Armazenando limite da unidade no MEM[20]
	tmp(28) := STA & R0 & '0' & x"17"; -- Armazenando limite da unidade no MEM[20]
	
	tmp(29) := LDI & R0 & '0' & x"03"; -- Carregando 5 no Registrador 0
	tmp(30) := STA & R0 & '0' & x"18"; -- Armazenando limite da unidade no MEM[20]
	
	tmp(31) := LDI & R0 & '0' & x"02"; -- Carregando 5 no Registrador 0
	tmp(32) := STA & R0 & '0' & x"19"; -- Armazenando limite da unidade no MEM[20]
	
	--Carregando 10 no MEM[13]
	tmp(33) := LDI & R0 & '0' & x"0A"; -- Carregando 10 no acumulador
	tmp(34) := STA & R0 & '0' & x"0D"; -- Valor de comparacao armazenado no MEM[13]


-- ========================================================================
-- LOOP DOS BOTOES (CHECA KEY0, KEY1 E O FPGA RESET)
-- ========================================================================	
	
	-- ========================================================================
	-- Checando flag de inibir contagem
	-- ========================================================================
		tmp(38) := NOP & R0 & '0' & x"00"; -- Retorno ao loop principal
		tmp(39) := LDA & R0 & '0' & x"06"; -- Olha pro valor da flag de inibir
		tmp(40) := CEQ & R0 & '0' & x"0B"; -- Compara o valor da flag com 1
		tmp(41) := JEQ & R0 & '0' & x"2E"; -- Pula quando a flag esta zerada ignorando a KEY0

	-- ========================================================================
	--OBSERVANDO A KEY0
	-- ========================================================================
	
		tmp(42) := LDA & R0 & '1' & x"60"; -- Observa o valor da KEY0
		tmp(43) := CEQ & R0 & '0' & x"0A"; -- Verifica se a KEY0 foi ativada
		tmp(44) := JEQ & R0 & '0' & x"2E"; -- Caso a KEY0 for igual a 1, pula para o incremento
		tmp(45) := JSR & R0 & '0' & x"3A"; -- Caso a KEY0 for igual a 1, pula para o incremento
	
	-- ========================================================================
	--OBSERVANDO A KEY1
	-- ========================================================================
	
		tmp(46) := LDA & R0 & '1' & x"61"; -- Observa o valor da KEY1
		tmp(47) := CEQ & R0 & '0' & x"0A"; -- Verifica se a KEY1 foi ativada		
		tmp(48) := JEQ & R0 & '0' & x"33"; -- Caso a KEY1 for igual a 1, pula para a definicao do limite
		tmp(49) := JSR & R0 & '0' & x"BD"; -- Caso a KEY1 for igual a 1, pula para o limite
		tmp(50) := NOP & R0 & '0' & x"00"; -- Pausa entre sub-rotinas
		tmp(51) := JSR & R0 & '0' & x"A1"; -- Pula pra limite de contagem
	
	-- ========================================================================
	--OBSERVANDO A FPGA_RESET
	-- ========================================================================
	
		tmp(52) := LDA & R0 & '1' & x"64"; -- Observa o valor do FPGA RESET
		tmp(53) := CEQ & R0 & '0' & x"0B"; -- Compara o valor do FPGA RESET com 1		
		tmp(54) := JEQ & R0 & '0' & x"38"; -- Caso a FPGA RESET for igual a 1, pula para a reset
		tmp(55) := JSR & R0 & '0' & x"78"; -- Caso a FPGA RESET for igual a 1, pula para o resetar a placa
		tmp(56) := JSR & R0 & '0' & x"8D"; -- Pula para atualizar os DISPLAYS
		tmp(57) := JMP & R0 & '0' & x"26"; -- Volta para o loop principal

-- ========================================================================
-- LOOP DE INCREMENTO (KEY0 SUB-ROTINA)
-- ========================================================================	
		tmp(58) := STA & R0 & '1' & x"FF"; -- Zerar KEY0
	
	-- ========================================================================
	-- Incremento da unidade
	-- ========================================================================
		tmp(59) := LDA & R0 & '0' & x"00"; -- Carrega MEM[0]
		tmp(60) := SOMA & R0 & '0' & x"0B"; -- Soma 1 na unidade
		tmp(61) := STA & R0 & '0' & x"00"; -- Armazena valor da soma no MEM[0]
		tmp(62) := CEQ & R0 & '0' & x"0D"; -- Compara o valor de MEM[0] com 10
		tmp(63) := JEQ & R0 & '0' & x"41"; -- Pula pra checar a dezena
		tmp(64) := RET & R0 & '0' & x"00"; -- Volta para o loop principal
	
	
	-- ========================================================================
	-- Incremento da dezena
	-- ========================================================================
		tmp(65) := LDA & R0 & '0' & x"0A"; -- Carrega MEM[10] = 0
		tmp(66) := STA & R0 & '0' & x"00"; -- Zera a unidade
		
		tmp(67) := LDA & R0 & '0' & x"01"; -- Carrega MEM[1]
		tmp(68) := SOMA & R0 & '0' & x"0B"; -- Soma 1 na dezena
		tmp(69) := STA & R0 & '0' & x"01"; -- Armazena valor da soma no MEM[1]
		tmp(70) := CEQ & R0 & '0' & x"0D"; -- Compara o valor de MEM[1] com 10
		tmp(71) := JEQ & R0 & '0' & x"49"; -- Pula pra checar a centena
		tmp(72) := RET & R0 & '0' & x"00"; -- Volta para o loop principal
	
	
	-- ========================================================================
	-- Incremento da centena
	-- ========================================================================
		tmp(73) := LDA & R0 & '0' & x"0A"; -- Carrega MEM[10] = 0
		tmp(74) := STA & R0 & '0' & x"00"; -- Zera a dezena
		
		tmp(75) := LDA & R0 & '0' & x"02"; -- Carrega MEM[2]
		tmp(76) := SOMA & R0 & '0' & x"0B"; -- Soma 1 na centena
		tmp(77) := STA & R0 & '0' & x"02"; -- Armazena valor da soma no MEM[2]
		tmp(78) := CEQ & R0 & '0' & x"0D"; -- Compara o valor de MEM[2] com 10
		tmp(79) := JEQ & R0 & '0' & x"51"; -- Pula pra checar a unidade de milhar
		tmp(80) := RET & R0 & '0' & x"00"; -- Volta para o loop principal
	
	
	-- ========================================================================
	-- Incremento da unidade de milhar
	-- ========================================================================
		tmp(81) := LDA & R0 & '0' & x"0A"; -- Carrega MEM[10] = 0
		tmp(82) := STA & R0 & '0' & x"00"; -- Zera a centena
		
		tmp(83) := LDA & R0 & '0' & x"03"; -- Carrega MEM[3]
		tmp(84) := SOMA & R0 & '0' & x"0B"; -- Soma 1 na unidade de milhar
		tmp(85) := STA & R0 & '0' & x"03"; -- Armazena valor da soma no MEM[3]
		tmp(86) := CEQ & R0 & '0' & x"0D"; -- Compara o valor de MEM[3] com 10
		tmp(87) := JEQ & R0 & '0' & x"59"; -- Pula pra checar dezena de milhar
		tmp(88) := RET & R0 & '0' & x"00"; -- Volta para o loop principal
	
	
	-- ========================================================================
	-- Incremento da dezena de milhar
	-- ========================================================================
		tmp(89) := LDA & R0 & '0' & x"0A"; -- Carrega MEM[10] = 0
		tmp(90) := STA & R0 & '0' & x"00"; -- Zera a unidade de milhar
		
		tmp(91) := LDA & R0 & '0' & x"04"; -- Carrega MEM[4]
		tmp(92) := SOMA & R0 & '0' & x"0B"; -- Soma 1 na dezena de milhar
		tmp(93) := STA & R0 & '0' & x"04"; -- Armazena valor da soma no MEM[4]
		tmp(94) := CEQ & R0 & '0' & x"0D"; -- Compara o valor de MEM[4] com 10
		tmp(95) := JEQ & R0 & '0' & x"61"; -- Pula pra checar a centena de milhar
		tmp(96) := RET & R0 & '0' & x"00"; -- Volta para o loop principal
	
	
	-- ========================================================================
	-- Incremento da centena de milhar
	-- ========================================================================
		tmp(97) := LDA & R0 & '0' & x"0A"; -- Carrega MEM[10] = 0
		tmp(98) := STA & R0 & '0' & x"00"; -- Zera a dezena de milhar
		
		tmp(99) := LDA & R0 & '0' & x"05"; -- Carrega MEM[5]
		tmp(100) := SOMA & R0 & '0' & x"0B"; -- Soma 1 na centena de milhar
		tmp(101) := STA & R0 & '0' & x"05"; -- Armazena valor da soma no MEM[5]
		tmp(102) := CEQ & R0 & '0' & x"0D"; -- Compara o valor de MEM[5] com 10
		tmp(103) := JEQ & R0 & '0' & x"69"; -- Pula pra flag de inibir contagem
		tmp(104) := RET & R0 & '0' & x"00"; -- Volta para o loop principal
	
	-- ========================================================================
	-- Ativacao dos LEDS
	-- ========================================================================
		tmp(105) := LDA & R0 & '0' & x"0B"; -- Carrega MEM[11] = 1
		tmp(106) := STA & R0 & '0' & x"06"; -- Ativa Flag de inibir contagem
		tmp(107) := STA & R0 & '1' & x"02"; -- Ativa LED9 de limite da contagem
		
		tmp(108) := RET & R0 & '0' & x"00"; -- Retorna para loop principal


-- ========================================================================
-- REINICIALIZAR PLACA
-- ========================================================================		
	tmp(120) := LDA & R0 & '0' & x"0A"; -- Carrega MEM[10] = 0
	tmp(121) := STA & R0 & '0' & x"00"; -- Armazena 0 no MEM[0]
	tmp(122) := STA & R0 & '0' & x"01"; -- Armazena 0 no MEM[1]
	tmp(123) := STA & R0 & '0' & x"02"; -- Armazena 0 no MEM[2]
	tmp(124) := STA & R0 & '0' & x"03"; -- Armazena 0 no MEM[3]
	tmp(125) := STA & R0 & '0' & x"04"; -- Armazena 0 no MEM[4]
	tmp(126) := STA & R0 & '0' & x"05"; -- Armazena 0 no MEM[5]
	
	tmp(127) := STA & R0 & '0' & x"06"; -- Zerando Flag de inibir 
	tmp(128) := STA & R0 & '1' & x"01"; -- Zera o LED8 de Overflow
	tmp(129) := STA & R0 & '1' & x"02"; -- Zera o LED9 de limite de contagem
	tmp(130) := RET & R0 & '0' & x"00"; -- Retorna da sub-rotina do RESET_FPGA



-- ========================================================================
-- ATUALIZA DISPLAYS COM OS VALORES CORRESPONDENTES
-- ========================================================================

	-- ========================================================================	
	-- atualiza a unidade
	-- ========================================================================
		tmp(141) := LDA & R0 & '0' & x"00"; -- Carrega MEM[0]
		tmp(142) := STA & R0 & '1' & x"20"; -- Salva o valor de MEM[0] no HEX0 = MEM[288]
	
	-- ========================================================================
	-- atualiza a dezena
	-- ========================================================================
		tmp(143) := LDA & R0 & '0' & x"01"; -- Carrega MEM[1]
		tmp(144) := STA & R0 & '1' & x"21"; -- Salva o valor de MEM[1] no HEX1 = MEM[289]
	
	-- ========================================================================
	-- atualiza a centena
	-- ========================================================================
		tmp(145) := LDA & R0 & '0' & x"02"; -- Carrega MEM[2]
		tmp(146) := STA & R0 & '1' & x"22"; -- Salva o valor de MEM[2] no HEX2 = MEM[290]
	
	-- ========================================================================
	-- atualiza a unidade de milhar
	-- ========================================================================
		tmp(147) := LDA & R0 & '0' & x"03"; -- Carrega MEM[3]
		tmp(148) := STA & R0 & '1' & x"23"; -- Salva o valor de MEM[3] no HEX3 = MEM[291]
	
	-- ========================================================================
	-- atualiza a dezena de milhar
	-- ========================================================================
		tmp(149) := LDA & R0 & '0' & x"04"; -- Carrega MEM[4]
		tmp(150) := STA & R0 & '1' & x"24"; -- Salva o valor de MEM[4] no HEX4 = MEM[292]
		
	-- ========================================================================
	-- atualiza a centena de milhar
	-- ========================================================================
		tmp(151) := LDA & R0 & '0' & x"05"; -- Carrega MEM[5]
		tmp(152) := STA & R0 & '1' & x"25"; -- Salva o valor de MEM[5] no HEX5 = MEM[293]
	
		tmp(153) := RET & R0 & '0' & x"00"; -- Volta para o LOOP PRINCIPAL



-- ========================================================================
-- CHECAGEM DO LIMITE DA CONTAGEM
-- ========================================================================	

	-- ========================================================================	
	--checando unidade
	-- ========================================================================	
		tmp(161) := LDA & R0 & '0' & x"14"; -- Carrega limite unidade = MEM[20]
		tmp(162) := CEQ & R0 & '0' & x"00"; -- Compara o valor de MEM[12] com a unidade
		tmp(163) := JEQ & R0 & '0' & x"A5"; -- Pula pra checar a unidade
		tmp(164) := RET & R0 & '0' & x"00"; -- Retorna da sub-rotina da checagem
	
	-- ========================================================================	
	--checando centena
	-- ========================================================================	
		tmp(165) := LDA & R0 & '0' & x"15"; -- Carrega limite dezena = MEM[21]
		tmp(166) := CEQ & R0 & '0' & x"01"; -- Compara o valor de MEM[12] com a dezena
		tmp(167) := JEQ & R0 & '0' & x"A9"; -- Pula pra checar a dezena
		tmp(168) := RET & R0 & '0' & x"00"; -- Retorna da sub-rotina da checagem
	
	-- ========================================================================	
	--checando centena
	-- ========================================================================	
		tmp(169) := LDA & R0 & '0' & x"16"; -- Carrega limite centena = MEM[22]
		tmp(170) := CEQ & R0 & '0' & x"02"; -- Compara o valor de MEM[12] com a centena
		tmp(171) := JEQ & R0 & '0' & x"AD"; -- Pula pra checar a centena
		tmp(172) := RET & R0 & '0' & x"00"; -- Retorna da sub-rotina da checagem
		
	-- ========================================================================	
	--checando unidade de milhar
	-- ========================================================================	
		tmp(173) := LDA & R0 & '0' & x"17"; -- Carrega limite unidade de milhar = MEM[23]
		tmp(174) := CEQ & R0 & '0' & x"03"; -- Compara o valor de MEM[12] com a unidade de milhar
		tmp(175) := JEQ & R0 & '0' & x"B1"; -- Pula pra checar a unidade de milhar
		tmp(176) := RET & R0 & '0' & x"00"; -- Retorna da sub-rotina da checagem
	
	-- ========================================================================	
	--checando dezena de milhar
	-- ========================================================================	
		tmp(177) := LDA & R0 & '0' & x"18"; -- Carrega limite dezena de milhar = MEM[24]
		tmp(178) := CEQ & R0 & '0' & x"04"; -- Compara o valor de MEM[12] com a dezena de milhar
		tmp(179) := JEQ & R0 & '0' & x"B5"; -- Pula pra checar a dezena de milhar
		tmp(180) := RET & R0 & '0' & x"00"; -- Retorna da sub-rotina da checagem
	
	-- ========================================================================	
	--checando centena de milhar
	-- ========================================================================	
		tmp(181) := LDA & R0 & '0' & x"19"; -- Carrega limite centena de milhar = MEM[25]
		tmp(182) := CEQ & R0 & '0' & x"05"; -- Compara o valor de MEM[12] com a centena de milhar
		tmp(183) := JEQ & R0 & '0' & x"B9"; -- Pula pra checar a centena de milhar
		tmp(184) := RET & R0 & '0' & x"00"; -- Retorna da sub-rotina da checagem
	
	-- ========================================================================	
	--checando flags
	-- ========================================================================	
		tmp(185) := LDA & R0 & '0' & x"0B"; -- Carrega limite MEM[11] = 1
		tmp(186) := STA & R0 & '0' & x"06"; -- Inibe a contagem
		tmp(187) := STA & R0 & '1' & x"01"; -- Ativa o LED9
		tmp(188) := RET & R0 & '0' & x"00"; -- Retorna da sub-rotina da checagem
	


-- ========================================================================
-- DEINICAO DE LIMITE
-- ========================================================================	

	-- ========================================================================	
	-- Definindo limite da unidade
	-- ========================================================================
		tmp(189) := STA & R0 & '1' & x"FE"; -- Zera a KEY1
		tmp(190) := LDI & R3 & '0' & x"01"; -- Carrega 1 no imediato
		tmp(191) := STA & R3 & '1' & x"00"; -- Ativa o LED0 atualizando algarismo da unidade
		
		tmp(192) := LDA & R0 & '1' & x"61"; -- Verifica a KEY1
		tmp(193) := CEQ & R0 & '0' & x"0A"; -- Compara o valor da KEY1 com 0
		tmp(194) := LDA & R1 & '1' & x"40"; -- Pega o valor das SW(7 downto 0)
		tmp(195) := JEQ & R0 & '0' & x"BE"; -- Espera o click da KEY1 para pular para dezena
		tmp(196) := STA & R1 & '0' & x"14"; -- Armazena novo limite para unidade
	
	
	-- ========================================================================	
	-- Definindo limite da dezena
	-- ========================================================================
		tmp(197) := STA & R0 & '1' & x"FE"; -- Zera a KEY1
		tmp(198) := LDI & R3 & '0' & x"03"; -- Carrega 3 no imediato
		tmp(199) := STA & R3 & '1' & x"00"; -- Ativa o LED 1 e 0 atualizando algarismo da dezena
		
		tmp(200) := LDA & R0 & '1' & x"61"; -- Verifica a KEY1
		tmp(201) := CEQ & R0 & '0' & x"0A"; -- Compara o valor da KEY1 com 0
		tmp(202) := LDA & R1 & '1' & x"40"; -- Pega o valor das SW(7 downto 0)
		tmp(203) := JEQ & R0 & '0' & x"C6"; -- Espera o click da KEY1 para pular para centena
		tmp(204) := STA & R1 & '0' & x"15"; -- Armazena novo limite para dezena

	
	-- ========================================================================	
	-- Definindo limite da centena
	-- ========================================================================
		tmp(205) := STA & R0 & '1' & x"FE"; -- Zera a KEY1
		tmp(206) := LDI & R3 & '0' & x"07"; -- Carrega 7 no imediato
		tmp(207) := STA & R3 & '1' & x"00"; -- Ativa o LED 2, 1 e 0 atualizando algarismo da centena
		
		tmp(208) := LDA & R0 & '1' & x"61"; -- Verifica a KEY1
		tmp(209) := CEQ & R0 & '0' & x"0A"; -- Compara o valor da KEY1 com 0
		tmp(210) := LDA & R1 & '1' & x"40"; -- Pega o valor das SW(7 downto 0)
		tmp(211) := JEQ & R0 & '0' & x"CE"; -- Espera o click da KEY1 para pular para a unidade de milhar
		tmp(212) := STA & R1 & '0' & x"16"; -- Armazena novo limite para centena
	
	
	-- ========================================================================	
	-- Definindo limite da unidade de milhar
	-- ========================================================================
		tmp(213) := STA & R0 & '1' & x"FE"; -- Zera a KEY1
		tmp(214) := LDI & R3 & '0' & x"0F"; -- Carrega 15 no imediato
		tmp(215) := STA & R3 & '1' & x"00"; -- Ativa o LED 3, 2, 1 e 0 atualizando algarismo da unidade de milhar
		
		tmp(216) := LDA & R0 & '1' & x"61"; -- Verifica a KEY1
		tmp(217) := CEQ & R0 & '0' & x"0A"; -- Compara o valor da KEY1 com 0
		tmp(218) := LDA & R1 & '1' & x"40"; -- Pega o valor das SW(7 downto 0)
		tmp(219) := JEQ & R0 & '0' & x"D6"; -- Espera o click da KEY1 para pular para a dezena de milhar
		tmp(220) := STA & R1 & '0' & x"17"; -- Armazena novo limite para unidade de milhar
	
	
	-- ========================================================================	
	-- Definindo limite da dezena de milhar
	-- ========================================================================
		tmp(221) := STA & R0 & '1' & x"FE"; -- Zera a KEY1
		tmp(222) := LDI & R3 & '0' & x"1F"; -- Carrega 31 no imediato
		tmp(223) := STA & R3 & '1' & x"00"; -- Ativa o LED 4, 3, 2, 1 e 0 atualizando algarismo da dezena de milhar
	
		tmp(224) := LDA & R0 & '1' & x"61"; -- Verifica a KEY1
		tmp(225) := CEQ & R0 & '0' & x"0A"; -- Compara o valor da KEY1 com 0
		tmp(226) := LDA & R1 & '1' & x"40"; -- Pega o valor das SW(7 downto 0)
		tmp(227) := JEQ & R0 & '0' & x"DE"; -- Espera o click da KEY1 para pular para a centena de milhar
		tmp(228) := STA & R1 & '0' & x"18"; -- Armazena novo limite para dezena de milhar
	
	
	-- ========================================================================	
	-- Definindo limite da centena de milhar
	-- ========================================================================
		tmp(229) := STA & R0 & '1' & x"FE"; -- Zera a KEY1
		tmp(230) := LDI & R3 & '0' & x"3F"; -- Carrega 63 no imediato
		tmp(231) := STA & R3 & '1' & x"00"; -- Ativa o LED 5, 4, 3, 2, 1 e 0 atualizando algarismo da centena de milhar
		
		tmp(232) := LDA & R0 & '1' & x"61"; -- Verifica a KEY1
		tmp(233) := CEQ & R0 & '0' & x"0A"; -- Compara o valor da KEY1 com 0
		tmp(234) := LDA & R1 & '1' & x"40"; -- Pega o valor das SW(7 downto 0)
		tmp(235) := JEQ & R0 & '0' & x"E6"; -- Pula para Zerar KEY1
		tmp(236) := STA & R1 & '0' & x"19"; -- Armazena novo limite para centena de milhar
		
		tmp(237) := STA & R0 & '1' & x"FE"; -- Zerando KEY1
		tmp(238) := LDA & R0 & '0' & x"0A"; -- Carrega 0 no imediato
		tmp(239) := STA & R0 & '1' & x"00"; -- Desativa todos os LEDS
		tmp(240) := RET & R0 & '0' & x"00"; -- Voltando ao loop principal
		
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;