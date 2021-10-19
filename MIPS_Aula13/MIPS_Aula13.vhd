library ieee;
use ieee.std_logic_1164.all;

entity MIPS_Aula13 is
  -- Total de bits das entradas e saidas
  generic ( 
	larguraDados : natural := 32;
	larguraAddrRegistradores : natural := 5;
	simulacao : boolean := FALSE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK_50 : in std_logic;
    KEY: in std_logic_vector(3 downto 0);
	 SW: in std_logic_vector(9 downto 0);
	 FPGA_RESET_N: in std_logic;
	 LEDR: out std_logic_vector(9 downto 0);
	 Teste_Endereco: out std_logic_vector(larguraDados-1 downto 0)
--	 HEX0 : out std_logic_vector(6 downto 0);
--	 HEX1 : out std_logic_vector(6 downto 0);
--	 HEX2 : out std_logic_vector(6 downto 0);
--	 HEX3 : out std_logic_vector(6 downto 0);
--	 HEX4 : out std_logic_vector(6 downto 0);
--	 HEX5 : out std_logic_vector(6 downto 0)
  );
end entity;


architecture arquitetura of MIPS_Aula13 is

-- Faltam alguns sinais:
	signal CLK : std_logic;
	signal PC_ROM : std_logic(larguraDados-1 downto 0);
	
--	signal SaidaREG_LEDR: std_logic_vector(9 downto 0);
	signal somador_PC: std_logic_vector(larguraDados-1 downto 0);
	
	signal bancoReg_ULA_A: std_logic_vector(larguraDados-1 downto 0);
	signal bancoReg_ULA_B: std_logic_vector(larguraDados-1 downto 0);
	signal saida_ULA: std_logic_vector(larguraDados-1 downto 0);
	
	constant instruction: std_logic_vector(larguraDados-1 downto 0) := "32bits";
	constant Operacao_ULA: std_logic_vector(1 downto 0) := "2bits";
	constant Wr_R3: std_logic := '1bit';

begin

-- Instanciando os componentes:

CLK <= CLOCK_50;
	
PC : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
          port map (DIN => somador_PC, DOUT => PC_ROM, ENABLE => '1', CLK => CLK, RST => '0');
			 
somaUm :  entity work.somaConstante  generic map (larguraDados => larguraDados, constante => 4)
        port map( entrada => PC_ROM, saida => somador_PC);

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
		 
ROM1 : entity work.ROM   generic map (dataWidth => larguraDadosROM, addrWidth => larguraAddrROM)
		 port map (
			 Endereco => PC_ROM,
			 Dado => instruction
		 );

--LEDR <= SaidaREG_LEDR;

Teste_Endereco <= Addr_ROM;

end architecture;