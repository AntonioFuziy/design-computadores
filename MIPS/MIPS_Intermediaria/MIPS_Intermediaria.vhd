library ieee;
use ieee.std_logic_1164.all;

entity MIPS_Intermediaria is
  generic ( 
		larguraDados : natural := 32;
		larguraDadosComprimida : natural := 16;
		larguraAddrRegistradores : natural := 5;
		simulacao : boolean := FALSE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
  	CLOCK_50 : in std_logic;
		ULA_A: out std_logic_vector(larguraDados-1 downto 0);
		ULA_B: out std_logic_vector(larguraDados-1 downto 0);
		SW: in std_logic_vector(9 downto 0);
		KEY: in std_logic_vector(3 downto 0);
		LEDR: out std_logic_vector(7 downto 0);
		HEX0 : out std_logic_vector(6 downto 0);
		HEX1 : out std_logic_vector(6 downto 0);
		HEX2 : out std_logic_vector(6 downto 0);
		HEX3 : out std_logic_vector(6 downto 0);
		HEX4 : out std_logic_vector(6 downto 0);
		HEX5 : out std_logic_vector(6 downto 0)
  );
end entity;

architecture arquitetura of MIPS_Intermediaria is
	signal CLK : std_logic;
	-- saida do PC
	signal PC_ROM : std_logic_vector(larguraDados-1 downto 0);

	-- vetor de bits de controle do Fluxo de dados
	signal Sinais_Controle: std_logic_vector(8 downto 0);
	
	signal somador_PC: std_logic_vector(larguraDados-1 downto 0);
	
	signal bancoReg_ULA_A: std_logic_vector(larguraDados-1 downto 0);
	signal bancoReg_ULA_B: std_logic_vector(larguraDados-1 downto 0);
	signal saida_ULA: std_logic_vector(larguraDados-1 downto 0);
	
	-- bits de instrucao
	signal instruction: std_logic_vector(larguraDados-1 downto 0);
	
	signal Saida_Estensor: std_logic_vector(larguraDados-1 downto 0);
	
	signal Saida_RAM: std_logic_vector(larguraDados-1 downto 0);
	
	-- bits de controle do Fluxo de dados
	signal sel_MUX_JMP_BEQ: std_logic;                 --0
	signal sel_MUX_RtRd: std_logic;                    --1
	signal habEscritaReg: std_logic;                   --2
	signal sel_MUX_RtIm: std_logic;                    --3
	signal Tipo_Operacao_ULA: std_logic; 							 --4
	signal sel_MUX_ULAMem: std_logic;                  --5
	signal wr_flag: std_logic;                         --6
	signal rd_flag: std_logic;                         --7
	signal beq_flag: std_logic;                        --8
	
	signal flag_zero: std_logic;
	signal AND_FLAG_ZERO: std_logic;
	
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
	
	signal REG_OUT_HEX0: std_logic_vector(3 downto 0);
	signal REG_OUT_HEX1: std_logic_vector(3 downto 0);
	signal REG_OUT_HEX2: std_logic_vector(3 downto 0);
	signal REG_OUT_HEX3: std_logic_vector(3 downto 0);
	signal REG_OUT_HEX4: std_logic_vector(3 downto 0);
	signal REG_OUT_HEX5: std_logic_vector(3 downto 0);
	signal Saida_MUX_Simulacao: std_logic_vector(larguraDados-1 downto 0);
	signal Saida_LED_0to3: std_logic_vector(3 downto 0);
	signal Saida_LED_4to7: std_logic_vector(3 downto 0);
	
begin

-- ==================================================================================
-- CLOCK controlado pela KEY0
-- ==================================================================================
CLK <= KEY(0);

-- ==================================================================================
-- PC
-- ==================================================================================
PC : entity work.registradorGenerico   
		 generic map (larguraDados => larguraDados)
		 port map (DIN => saida_MUX_JMP_PC, DOUT => PC_ROM, ENABLE => '1', CLK => CLK, RST => '0');
			 
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
		
-- ==================================================================================
-- Deslocador de 2 bits quando o JMP for executado
-- ==================================================================================
DESLOCADOR_JMP: entity work.deslocadorSinal
		 generic map(
			larguraDados => 28
		 )
		 port map (
			DATA_IN => instruction(25 downto 0) & "00", DATA_OUT => Im_deslocado
		 );

