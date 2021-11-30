library ieee;
use ieee.std_logic_1164.all;

entity MIPS_Final is
  generic ( 
		larguraDados : natural := 32;
		larguraDadosComprimida : natural := 16;
		larguraAddrRegistradores : natural := 5;
		simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
  	CLOCK_50 : in std_logic;
		ULA_A: out std_logic_vector(larguraDados-1 downto 0);
		ULA_B: out std_logic_vector(larguraDados-1 downto 0);
		KEY: in std_logic_vector(3 downto 0);
		-- SW: in std_logic_vector(9 downto 0);
		-- LEDR: out std_logic_vector(7 downto 0);
		-- HEX0 : out std_logic_vector(6 downto 0);
		-- HEX1 : out std_logic_vector(6 downto 0);
		-- HEX2 : out std_logic_vector(6 downto 0);
		-- HEX3 : out std_logic_vector(6 downto 0);
		-- HEX4 : out std_logic_vector(6 downto 0);
		-- HEX5 : out std_logic_vector(6 downto 0);
		
		saida_ULA_Teste: out std_logic_vector(larguraDados-1 downto 0);
		saida_PC_Teste: out std_logic_vector(larguraDados-1 downto 0);
		entradaA_MUX_PC: out std_logic_vector(larguraDados-1 downto 0);
		entradaB_MUX_PC: out std_logic_vector(larguraDados-1 downto 0);
		entradaA_MUX_BEQ: out std_logic_vector(larguraDados-1 downto 0);
		entradaB_MUX_BEQ: out std_logic_vector(larguraDados-1 downto 0);
		seletor_MUX_BEQ: out std_logic;
		saida_Somador_Constant: out std_logic_vector(larguraDados-1 downto 0)
  );
end entity;

architecture arquitetura of MIPS_Final is
	signal CLK : std_logic;
	-- saida do PC
	signal PC_ROM : std_logic_vector(larguraDados-1 downto 0);

	-- vetor de bits de controle do Fluxo de dados
	signal Sinais_Controle: std_logic_vector(13 downto 0);
	
	signal somador_PC: std_logic_vector(larguraDados-1 downto 0);
	
	signal bancoReg_ULA_A: std_logic_vector(larguraDados-1 downto 0);
	signal bancoReg_ULA_B: std_logic_vector(larguraDados-1 downto 0);
	signal saida_ULA: std_logic_vector(larguraDados-1 downto 0);
	
	-- bits de instrucao
	signal instruction: std_logic_vector(larguraDados-1 downto 0);
	
	signal Saida_Estensor: std_logic_vector(larguraDados-1 downto 0);
	
	signal Saida_RAM: std_logic_vector(larguraDados-1 downto 0);
	
	-- bits de controle do Fluxo de dados
	signal sel_JR : std_logic;                           --0
	signal sel_MUX_JMP_BEQ: std_logic;                   --1
	signal sel_MUX_RtRd: std_logic_vector(1 downto 0);   --2 -> 3
	signal habEscritaReg: std_logic;                     --4
	signal ori_control: std_logic;                       --5
	signal sel_MUX_RtIm: std_logic;                      --6
	signal Tipo_Operacao_ULA: std_logic; 					 			 --7
	signal sel_MUX_ULAMem: std_logic_vector(1 downto 0); --8 downto 9
	signal wr_flag: std_logic;                           --10
	signal rd_flag: std_logic;                           --11
	signal beq_flag: std_logic;                          --12
	signal bne_flag: std_logic;                          --13
	
	signal flag_zero: std_logic;
	signal AND_FLAG_ZERO: std_logic;
	signal OR_BEQ_BNE: std_logic;
	
	signal saida_Somador_MUXouSomador: std_logic_vector(larguraDados-1 downto 0);
	signal saida_MUX_PC: std_logic_vector(larguraDados-1 downto 0);
	signal saidaSomadorGenerico: std_logic_vector(larguraDados-1 downto 0);
	signal saidaMuxBancoReg: std_logic_vector(larguraAddrRegistradores-1 downto 0);
	signal saidaMuxULA: std_logic_vector(larguraDados-1 downto 0);
	signal saida_MUX_JMP_PC: std_logic_vector(larguraDados-1 downto 0);
	signal saida_MuxULABanco: std_logic_vector(larguraDados-1 downto 0);
	signal Im_deslocado: std_logic_vector(27 downto 0);
	
	signal sinalDeslocado: std_logic_vector(larguraDados-1 downto 0);

	signal saidaDecoderOPCODE: std_logic_vector(2 downto 0);
	signal saidaDecoderFUNCT: std_logic_vector(2 downto 0);
	signal Saida_MUX_CTRL: std_logic_vector(2 downto 0);
	
	-- signal REG_OUT_HEX0: std_logic_vector(3 downto 0);
	-- signal REG_OUT_HEX1: std_logic_vector(3 downto 0);
	-- signal REG_OUT_HEX2: std_logic_vector(3 downto 0);
	-- signal REG_OUT_HEX3: std_logic_vector(3 downto 0);
	-- signal REG_OUT_HEX4: std_logic_vector(3 downto 0);
	-- signal REG_OUT_HEX5: std_logic_vector(3 downto 0);
	-- signal Saida_MUX_Simulacao: std_logic_vector(larguraDados-1 downto 0);
	-- signal Saida_LED_0to3: std_logic_vector(3 downto 0);
	-- signal Saida_LED_4to7: std_logic_vector(3 downto 0);

	signal saida_LUI: std_logic_vector(larguraDados-1 downto 0);

	signal saida_MUX_JR: std_logic_vector(larguraDados-1 downto 0);
	signal saida_MUX_BNE: std_logic;
	
