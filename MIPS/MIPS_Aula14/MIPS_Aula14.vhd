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
	 Wr_R3: in std_logic;
	 Wr: in std_logic;
	 Rd: in std_logic;
	 Operacao_ULA: in std_logic;
	 ULA_A: out std_logic_vector(larguraDados-1 downto 0);
	 ULA_B: out std_logic_vector(larguraDados-1 downto 0);
	 Valor_Operacao: out std_logic_vector(larguraDados-1 downto 0)
  );
end entity;


architecture arquitetura of MIPS_Aula14 is
	signal CLK : std_logic;
	signal PC_ROM : std_logic_vector(larguraDados-1 downto 0);
	
	signal somador_PC: std_logic_vector(larguraDados-1 downto 0);
	
	signal bancoReg_ULA_A: std_logic_vector(larguraDados-1 downto 0);
	signal bancoReg_ULA_B: std_logic_vector(larguraDados-1 downto 0);
	signal saida_ULA: std_logic_vector(larguraDados-1 downto 0);
	
	signal instruction: std_logic_vector(larguraDados-1 downto 0);
	
	signal Saida_Estensor: std_logic_vector(larguraDados-1 downto 0);
	
	signal Saida_RAM: std_logic_vector(larguraDados-1 downto 0);
begin

CLK <= CLOCK_50;
	
PC : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
          port map (DIN => somador_PC, DOUT => PC_ROM, ENABLE => '1', CLK => CLK, RST => '0');
			 
somadorConstante :  entity work.somaConstante  generic map (larguraDados => larguraDados, constante => 4)
        port map( entrada => PC_ROM, saida => somador_PC);	
			 
Banco_Registradores : entity work.bancoRegistradores   
		generic map (larguraDados => larguraDados, larguraEndBancoRegs => larguraAddrRegistradores)
		port map ( 
			  clk => CLK,
			  enderecoA => instruction(20 downto 16),
			  enderecoB => instruction(20 downto 16),
			  enderecoC => instruction(25 downto 21),
			  dadoEscritaC => saida_ULA,
			  escreveC => Wr_R3,
			  saidaA => bancoReg_ULA_A,
			  saidaB => bancoReg_ULA_B
		 );
		 
ROM1 : entity work.ROM   generic map (dataWidth => larguraDados, addrWidth => larguraDados, memoryAddrWidth => 6)
		 port map (
			 Endereco => PC_ROM,
			 Dado => instruction,
			 clk => CLK
		 );
		 
estensorSinal : entity work.estensorSinalGenerico   generic map (larguraDadoEntrada => larguraDadosComprimida, larguraDadoSaida => larguraDados)
          port map (estendeSinal_IN => instruction(15 downto 0), estendeSinal_OUT => Saida_Estensor);
			 
ULA1 : entity work.ULASomaSub  generic map(larguraDados => larguraDados)
          port map (entradaA => bancoReg_ULA_A, entradaB => Saida_Estensor, saida => Saida_ULA, seletor => Operacao_ULA);	
			 
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
          we => Wr,
			 re => Rd
         );

ULA_A <= bancoReg_ULA_A;
ULA_B <= bancoReg_ULA_B;
Valor_Operacao <= saida_ULA;

end architecture;