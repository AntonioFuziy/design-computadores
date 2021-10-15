library ieee;
use ieee.std_logic_1164.all;

entity MIPS_Aula13 is
  -- Total de bits das entradas e saidas
  generic ( 
	larguraDados : natural := 32;
	simulacao : boolean := FALSE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK_50 : in std_logic;
    KEY: in std_logic_vector(3 downto 0);
	 SW: in std_logic_vector(9 downto 0);
	 FPGA_RESET_N: in std_logic;
	 LEDR: out std_logic_vector(9 downto 0);
	 Teste_Endereco: out std_logic_vector(8 downto 0)
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
	signal instruction: std_logic_vector(14 downto 0);
	signal CLK : std_logic;
	signal PC_ROM : std_logic(larguraDados-1 downto 0);
	
	signal SaidaREG_LEDR: std_logic_vector(9 downto 0);

begin

-- Instanciando os componentes:

	CLK <= CLOCK_50;
	
PC : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
          port map (DIN => , DOUT => PC_ROM, ENABLE => '1', CLK => CLK, RST => '0');
			 
somaUm :  entity work.somaConstante  generic map (larguraDados => larguraDados, constante => 4)
        port map( entrada => PC_ROM, saida => );

--	detectorSub0: work.edgeDetector(bordaSubida)
--			  port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK_KEY0);
--			  
--	detectorSub1: work.edgeDetector(bordaSubida)
--			  port map (clk => CLOCK_50, entrada => (not KEY(1)), saida => CLK_KEY1);


ULA1 : entity work.ULASomaSub  generic map(larguraDados => larguraDados)
          port map (entradaA => , entradaB => , saida => Saida_ULA, seletor => Operacao_ULA);		
			 
Banco_Registradores : entity work.bancoRegistradores   generic map (larguraDados => larguraDados, larguraEndBancoRegs => 2)
		 port map ( 
			  clk => CLK,
			  endereco => Instruction_IN(10 downto 9),
			  dadoEscrita => Saida_ULA,
			  habilitaEscrita => Habilita_A,
			  saida  => REG1_ULA_A
		 );
		 
ROM1 : entity work.ROM   generic map (dataWidth => larguraDadosROM, addrWidth => larguraAddrROM)
		 port map (
			 Endereco => Addr_ROM,
			 Dado => instruction
		 );
				 
--memoriaDados : entity work.memoriaDados   generic map (dataWidth => 8, addrWidth => 6)
--		 port map (addr => Data_Address(5 downto 0), we => wr, re => rd, habilita => Saida_Decoder_Blocos(0), dado_in => Data_OUT, dado_out => Data_IN, clk => CLK);
		 
-- ================================================= HEX 0 ====================================================
		

-- ================================================= Saidas e Operacoes ====================================================

LEDR <= SaidaREG_LEDR;

Teste_Endereco <= Addr_ROM;

end architecture;