-- ==================================================================================
-- Somador da constante 4 no endere??o
-- ==================================================================================			 
somadorConstante :  entity work.somaConstante  generic map (larguraDados => larguraDados, constante => 4)
        port map(entrada => PC_ROM, saida => saida_Somador_MUXouSomador);	

-- ==================================================================================
-- Soma o sinal deslocado do Imediato com o PC+4
-- ==================================================================================		  
somadorMux :  entity work.somadorGenerico  generic map (larguraDados => larguraDados)
        port map( entradaA => saida_Somador_MUXouSomador, entradaB => sinalDeslocado, saida => saidaSomadorGenerico);
		  
-- ==================================================================================
-- MUX que define se a instru????o BEQ ?? verdadeira ou n??o
-- ==================================================================================
MUX_PC :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
	  port map( 
		  entradaA_MUX => saida_Somador_MUXouSomador,
		  entradaB_MUX =>  saidaSomadorGenerico,
		  seletor_MUX => AND_FLAG_ZERO,
		  saida_MUX => saida_MUX_PC
	  );

-- ==================================================================================
-- MUX que define de a entrada 3 do banco de Registradores ser?? o sinal de Rt ou Rd, diferenciando se a instru????o ?? de tipo R ou I
-- ==================================================================================		  
MUX_RtRd: entity work.muxGenerico2x1  generic map (larguraDados => larguraAddrRegistradores)
		port map( 
			entradaA_MUX => instruction(20 downto 16),
			entradaB_MUX =>  instruction(15 downto 11),
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
-- MUX que define se a entrada B da ULA ser?? o Imediato ou a saida 2 do Banco de Registradores
-- ==================================================================================
MUX_RtIm: entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
		port map( 
			entradaA_MUX => bancoReg_ULA_B,
			entradaB_MUX => Saida_Estensor,
			seletor_MUX => sel_MUX_RtIm,
			saida_MUX => saidaMuxULA
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
-- MUX que define se o banco de registradores ir?? pegar a saida da ULA ou a saida da RAM
-- ==================================================================================
MUX_ULA_Banco: entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
			port map( 
				entradaA_MUX => Saida_ULA,
				entradaB_MUX => Saida_RAM,
				seletor_MUX => sel_MUX_ULAMem,
				saida_MUX => saida_MuxULABanco
			);
			 
-- ==================================================================================
-- Extende o sinal de 16 bits para 32 bits
-- ==================================================================================
estensorSinal : entity work.estensorSinalGenerico   generic map (larguraDadoEntrada => larguraDadosComprimida, larguraDadoSaida => larguraDados)
          port map (estendeSinal_IN => instruction(15 downto 0), estendeSinal_OUT => Saida_Estensor);
			 
-- ==================================================================================
-- Unidade de controledo fluxo de dados
-- ==================================================================================
Decoder : entity work.Decoder
          port map (OPCODE => instruction(31 downto 26), OUTPUT => Sinais_Controle);

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
-- MUX que define se a instru????o ?? do tipo R ou I, passando qual opera????o ser?? realizada pela ULA
-- ==================================================================================
MUX_ULA_CTRL: entity work.muxGenerico2x1 generic map (larguraDados => 3)
		port map( 
			entradaA_MUX => saidaDecoderOPCODE,
			entradaB_MUX => saidaDecoderFUNCT,
			seletor_MUX => Tipo_Operacao_ULA,
			saida_MUX => Saida_MUX_CTRL
		);

-- ==================================================================================
-- MUX que define se a visualiza????o na placa ser?? do endere??o atual do PC ou da Saida da ULA
-- ==================================================================================
MUX_PC_ULA_PLACA: entity work.muxGenerico2x1 generic map (larguraDados => larguraDados)
		port map( 
			entradaA_MUX => PC_ROM,
			entradaB_MUX => Saida_ULA,
			seletor_MUX => SW(0),
			saida_MUX => Saida_MUX_Simulacao
		);

-- ==================================================================================
-- Display SevenSeg 0
-- ==================================================================================
REG_HEX0 : entity work.registradorGenerico   generic map (larguraDados => 4)
		port map (DIN => Saida_MUX_Simulacao(3 downto 0), DOUT => REG_OUT_HEX0, ENABLE => '1', CLK => CLK, RST => '0');

LED_HEX0 :  entity work.conversorHex7Seg
	 port map(dadoHex => REG_OUT_HEX0,
						apaga =>  '0',
						negativo => '0',
						overFlow =>  '0',
						saida7seg => HEX0);

-- ==================================================================================
-- Display SevenSeg 1
-- ==================================================================================			 
REG_HEX1 : entity work.registradorGenerico   generic map (larguraDados => 4)
		port map (DIN => Saida_MUX_Simulacao(7 downto 4), DOUT => REG_OUT_HEX1, ENABLE => '1', CLK => CLK, RST => '0');

LED_HEX1 :  entity work.conversorHex7Seg
	 port map(dadoHex => REG_OUT_HEX1,
						apaga =>  '0',
						negativo => '0',
						overFlow =>  '0',
						saida7seg => HEX1);

-- ==================================================================================
-- Display SevenSeg 2
-- ==================================================================================
REG_HEX2 : entity work.registradorGenerico   generic map (larguraDados => 4)
		port map (DIN => Saida_MUX_Simulacao(11 downto 8), DOUT => REG_OUT_HEX2, ENABLE => '1', CLK => CLK, RST => '0');

LED_HEX2 :  entity work.conversorHex7Seg
	 port map(dadoHex => REG_OUT_HEX2,
						apaga =>  '0',
						negativo => '0',
						overFlow =>  '0',
						saida7seg => HEX2);

-- ==================================================================================
-- Display SevenSeg 3
-- ==================================================================================
REG_HEX3 : entity work.registradorGenerico   generic map (larguraDados => 4)
port map (DIN => Saida_MUX_Simulacao(15 downto 12), DOUT => REG_OUT_HEX3, ENABLE => '1', CLK => CLK, RST => '0');

LED_HEX3 :  entity work.conversorHex7Seg
	 port map(dadoHex => REG_OUT_HEX3,
						apaga =>  '0',
						negativo => '0',
						overFlow =>  '0',
						saida7seg => HEX3);

-- ==================================================================================
-- Display SevenSeg 4
-- ==================================================================================
REG_HEX4 : entity work.registradorGenerico   generic map (larguraDados => 4)
		port map (DIN => Saida_MUX_Simulacao(19 downto 16), DOUT => REG_OUT_HEX4, ENABLE => '1', CLK => CLK, RST => '0');	

LED_HEX4 :  entity work.conversorHex7Seg
	 port map(dadoHex => REG_OUT_HEX4,
						apaga =>  '0',
						negativo => '0',
						overFlow =>  '0',
						saida7seg => HEX4);	

-- ==================================================================================
-- Display SevenSeg 5
-- ==================================================================================			 
REG_HEX5 : entity work.registradorGenerico   generic map (larguraDados => 4)
		port map (DIN => Saida_MUX_Simulacao(23 downto 20), DOUT => REG_OUT_HEX5, ENABLE => '1', CLK => CLK, RST => '0');

LED_HEX5 :  entity work.conversorHex7Seg
	 port map(dadoHex => REG_OUT_HEX5,
						apaga =>  '0',
						negativo => '0',
						overFlow =>  '0',
						saida7seg => HEX5);

-- ==================================================================================
-- Saida da simulacao para os LEDS 0 a 3 da placa
-- ==================================================================================
Saida_LED_0to3 <= Saida_MUX_Simulacao(27 downto 24);

-- ==================================================================================
-- Saida da simulacao para os LEDS 4 a 7 da placa
-- ==================================================================================
Saida_LED_4to7 <= Saida_MUX_Simulacao(31 downto 28);

-- ==================================================================================
-- Concatenando a saida dos LEDS
-- ==================================================================================
LEDR <= Saida_LED_4to7 & Saida_LED_0to3;

-- ==================================================================================
-- AND que checa a flag_zero e o BEQ
-- ==================================================================================
AND_FLAG_ZERO <= flag_zero and beq_flag;

-- ==================================================================================
-- Alias para cada sinal de instru????o
-- ==================================================================================
sel_MUX_JMP_BEQ <= Sinais_Controle(0);
sel_MUX_RtRd <= Sinais_Controle(1);
habEscritaReg <= Sinais_Controle(2);
sel_MUX_RtIm <= Sinais_Controle(3);
Tipo_Operacao_ULA <= Sinais_Controle(4);
sel_MUX_ULAMem <= Sinais_Controle(5);
rd_flag <= Sinais_Controle(6);
wr_flag <= Sinais_Controle(7);
beq_flag <= Sinais_Controle(8);

end architecture;