begin
	
gravar:  if simulacao generate
	CLK <= CLOCK_50;
else generate
	-- ==================================================================================
	-- CLOCK controlado pela KEY0
	-- ==================================================================================
	CLK <= KEY(0);
end generate;


-- ==================================================================================
-- PC
-- ==================================================================================
PC : entity work.registradorGenerico   
		 generic map (larguraDados => larguraDados)
		 port map (DIN => saida_MUX_JR, DOUT => PC_ROM, ENABLE => '1', CLK => CLK, RST => '0');
			 
-- ==================================================================================
-- MUX que define se realiza o JMP ou continua para a proxima instrucao
-- ==================================================================================
MUX_JMP_BEQ: entity work.muxGenerico2x1  
		generic map (larguraDados => larguraDados)
		port map( 
			entradaA_MUX => saida_MUX_PC,
			entradaB_MUX => saida_Somador_MUXouSomador(31 downto 28) & Im_deslocado,
			seletor_MUX => sel_MUX_JMP_BEQ,
			saida_MUX => saida_MUX_JMP_PC
		);

MUX_JR: entity work.muxGenerico2x1  
		generic map (larguraDados => larguraDados)
		port map( 
			entradaA_MUX => saida_MUX_JMP_PC,
			entradaB_MUX => bancoReg_ULA_A,
			seletor_MUX => sel_JR,
			saida_MUX => saida_MUX_JR
		);

-- ==================================================================================
-- Somador da constante 4 no endereço
-- ==================================================================================
somadorConstante :  entity work.somaConstante  generic map (larguraDados => larguraDados, constante => 4)
	port map(entrada => PC_ROM, saida => saida_Somador_MUXouSomador);	

-- ==================================================================================
-- Soma o sinal deslocado do Imediato com o PC+4
-- ==================================================================================		  
somadorMux :  entity work.somadorGenerico  generic map (larguraDados => larguraDados)
	port map( entradaA => saida_Somador_MUXouSomador, entradaB => sinalDeslocado, saida => saidaSomadorGenerico);

-- ==================================================================================
-- MUX que define se a instrução BEQ é verdadeira ou não
-- ==================================================================================
MUX_PC :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
	port map( 
		entradaA_MUX => saida_Somador_MUXouSomador,
		entradaB_MUX =>  saidaSomadorGenerico,
		seletor_MUX => AND_FLAG_ZERO,
		saida_MUX => saida_MUX_PC
	);
		
-- ==================================================================================
-- Deslocador de 2 bits quando o JMP for executado
-- ==================================================================================
DESLOCADOR_JMP: entity work.deslocadorSinalJMP
		 generic map(
			larguraDadosIn => 26,
			larguraDadosOut => 28
		 )
		 port map (
			DATA_IN => instruction(25 downto 0), DATA_OUT => Im_deslocado
		 );

-- ==================================================================================
-- Deslocador de sinal de 2 bits do sinal Imediato extendido
-- ==================================================================================
DESLOCADOR: entity work.deslocadorSinal 
		generic map(
			larguraDados => larguraDados
		)
		port map (
			DATA_IN => Saida_Estensor, DATA_OUT => sinalDeslocado
		);
		 
