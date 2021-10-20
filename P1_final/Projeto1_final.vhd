library ieee;
use ieee.std_logic_1164.all;

entity Projeto1_final is
  -- Total de bits das entradas e saidas
  generic ( 
	larguraDados : natural := 8;
	larguraAddrROM: natural := 9;
	larguraDadosROM: natural := 15;
	larguraDadosRAM: natural := 8;
	larguraAddrRAM: natural := 6;
	simulacao : boolean := FALSE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK_50 : in std_logic;
    KEY: in std_logic_vector(3 downto 0);
	 SW: in std_logic_vector(9 downto 0);
	 FPGA_RESET_N: in std_logic;
	 LEDR: out std_logic_vector(9 downto 0);
	 Teste_Endereco: out std_logic_vector(8 downto 0);
	 HEX0 : out std_logic_vector(6 downto 0);
	 HEX1 : out std_logic_vector(6 downto 0);
	 HEX2 : out std_logic_vector(6 downto 0);
	 HEX3 : out std_logic_vector(6 downto 0);
	 HEX4 : out std_logic_vector(6 downto 0);
	 HEX5 : out std_logic_vector(6 downto 0)
  );
end entity;


architecture arquitetura of Projeto1_final is

-- Faltam alguns sinais:
	signal Data_IN: std_logic_vector(7 downto 0);
	signal Data_OUT: std_logic_vector(7 downto 0);
	signal Data_Address: std_logic_vector(8 downto 0);
	signal instruction: std_logic_vector(14 downto 0);
	signal Addr_ROM: std_logic_vector(8 downto 0);
	signal CLK : std_logic;
	signal rd: std_logic;
	signal wr: std_logic;
	signal Saida_Decoder_Blocos: std_logic_vector(7 downto 0);
	signal Saida_Decoder_Addr: std_logic_vector(7 downto 0);
	
	signal SaidaREG_LEDR: std_logic_vector(9 downto 0);
	signal ANDLEDR9: std_logic;
	signal ANDLEDR8: std_logic;
	signal ANDLEDR: std_logic;
	signal REG_LEDR9: std_logic;
	signal REG_LEDR8: std_logic;
	signal REG_LEDR: std_logic_vector(7 downto 0);
	
	signal REG_OUT_HEX0: std_logic_vector(3 downto 0);
	signal REG_OUT_HEX1: std_logic_vector(3 downto 0);
	signal REG_OUT_HEX2: std_logic_vector(3 downto 0);
	signal REG_OUT_HEX3: std_logic_vector(3 downto 0);
	signal REG_OUT_HEX4: std_logic_vector(3 downto 0);
	signal REG_OUT_HEX5: std_logic_vector(3 downto 0);
	
	signal NOT_A5: std_logic;
	signal A5: std_logic;
	
	signal AND_HEX0: std_logic;
	signal AND_HEX1: std_logic;
	signal AND_HEX2: std_logic;
	signal AND_HEX3: std_logic;
	signal AND_HEX4: std_logic;
	signal AND_HEX5: std_logic;
	
	signal AND_ENABLE_BUFFER_8BITS: std_logic;
	signal AND_ENABLE_BUFFER_BIT_SW8: std_logic;
	signal AND_ENABLE_BUFFER_BIT_SW9: std_logic;
	signal AND_ENABLE_BUFFER_BIT_KEY0: std_logic;
	signal AND_ENABLE_BUFFER_BIT_KEY1: std_logic;
	signal AND_ENABLE_BUFFER_BIT_KEY2: std_logic;
	signal AND_ENABLE_BUFFER_BIT_KEY3: std_logic;
	signal AND_ENABLE_BUFFER_BIT_FPGA_RESET: std_logic;
	
	signal CLK_KEY0: std_logic;
	signal DebMemKey0_OUT: std_logic;
	
	signal CLK_KEY1: std_logic;
	signal DebMemKey1_OUT: std_logic;
	
	signal RESET_KEY0: std_logic;
	signal RESET_KEY1: std_logic;
	
	signal saidaclk_rap: std_logic;
	signal saidaclk_1seg: std_logic;
	signal CLK_TEMPO: std_logic;

