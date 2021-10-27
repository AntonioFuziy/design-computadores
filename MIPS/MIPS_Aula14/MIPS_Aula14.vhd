library ieee;
use ieee.std_logic_1164.all;

entity MIPS_Aula14 is
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


architecture arquitetura of MIPS_Aula14 is
	signal CLK : std_logic;
	signal PC_ROM : std_logic_vector(larguraDados-1 downto 0);
	signal Sinais_Controle: std_logic_vector(6 downto 0);
	
	signal somador_PC: std_logic_vector(larguraDados-1 downto 0);
	
	signal bancoReg_ULA_A: std_logic_vector(larguraDados-1 downto 0);
	signal bancoReg_ULA_B: std_logic_vector(larguraDados-1 downto 0);
	signal saida_ULA: std_logic_vector(larguraDados-1 downto 0);
	
	signal instruction: std_logic_vector(larguraDados-1 downto 0);
	
	signal Saida_Estensor: std_logic_vector(larguraDados-1 downto 0);
	
	signal Saida_RAM: std_logic_vector(larguraDados-1 downto 0);
	
	signal habEscritaReg: std_logic;
	signal Operacao_ULA: std_logic_vector(2 downto 0);
	signal beq_flag: std_logic;
	signal wr_flag: std_logic;
	signal rd_flag: std_logic;
	
	signal flag_zero: std_logic;
	signal AND_FLAG_ZERO: std_logic;
	
	signal saida_Somador_MUXouSomador: std_logic_vector(larguraDados-1 downto 0);
	signal saida_MUX_PC: std_logic_vector(larguraDados-1 downto 0);
	signal saidaSomadorGenerico: std_logic_vector(larguraDados-1 downto 0);
	
	signal sinalDeslocado: std_logic_vector(larguraDados-1 downto 0);
	
begin

CLK <= CLOCK_50;
	
PC : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
          port map (DIN => saida_MUX_PC, DOUT => PC_ROM, ENABLE => '1', CLK => CLK, RST => '0');
			 
somadorConstante :  entity work.somaConstante  generic map (larguraDados => larguraDados, constante => 4)
        port map(entrada => PC_ROM, saida => saida_Somador_MUXouSomador);	
		  
somadorMux :  entity work.somadorGenerico  generic map (larguraDados => larguraDados)
        port map( entradaA => saida_Somador_MUXouSomador, entradaB => sinalDeslocado, saida => saidaSomadorGenerico);
		  
MUX_PC :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
port map( entradaA_MUX => saida_Somador_MUXouSomador,
		  entradaB_MUX =>  saidaSomadorGenerico,
		  seletor_MUX => AND_FLAG_ZERO,
		  saida_MUX => saida_MUX_PC);
	 
Banco_Registradores : entity work.bancoRegistradores   
		generic map (larguraDados => larguraDados, larguraEndBancoRegs => larguraAddrRegistradores)
		port map ( 
			  clk => CLK,
			  enderecoA => instruction(20 downto 16),
			  enderecoB => instruction(20 downto 16),
			  enderecoC => instruction(25 downto 21),
			  dadoEscritaC => saida_ULA,
			  escreveC => habEscritaReg,
			  saidaA => bancoReg_ULA_A,
			  saidaB => bancoReg_ULA_B
		 );
		 
DESLOCADOR: entity work.deslocadorSinal 
		 generic map(
			larguraDados => larguraDados, deslocamento => 2
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
			port map( clk => CLK,
          Endereco => Saida_ULA,
          Dado_in => bancoReg_ULA_B,
          Dado_out => Saida_RAM,
          we => wr_flag,
			 re => rd_flag
         );

ULA1 : entity work.ULA  generic map(larguraDados => larguraDados)
          port map (entradaA => bancoReg_ULA_A, entradaB =>  Saida_Estensor, saida => Saida_ULA, seletor => Operacao_ULA, flagZero => flag_zero);
			 
estensorSinal : entity work.estensorSinalGenerico   generic map (larguraDadoEntrada => larguraDadosComprimida, larguraDadoSaida => larguraDados)
          port map (estendeSinal_IN => instruction(15 downto 0), estendeSinal_OUT => Saida_Estensor);
			 
Decoder : entity work.Decoder
          port map (OPCODE => instruction(31 downto 26), OUTPUT => Sinais_Controle);

AND_FLAG_ZERO <= flag_zero and beq_flag;
	
habEscritaReg <= Sinais_Controle(0);
Operacao_ULA <= Sinais_Controle(3 downto 1);
beq_flag <= Sinais_Controle(4);
wr_flag <= Sinais_Controle(5);
rd_flag <= Sinais_Controle(6);

Operacao_ULA_OUT <= Operacao_ULA;
ULA_A <= bancoReg_ULA_A;
ULA_B <= bancoReg_ULA_B;
Valor_Operacao <= saida_ULA;

end architecture;