-- ==================================================================================
-- MUX que define de a entrada 3 do banco de Registradores será o sinal de Rt ou Rd, diferenciando se a instrução é de tipo R ou I
-- ==================================================================================		  
MUX_RtRd: entity work.muxGenerico4x1  generic map (larguraDados => larguraAddrRegistradores)
		port map( 
			entradaA_MUX => instruction(20 downto 16),
			entradaB_MUX =>  instruction(15 downto 11),
			entradaC_MUX =>  "11111",
			entradaD_MUX =>  "00000",
			seletor_MUX => sel_MUX_RtRd,
			saida_MUX => saidaMuxBancoReg
		);
	 
-- ==================================================================================
-- Banco de Registradores
-- ==================================================================================
Banco_Registradores : entity work.bancoRegistradores   
		generic map (larguraDados => larguraDados, larguraEndBancoRegs => larguraAddrRegistradores)
		port map ( 
			  clk => CLK,
			  enderecoA => instruction(25 downto 21),
			  enderecoB => instruction(20 downto 16),
			  enderecoC => saidaMuxBancoReg,
			  dadoEscritaC => saida_MuxULABanco,
			  escreveC => habEscritaReg,
			  saidaA => bancoReg_ULA_A,
			  saidaB => bancoReg_ULA_B
		 );

-- ==================================================================================
-- MUX que define se a entrada B da ULA será o Imediato ou a saida 2 do Banco de Registradores
-- ==================================================================================
MUX_RtIm: entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
		port map( 
			entradaA_MUX => bancoReg_ULA_B,
			entradaB_MUX => Saida_Estensor,
			seletor_MUX => sel_MUX_RtIm,
			saida_MUX => saidaMuxULA
		);

-- ==================================================================================
-- ROM
-- ==================================================================================
ROM1 : entity work.ROM   generic map (dataWidth => larguraDados, addrWidth => larguraDados, memoryAddrWidth => 6)
		 port map (
			 Endereco => PC_ROM,
			 Dado => instruction,
			 clk => CLK
		 );
			 
-- ==================================================================================
-- RAM do MIPS
-- ==================================================================================
RAM_MIPS: entity work.RAM_MIPS  
			generic map(
				dataWidth => larguraDados,
				addrWidth => larguraDados,
				memoryAddrWidth => 6
			)
			port map( 
				clk => CLK,
				Endereco => Saida_ULA,
				Dado_in => bancoReg_ULA_B,
				Dado_out => Saida_RAM,
				we => wr_flag,
				re => rd_flag
			);

-- ==================================================================================
-- ULA
-- ==================================================================================
ULA1 : entity work.MIPS_Aula16_ULA  generic map(larguraDados => larguraDados)
			port map (
				entradaA => bancoReg_ULA_A,
				entradaB => saidaMuxULA,
				inverteB => Saida_MUX_CTRL(2),
				saida => Saida_ULA,
				operacao => Saida_MUX_CTRL(1 downto 0),
				flagZero => flag_zero
			);

-- ==================================================================================
--MUX do BEQ
-- ==================================================================================
MUX_BEQ: entity work.muxGenerico2x1_Bit
		port map( 
			entradaA_MUX => not(flag_zero),
			entradaB_MUX => flag_zero,
			seletor_MUX => beq_flag,
			saida_MUX => saida_MUX_BNE
		);
			 
-- IMPLEMENTAR O COMPONENTE LUI
-- ==================================================================================
-- Component LUI
-- ==================================================================================
LUI : entity work.extensorSinalLUI   generic map (larguraDadoEntrada => larguraDadosComprimida, larguraDadoSaida => larguraDados)
				port map (estendeSinal_IN => instruction(15 downto 0), estendeSinal_OUT => Saida_LUI);

-- ==================================================================================
-- MUX que define se o banco de registradores irá pegar a saida da ULA ou a saida da RAM
-- ==================================================================================
MUX_ULA_Banco: entity work.muxGenerico4x1
			port map( 
				entradaA_MUX => Saida_ULA,
				entradaB_MUX => Saida_RAM,
				entradaC_MUX => saida_Somador_MUXouSomador,
				entradaD_MUX => saida_LUI,
				seletor_MUX => sel_MUX_ULAMem,
				saida_MUX => saida_MuxULABanco
			);