begin

-- Instanciando os componentes:

	CLK <= CLOCK_50;

	detectorSub0: work.edgeDetector(bordaSubida)
			  port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK_KEY0);
			  
	detectorSub1: work.edgeDetector(bordaSubida)
			  port map (clk => CLOCK_50, entrada => (not KEY(1)), saida => CLK_KEY1);

CPU : entity work.CPU
		 port map (
			Instruction_IN => instruction,
			Data_IN => Data_IN,
			Data_Address => Data_Address,
			Data_OUT => Data_OUT,
			ROM_Address => Addr_ROM,
			CLOCK_50 => CLK,
			KEY => KEY,
			RESET => FPGA_RESET_N,
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
		 port map (DIN => Data_OUT, DOUT => SaidaREG_LEDR(7 downto 0), ENABLE => ANDLEDR, CLK => CLK, RST => '0');
			 
REGLEDR8 : entity work.registradorBit
		 port map (DIN => Data_OUT(0), DOUT => SaidaREG_LEDR(8), ENABLE => ANDLEDR8, CLK => CLK, RST => '0');
			 
REGLEDR9 :	entity work.registradorBit
		 port map (DIN => Data_OUT(0), DOUT => SaidaREG_LEDR(9), ENABLE => ANDLEDR9, CLK => CLK, RST => '0');
		 
-- ================================================= HEX 0 ====================================================
					  
REG_HEX0 : entity work.registradorGenerico   generic map (larguraDados => 4)
		 port map (DIN => Data_OUT(3 downto 0), DOUT => REG_OUT_HEX0, ENABLE => AND_HEX0, CLK => CLK, RST => '0');
		 
LED_HEX0 :  entity work.conversorHex7Seg
        port map(dadoHex => REG_OUT_HEX0,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => HEX0);
		 
-- ================================================= HEX1 ====================================================
					  
REG_HEX1 : entity work.registradorGenerico   generic map (larguraDados => 4)
		 port map (DIN => Data_OUT(3 downto 0), DOUT => REG_OUT_HEX1, ENABLE => AND_HEX1, CLK => CLK, RST => '0');
		 
LED_HEX1 :  entity work.conversorHex7Seg
        port map(dadoHex => REG_OUT_HEX1,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => HEX1);
		 
-- ================================================= HEX2 ====================================================
					  
REG_HEX2 : entity work.registradorGenerico   generic map (larguraDados => 4)
		 port map (DIN => Data_OUT(3 downto 0), DOUT => REG_OUT_HEX2, ENABLE => AND_HEX2, CLK => CLK, RST => '0');
		 
LED_HEX2 :  entity work.conversorHex7Seg
        port map(dadoHex => REG_OUT_HEX2,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => HEX2);
		 
-- ================================================= HEX3 ====================================================
					  
REG_HEX3 : entity work.registradorGenerico   generic map (larguraDados => 4)
		 port map (DIN => Data_OUT(3 downto 0), DOUT => REG_OUT_HEX3, ENABLE => AND_HEX3, CLK => CLK, RST => '0');
		 
LED_HEX3 :  entity work.conversorHex7Seg
        port map(dadoHex => REG_OUT_HEX3,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => HEX3);
		 
-- ================================================= HEX4 ====================================================
	
REG_HEX4 : entity work.registradorGenerico   generic map (larguraDados => 4)
		 port map (DIN => Data_OUT(3 downto 0), DOUT => REG_OUT_HEX4, ENABLE => AND_HEX4, CLK => CLK, RST => '0');	
		 
LED_HEX4 :  entity work.conversorHex7Seg
        port map(dadoHex => REG_OUT_HEX4,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => HEX4);	
		 
-- ================================================= HEX5 ====================================================	  
					  
REG_HEX5 : entity work.registradorGenerico   generic map (larguraDados => 4)
		 port map (DIN => Data_OUT(3 downto 0), DOUT => REG_OUT_HEX5, ENABLE => AND_HEX5, CLK => CLK, RST => '0');
		 
LED_HEX5 :  entity work.conversorHex7Seg
        port map(dadoHex => REG_OUT_HEX5,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => HEX5);
					  
-- ================================================= KEYS and SWITCHES Manager ====================================================


BUFFER_THREE_STATE_8BITS: entity work.bufferTreeState   generic map (dataWidth => 8)
		 port map (INPUT => SW(7 downto 0), ENABLE => AND_ENABLE_BUFFER_8BITS, OUTPUT => Data_IN);
		 
BUFFER_THREE_STATE_BIT0: entity work.bufferThreeStateBit
		 port map (INPUT => SW(8), ENABLE => AND_ENABLE_BUFFER_BIT_SW8, OUTPUT => Data_IN(0));
		 
BUFFER_THREE_STATE_BIT1: entity work.bufferThreeStateBit
		 port map (INPUT => SW(9), ENABLE => AND_ENABLE_BUFFER_BIT_SW9, OUTPUT => Data_IN(0));
		 
BUFFER_THREE_STATE_BIT2: entity work.bufferThreeStateBit
		 port map (INPUT => DebMemKey0_OUT, ENABLE => AND_ENABLE_BUFFER_BIT_KEY0, OUTPUT => Data_IN(0));
		 
BUFFER_THREE_STATE_BIT3: entity work.bufferThreeStateBit
		 port map (INPUT => DebMemKey1_OUT, ENABLE => AND_ENABLE_BUFFER_BIT_KEY1, OUTPUT => Data_IN(0));
		 
BUFFER_THREE_STATE_BIT4: entity work.bufferThreeStateBit
		 port map (INPUT => KEY(2), ENABLE => AND_ENABLE_BUFFER_BIT_KEY2, OUTPUT => Data_IN(0));
		 
BUFFER_THREE_STATE_BIT5: entity work.bufferThreeStateBit
		 port map (INPUT => KEY(3), ENABLE => AND_ENABLE_BUFFER_BIT_KEY3, OUTPUT => Data_IN(0));
		 
BUFFER_THREE_STATE_BIT6: entity work.bufferThreeStateBit
		 port map (INPUT => FPGA_RESET_N, ENABLE => AND_ENABLE_BUFFER_BIT_FPGA_RESET, OUTPUT => Data_IN(0));

baseTempo: entity work.divisorGenerico
	  generic map (divisor => 25000000)   -- passando contador ate 25 milhoes
	  port map (clk => CLK, saida_clk => saidaclk_1seg);
	  
baseTempo_Quick: entity work.divisorGenerico
	  generic map (divisor => 4000)   -- passando contador ate 4k
	  port map (clk => CLK, saida_clk => saidaclk_rap);

MUX_Base_Tempo: entity work.muxGenerico2x1_Bit
	  port map(
		  entradaA_MUX => saidaclk_1seg,
		  entradaB_MUX =>  saidaclk_rap,
		  seletor_MUX => SW(9),
		  saida_MUX => CLK_TEMPO
	  );

DEB_MEM_KEY0: work.DebMemKey0
	 port map (
		 DIN => '1', 
		 DOUT => DebMemKey0_OUT,
		 CLK => CLK_TEMPO, 
		 RST => RESET_KEY0
	 );
	 
DEB_MEM_KEY1: work.DebMemKey0
	 port map (
		 DIN => '1', 
		 DOUT => DebMemKey1_OUT,
		 CLK => CLK_KEY1, 
		 RST => RESET_KEY1
	 );

-- ================================================= Saidas e Operacoes ====================================================

NOT_A5 <= not(Data_Address(5));
A5 <= Data_Address(5);

--HAB_LEITURA_TEMPO <= '1' when (rd and A5 and Saida_Decoder_Addr(5) and Saida_Decoder_Blocos(5)) else '0';
--RST_LEITURA_TEMPO <= '1' when (Data_Address(0) and (not Data_Address(1)) and Data_Address(2) and Data_Address(3) and Data_Address(4) and Data_Address(5) and Data_Address(6) and Data_Address(7) and Data_Address(8)) else '0';


ANDLEDR <= '1' when (Saida_Decoder_Addr(0) and Saida_Decoder_Blocos(4) and wr and NOT_A5) else '0';
ANDLEDR8 <= '1' when (Saida_Decoder_Addr(1) and Saida_Decoder_Blocos(4) and wr and NOT_A5) else '0';
ANDLEDR9 <= '1' when (Saida_Decoder_Addr(2) and Saida_Decoder_Blocos(4) and wr and NOT_A5) else '0';

AND_HEX0 <= '1' when (Saida_Decoder_Addr(0) and Saida_Decoder_Blocos(4) and wr and A5) else '0';
AND_HEX1 <= '1' when (Saida_Decoder_Addr(1) and Saida_Decoder_Blocos(4) and wr and A5) else '0';
AND_HEX2 <= '1' when (Saida_Decoder_Addr(2) and Saida_Decoder_Blocos(4) and wr and A5) else '0';
AND_HEX3 <= '1' when (Saida_Decoder_Addr(3) and Saida_Decoder_Blocos(4) and wr and A5) else '0';
AND_HEX4 <= '1' when (Saida_Decoder_Addr(4) and Saida_Decoder_Blocos(4) and wr and A5) else '0';
AND_HEX5 <= '1' when (Saida_Decoder_Addr(5) and Saida_Decoder_Blocos(4) and wr and A5) else '0';

AND_ENABLE_BUFFER_8BITS <= '1' when (rd and NOT_A5 and Saida_Decoder_Addr(0) and Saida_Decoder_Blocos(5)) else '0';
AND_ENABLE_BUFFER_BIT_SW8 <= '1' when (rd and NOT_A5 and Saida_Decoder_Addr(1) and Saida_Decoder_Blocos(5)) else '0';
AND_ENABLE_BUFFER_BIT_SW9 <= '1' when (rd and NOT_A5 and Saida_Decoder_Addr(2) and Saida_Decoder_Blocos(5)) else '0';
AND_ENABLE_BUFFER_BIT_KEY0 <= '1' when (rd and A5 and Saida_Decoder_Addr(0) and Saida_Decoder_Blocos(5)) else '0';
AND_ENABLE_BUFFER_BIT_KEY1 <= '1' when (rd and A5 and Saida_Decoder_Addr(1) and Saida_Decoder_Blocos(5)) else '0';
AND_ENABLE_BUFFER_BIT_KEY2 <= '1' when (rd and A5 and Saida_Decoder_Addr(2) and Saida_Decoder_Blocos(5)) else '0';
AND_ENABLE_BUFFER_BIT_KEY3 <= '1' when (rd and A5 and Saida_Decoder_Addr(3) and Saida_Decoder_Blocos(5)) else '0';
AND_ENABLE_BUFFER_BIT_FPGA_RESET <= '1' when (rd and A5 and Saida_Decoder_Addr(4) and Saida_Decoder_Blocos(5)) else '0';

RESET_KEY0 <= '1' when (Data_Address(0) and Data_Address(1) and Data_Address(2) and Data_Address(3) and Data_Address(4) and Data_Address(5) and Data_Address(6) and Data_Address(7) and Data_Address(8)) else '0';
RESET_KEY1 <= '1' when ((not Data_Address(0)) and Data_Address(1) and Data_Address(2) and Data_Address(3) and Data_Address(4) and Data_Address(5) and Data_Address(6) and Data_Address(7) and Data_Address(8)) else '0';


LEDR <= SaidaREG_LEDR;

Teste_Endereco <= Addr_ROM;

end architecture;