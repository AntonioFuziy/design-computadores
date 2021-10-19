library ieee;
use ieee.std_logic_1164.all;

entity MIPS_Aula13 is
  generic ( 
	larguraDados : natural := 32;
	larguraAddrRegistradores : natural := 5;
	simulacao : boolean := FALSE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK_50 : in std_logic;
	 Wr_R3: in std_logic;
	 Operacao_ULA: in std_logic;
	 ULA_A: out std_logic_vector(larguraDados-1 downto 0);
	 ULA_B: out std_logic_vector(larguraDados-1 downto 0);
	 Valor_Operacao: out std_logic_vector(larguraDados-1 downto 0)
  );
end entity;


architecture arquitetura of MIPS_Aula13 is
	signal CLK : std_logic;
	signal PC_ROM : std_logic_vector(larguraDados-1 downto 0);
	
	signal somador_PC: std_logic_vector(larguraDados-1 downto 0);
	
	signal bancoReg_ULA_A: std_logic_vector(larguraDados-1 downto 0);
	signal bancoReg_ULA_B: std_logic_vector(larguraDados-1 downto 0);
	signal saida_ULA: std_logic_vector(larguraDados-1 downto 0);
	
	signal instruction: std_logic_vector(larguraDados-1 downto 0);
	constant instruction_REG_A : std_logic_vector(larguraDados-1 downto 0) := "00000000000000000000000000000100";
begin

CLK <= CLOCK_50;
	
PC : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
          port map (DIN => somador_PC, DOUT => PC_ROM, ENABLE => '1', CLK => CLK, RST => '0');
			 
somador :  entity work.somadorGenerico  generic map (larguraDados => larguraDados)
        port map( entradaA => instruction_REG_A, entradaB => PC_ROM, saida => somador_PC);

ULA1 : entity work.ULASomaSub  generic map(larguraDados => larguraDados)
          port map (entradaA => bancoReg_ULA_A, entradaB => bancoReg_ULA_B, saida => Saida_ULA, seletor => Operacao_ULA);		
			 
Banco_Registradores : entity work.bancoRegistradores   
		generic map (larguraDados => larguraDados, larguraEndBancoRegs => larguraAddrRegistradores)
		port map ( 
			  clk => CLK,
			  enderecoA => instruction(15 downto 11),
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

ULA_A <= bancoReg_ULA_A;
ULA_B <= bancoReg_ULA_B;
Valor_Operacao <= saida_ULA;

end architecture;