library ieee;
use ieee.std_logic_1164.all;

entity MIPS_Aula17_UnidadeControle is
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
	 Operacao_ULA_OUT: out std_logic_vector(2 downto 0);
	 Valor_Operacao: out std_logic_vector(larguraDados-1 downto 0)
  );
end entity;

-- ================================================================================================================================
-- Trocar a ULA, e adicionar a Unidade de Controle da ULA e mudar o DECODER(unidade de controle do fluxo de dados)
-- ================================================================================================================================

architecture arquitetura of MIPS_Aula17_UnidadeControle is
	signal CLK : std_logic;
	signal PC_ROM : std_logic_vector(larguraDados-1 downto 0);
	signal Sinais_Controle: std_logic_vector(8 downto 0);
	
	signal somador_PC: std_logic_vector(larguraDados-1 downto 0);
	
	signal bancoReg_ULA_A: std_logic_vector(larguraDados-1 downto 0);
	signal bancoReg_ULA_B: std_logic_vector(larguraDados-1 downto 0);
	signal saida_ULA: std_logic_vector(larguraDados-1 downto 0);
	
	signal instruction: std_logic_vector(larguraDados-1 downto 0);
	
	signal Saida_Estensor: std_logic_vector(larguraDados-1 downto 0);
	
	signal Saida_RAM: std_logic_vector(larguraDados-1 downto 0);
	
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
	
begin

CLK <= CLOCK_50;
	
PC : entity work.registradorGenerico   
		 generic map (larguraDados => larguraDados)
		 port map (DIN => saida_MUX_JMP_PC, DOUT => PC_ROM, ENABLE => '1', CLK => CLK, RST => '0');
			 
MUX_JMP_BEQ: entity work.muxGenerico2x1  
		generic map (larguraDados => larguraDados)
		port map( 
			entradaA_MUX => saida_MUX_PC,
			entradaB_MUX => saida_Somador_MUXouSomador(31 downto 28) & Im_deslocado,
			seletor_MUX => sel_MUX_JMP_BEQ,
			saida_MUX => saida_MUX_JMP_PC
		);
		
DESLOCADOR_JMP: entity work.deslocadorSinalJMP 
		 generic map(
			larguraDadosIn => 26, larguraDadosOut => 28
		 )
		 port map (
			DATA_IN => instruction(25 downto 0), DATA_OUT => Im_deslocado
		 );
			 
somadorConstante :  entity work.somaConstante  generic map (larguraDados => larguraDados, constante => 4)
        port map(entrada => PC_ROM, saida => saida_Somador_MUXouSomador);	
		  
somadorMux :  entity work.somadorGenerico  generic map (larguraDados => larguraDados)
        port map( entradaA => saida_Somador_MUXouSomador, entradaB => sinalDeslocado, saida => saidaSomadorGenerico);
		  
MUX_PC :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
	  port map( 
		  entradaA_MUX => saida_Somador_MUXouSomador,
		  entradaB_MUX =>  saidaSomadorGenerico,
		  seletor_MUX => AND_FLAG_ZERO,
		  saida_MUX => saida_MUX_PC
	  );
		  
MUX_RtRd: entity work.muxGenerico2x1  generic map (larguraDados => larguraAddrRegistradores)
		port map( 
			entradaA_MUX => instruction(20 downto 16),
			entradaB_MUX =>  instruction(15 downto 11),
			seletor_MUX => sel_MUX_RtRd,
			saida_MUX => saidaMuxBancoReg
		);
	 
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

MUX_RtIm: entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
		port map( 
			entradaA_MUX => bancoReg_ULA_B,
			entradaB_MUX => Saida_Estensor,
			seletor_MUX => sel_MUX_RtIm,
			saida_MUX => saidaMuxULA
		);
		 
DESLOCADOR: entity work.deslocadorSinal 
		 generic map(
			larguraDados => larguraDados
		 )
		 port map (
			DATA_IN => Saida_Estensor, DATA_OUT => sinalDeslocado
		 );
		 
ROM1 : entity work.ROM   generic map (dataWidth => larguraDados, addrWidth => larguraDados, memoryAddrWidth => 6)
		 port map (
			 Endereco => PC_ROM,
			 Dado => instruction,
			 clk => CLK
		 );
			 
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

ULA1 : entity work.MIPS_Aula16_ULA  generic map(larguraDados => larguraDados)
			port map (
				entradaA => bancoReg_ULA_A,
				entradaB => saidaMuxULA,
				inverteB => Saida_MUX_CTRL(2),
				saida => Saida_ULA,
				operacao => Saida_MUX_CTRL(1 downto 0),
				flagZero => flag_zero
			);
			 
MUX_ULA_Banco: entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
			port map( 
				entradaA_MUX => Saida_ULA,
				entradaB_MUX => Saida_RAM,
				seletor_MUX => sel_MUX_ULAMem,
				saida_MUX => saida_MuxULABanco
			);
			 
estensorSinal : entity work.estensorSinalGenerico   generic map (larguraDadoEntrada => larguraDadosComprimida, larguraDadoSaida => larguraDados)
          port map (estendeSinal_IN => instruction(15 downto 0), estendeSinal_OUT => Saida_Estensor);
			 
Decoder : entity work.Decoder
          port map (OPCODE => instruction(31 downto 26), OUTPUT => Sinais_Controle);

Decoder_OPCODE : entity work.DecoderOPCODE
					port map (OPCODE => instruction(31 downto 26), OUTPUT => saidaDecoderOPCODE);

Decoder_FUNCT : entity work.DecoderFUNCT
					port map (FUNCT => instruction(5 downto 0), OUTPUT => saidaDecoderFUNCT);

MUX_ULA_CTRL: entity work.muxGenerico2x1 generic map (larguraDados => 3)
		port map( 
			entradaA_MUX => saidaDecoderOPCODE,
			entradaB_MUX => saidaDecoderFUNCT,
			seletor_MUX => Tipo_Operacao_ULA,
			saida_MUX => Saida_MUX_CTRL
		);

AND_FLAG_ZERO <= flag_zero and beq_flag;

sel_MUX_JMP_BEQ <= Sinais_Controle(0);
sel_MUX_RtRd <= Sinais_Controle(1);
habEscritaReg <= Sinais_Controle(2);
sel_MUX_RtIm <= Sinais_Controle(3);
Tipo_Operacao_ULA <= Sinais_Controle(4);
sel_MUX_ULAMem <= Sinais_Controle(5);
rd_flag <= Sinais_Controle(6);
wr_flag <= Sinais_Controle(7);
beq_flag <= Sinais_Controle(8);

Operacao_ULA_OUT <= Saida_MUX_CTRL;
ULA_A <= bancoReg_ULA_A;
ULA_B <= bancoReg_ULA_B;
Valor_Operacao <= saida_ULA;

end architecture;