-- ==================================================================================
-- Componente ORI
-- ==================================================================================
-- MUDAR O EXTENSOR PRA ORI, PASSANDO O ori_control COMO CONDICAO E EXTENDER O SINAL DEPENDENDO DO SINAL DE CONTROLE ORI
-- ==================================================================================
-- Extende o sinal de 16 bits para 32 bits
-- ==================================================================================
estensorSinal : entity work.estensorSinalGenerico   generic map (larguraDadoEntrada => larguraDadosComprimida, larguraDadoSaida => larguraDados)
          port map (estendeSinal_IN => instruction(15 downto 0), ORI => ori_control, estendeSinal_OUT => Saida_Estensor);
			 
-- ==================================================================================
-- Unidade de controledo fluxo de dados
-- ==================================================================================
Decoder : entity work.Decoder
          port map (OPCODE => instruction(31 downto 26), FUNCT => instruction(5 downto 0), OUTPUT => Sinais_Controle);

-- ==================================================================================
-- Decoder que define os bits do OPCODE
-- ==================================================================================
Decoder_OPCODE : entity work.DecoderOPCODE
					port map (OPCODE => instruction(31 downto 26), OUTPUT => saidaDecoderOPCODE);

-- ==================================================================================
-- Decoder que define os bits de FUNCT
-- ==================================================================================
Decoder_FUNCT : entity work.DecoderFUNCT
					port map (FUNCT => instruction(5 downto 0), OUTPUT => saidaDecoderFUNCT);

-- ==================================================================================
-- MUX que define se a instrução é do tipo R ou I, passando qual operação será realizada pela ULA
-- ==================================================================================
MUX_ULA_CTRL: entity work.muxGenerico2x1 generic map (larguraDados => 3)
		port map( 
			entradaA_MUX => saidaDecoderOPCODE,
			entradaB_MUX => saidaDecoderFUNCT,
			seletor_MUX => Tipo_Operacao_ULA,
			saida_MUX => Saida_MUX_CTRL
		);

-- ==================================================================================
-- MUX que define se a visualização na placa será do endereço atual do PC ou da Saida da ULA
-- ==================================================================================
--MUX_PC_ULA_PLACA: entity work.muxGenerico2x1 generic map (larguraDados => larguraDados)
--		port map( 
--			entradaA_MUX => PC_ROM,
--			entradaB_MUX => Saida_ULA,
--			seletor_MUX => SW(0),
--			saida_MUX => Saida_MUX_Simulacao
--		);

-- ==================================================================================
-- Display SevenSeg 0
-- ==================================================================================
-- REG_HEX0 : entity work.registradorGenerico   generic map (larguraDados => 4)
-- 		port map (DIN => Saida_MUX_Simulacao(3 downto 0), DOUT => REG_OUT_HEX0, ENABLE => '1', CLK => CLK, RST => '0');

-- LED_HEX0 :  entity work.conversorHex7Seg
-- 	 port map(dadoHex => REG_OUT_HEX0,
-- 						apaga =>  '0',
-- 						negativo => '0',
-- 						overFlow =>  '0',
-- 						saida7seg => HEX0);

-- -- ==================================================================================
-- -- Display SevenSeg 1
-- -- ==================================================================================			 
-- REG_HEX1 : entity work.registradorGenerico   generic map (larguraDados => 4)
-- 		port map (DIN => Saida_MUX_Simulacao(7 downto 4), DOUT => REG_OUT_HEX1, ENABLE => '1', CLK => CLK, RST => '0');

-- LED_HEX1 :  entity work.conversorHex7Seg
-- 	 port map(dadoHex => REG_OUT_HEX1,
-- 						apaga =>  '0',
-- 						negativo => '0',
-- 						overFlow =>  '0',
-- 						saida7seg => HEX1);

-- -- ==================================================================================
-- -- Display SevenSeg 2
-- -- ==================================================================================
-- REG_HEX2 : entity work.registradorGenerico   generic map (larguraDados => 4)
-- 		port map (DIN => Saida_MUX_Simulacao(11 downto 8), DOUT => REG_OUT_HEX2, ENABLE => '1', CLK => CLK, RST => '0');

-- LED_HEX2 :  entity work.conversorHex7Seg
-- 	 port map(dadoHex => REG_OUT_HEX2,
-- 						apaga =>  '0',
-- 						negativo => '0',
-- 						overFlow =>  '0',
-- 						saida7seg => HEX2);

