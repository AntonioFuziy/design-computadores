library ieee;
use ieee.std_logic_1164.all;

entity Aula7 is
  -- Total de bits das entradas e saidas
  generic ( 
	larguraDados : natural := 8;
	larguraAddrROM: natural := 9;
	larguraDadosROM: natural := 13;
	larguraDadosRAM: natural := 8;
	larguraAddrRAM: natural := 6;
	simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK_50 : in std_logic;
    KEY: in std_logic_vector(3 downto 0);
	 LEDR: out std_logic_vector(7 downto 0);
	 LEDR8: out std_logic;
	 LEDR9: out std_logic;
	 saida_ROM: out std_logic_vector(12 downto 0);
	 saida_RAM: out std_logic_vector(7 downto 0);
	 Teste_Endereco: out std_logic_vector(8 downto 0)
  );
end entity;


architecture arquitetura of Aula7 is

-- Faltam alguns sinais:
	signal Data_IN: std_logic_vector(7 downto 0);
	signal Data_OUT: std_logic_vector(7 downto 0);
	signal Data_Address: std_logic_vector(8 downto 0);
	signal instruction: std_logic_vector(12 downto 0);
	signal Addr_ROM: std_logic_vector(8 downto 0);
	signal CLK : std_logic;
	signal rd: std_logic;
	signal wr: std_logic;
	signal Saida_Decoder_Blocos: std_logic_vector(7 downto 0);
	signal Saida_Decoder_Addr: std_logic_vector(7 downto 0);
	
	signal SaidaREG_LEDR: std_logic_vector(7 downto 0);
	signal SaidaREG_LEDR8: std_logic;
	signal SaidaREG_LEDR9: std_logic;
	signal ANDLEDR9: std_logic;
	signal ANDLEDR8: std_logic;
	signal ANDLEDR: std_logic;
	signal REG_LEDR9: std_logic;
	signal REG_LEDR8: std_logic;
	signal REG_LEDR: std_logic_vector(7 downto 0);

begin

-- Instanciando os componentes:

-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
CLK <= KEY(0);
else generate
detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
end generate;

CPU : entity work.CPU
		 port map (
			Instruction_IN => instruction,
			Data_IN => Data_IN,
			Data_Address => Data_Address,
			Data_OUT => Data_OUT,
			ROM_Address => Addr_ROM,
			CLOCK_50 => CLK,
			KEY => KEY,
			RESET => '0',
			RD => rd,
			WR => wr 
		 );


ROM1 : entity work.ROM   generic map (dataWidth => larguraDadosROM, addrWidth => larguraAddrROM)
		 port map (
			 Endereco => Addr_ROM,
			 Dado => instruction
		 );
			 	 
memoriaDados : entity work.memoriaDados   generic map (dataWidth => 8, addrWidth => 6)
		 port map (addr => Data_Address(5 downto 0), we => wr, re => rd, habilita => Saida_Decoder_Blocos(0), dado_in => Data_OUT, dado_out => Data_IN, clk => CLK);

DECODER_BLOCOS : entity work.Decoder3x8 generic map (dataWidth => 8)
		 port map (INPUT => Data_Address(8 downto 6), OUTPUT => Saida_Decoder_Blocos);

DECODER_ENDERECOS : entity work.Decoder3x8 generic map (dataWidth => 8)
		 port map (INPUT => Data_Address(2 downto 0), OUTPUT => Saida_Decoder_Addr);
			 
REGLEDR : entity work.registradorGenerico   generic map (larguraDados => 8)
		 port map (DIN => Data_OUT, DOUT => SaidaREG_LEDR, ENABLE => ANDLEDR, CLK => CLK, RST => '0');
			 
REGLEDR8 : entity work.registradorBit  generic map (larguraDados => 1)
		 port map (DIN => Data_OUT(0), DOUT => SaidaREG_LEDR8, ENABLE => ANDLEDR8, CLK => CLK, RST => '0');
			 
REGLEDR9 :	entity work.registradorBit  generic map (larguraDados => 1)
		 port map (DIN => Data_OUT(0), DOUT => SaidaREG_LEDR9, ENABLE => ANDLEDR9, CLK => CLK, RST => '0');
		 
ANDLEDR <= '1' when (Saida_Decoder_Addr(0) and Saida_Decoder_Blocos(4) and wr) else '0';
ANDLEDR8 <= '1' when (Saida_Decoder_Addr(1) and Saida_Decoder_Blocos(4) and wr) else '0';
ANDLEDR9 <= '1' when (Saida_Decoder_Addr(2) and Saida_Decoder_Blocos(4) and wr) else '0';

LEDR <= SaidaREG_LEDR;
LEDR8 <= SaidaREG_LEDR8;
LEDR9 <= SaidaREG_LEDR9;

saida_ROM <= instruction;
saida_RAM <= Data_OUT;
Teste_Endereco <= Addr_ROM;

end architecture;