-- -- ==================================================================================
-- -- Display SevenSeg 3
-- -- ==================================================================================
-- REG_HEX3 : entity work.registradorGenerico   generic map (larguraDados => 4)
-- port map (DIN => Saida_MUX_Simulacao(15 downto 12), DOUT => REG_OUT_HEX3, ENABLE => '1', CLK => CLK, RST => '0');

-- LED_HEX3 :  entity work.conversorHex7Seg
-- 	 port map(dadoHex => REG_OUT_HEX3,
-- 						apaga =>  '0',
-- 						negativo => '0',
-- 						overFlow =>  '0',
-- 						saida7seg => HEX3);

-- -- ==================================================================================
-- -- Display SevenSeg 4
-- -- ==================================================================================
-- REG_HEX4 : entity work.registradorGenerico   generic map (larguraDados => 4)
-- 		port map (DIN => Saida_MUX_Simulacao(19 downto 16), DOUT => REG_OUT_HEX4, ENABLE => '1', CLK => CLK, RST => '0');	

-- LED_HEX4 :  entity work.conversorHex7Seg
-- 	 port map(dadoHex => REG_OUT_HEX4,
-- 						apaga =>  '0',
-- 						negativo => '0',
-- 						overFlow =>  '0',
-- 						saida7seg => HEX4);	

-- -- ==================================================================================
-- -- Display SevenSeg 5
-- -- ==================================================================================			 
-- REG_HEX5 : entity work.registradorGenerico   generic map (larguraDados => 4)
-- 		port map (DIN => Saida_MUX_Simulacao(23 downto 20), DOUT => REG_OUT_HEX5, ENABLE => '1', CLK => CLK, RST => '0');

-- LED_HEX5 :  entity work.conversorHex7Seg
-- 	 port map(dadoHex => REG_OUT_HEX5,
-- 						apaga =>  '0',
-- 						negativo => '0',
-- 						overFlow =>  '0',
-- 						saida7seg => HEX5);

-- -- ==================================================================================
-- -- Saida da simulacao para os LEDS 0 a 3 da placa
-- -- ==================================================================================
-- Saida_LED_0to3 <= Saida_MUX_Simulacao(27 downto 24);

-- -- ==================================================================================
-- -- Saida da simulacao para os LEDS 4 a 7 da placa
-- -- ==================================================================================
-- Saida_LED_4to7 <= Saida_MUX_Simulacao(31 downto 28);

-- -- ==================================================================================
-- -- Concatenando a saida dos LEDS
-- -- ==================================================================================
-- LEDR <= Saida_LED_4to7 & Saida_LED_0to3;

-- ==================================================================================
-- AND que checa a flag_zero e o (BEQ or BNE)
-- ==================================================================================
AND_FLAG_ZERO <= saida_MUX_BNE and OR_BEQ_BNE;
OR_BEQ_BNE <= beq_flag or bne_flag;

-- ==================================================================================
-- Alias para cada sinal de instrução
-- ==================================================================================
sel_JR <= Sinais_Controle(0);
sel_MUX_JMP_BEQ <= Sinais_Controle(1);
sel_MUX_RtRd <= Sinais_Controle(3 downto 2);
ori_control <= Sinais_Controle(4);
habEscritaReg <= Sinais_Controle(5);
sel_MUX_RtIm <= Sinais_Controle(6);
Tipo_Operacao_ULA <= Sinais_Controle(7);
sel_MUX_ULAMem <= Sinais_Controle(9 downto 8);
rd_flag <= Sinais_Controle(10);
wr_flag <= Sinais_Controle(11);
beq_flag <= Sinais_Controle(12);
bne_flag <= Sinais_Controle(13);

saida_ULA_Teste <= saida_ULA;
saida_PC_Teste <= PC_ROM;
ULA_A <= bancoReg_ULA_A;
ULA_B <= saidaMuxULA;

entradaA_MUX_PC <= saida_MUX_PC;
entradaB_MUX_PC <= saida_Somador_MUXouSomador(31 downto 28) & Im_deslocado;

entradaA_MUX_BEQ <= saida_Somador_MUXouSomador;
entradaB_MUX_BEQ <= saidaSomadorGenerico;
seletor_MUX_BEQ <= AND_FLAG_ZERO;
saida_Somador_Constant <= saida_Somador_MUXouSomador;

end architecture;