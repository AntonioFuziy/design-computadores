library ieee;
use ieee.std_logic_1164.all;

entity Aula5 is
  -- Total de bits das entradas e saidas
  generic ( 
	larguraDados : natural := 8;
	larguraAddrROM: natural := 9;
	larguraPC_ROM: natural := 9;
	larguraDadosROM: natural := 13;
	larguraDadosRAM: natural := 8;
	larguraAddrRAM: natural := 8;
	larguraFLAG_IGUAL: natural := 2;
	simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK_50 : in std_logic;
    KEY: in std_logic_vector(3 downto 0);
    entradaA: out std_logic_vector(7 downto 0);
	 SEL_MUX_PC: out std_logic_vector(1 downto 0);
	 HABILITA: out std_logic;
	 FLAG: out std_logic;
	 SAIDA_REG_FLAG : out std_logic;
	 OPERACAO: out std_logic_vector(1 downto 0);
	 entradaB: out std_logic_vector(7 downto 0);
	 TESTE_ENDERECO_MEM: out std_logic_vector(larguraAddrROM-1 downto 0)
  );
end entity;


architecture arquitetura of Aula5 is

-- Faltam alguns sinais:
  signal MUX_ULA : std_logic_vector (larguraDados-1 downto 0);
  signal REG1_ULA_A : std_logic_vector (larguraDados-1 downto 0);
  signal Saida_ULA : std_logic_vector (larguraDados-1 downto 0);
  signal Sinais_Controle : std_logic_vector (11 downto 0);
  signal PC_ROM : std_logic_vector (larguraAddrROM-1 downto 0);
  signal SomaUm_PC : std_logic_vector (larguraAddrROM-1 downto 0);
  signal CLK : std_logic;
  signal SelMUX : std_logic;
  signal Habilita_A : std_logic;
  signal Operacao_ULA : std_logic_vector(1 downto 0);
  signal Instrucao : std_logic_vector (larguraDadosROM-1 downto 0);
  signal RAM_MUX : std_logic_vector (larguraDadosRAM-1 downto 0);
  signal SomaUm_MUX_Desvio : std_logic_vector (larguraPC_ROM-1 downto 0);
  signal jeq : std_logic;
  signal ret : std_logic;
  signal jsr : std_logic;
  signal Habilita_Escrita_MEM : std_logic;
  signal Habilita_Leitura_MEM : std_logic;
  signal Habilita_RET : std_logic;
  signal SelMux_JMP_PC : std_logic;
  signal Habilita_Flag_Igual : std_logic;
  signal ULA_FLAG : std_logic;
  signal saidaFLAG_LogicaDesvio : std_logic;
  signal SelMux_MUXROM : std_logic_vector(1 downto 0);
  signal REG_END_MUX : std_logic_vector (larguraPC_ROM-1 downto 0);
  signal MUX_Desvio_PC : std_logic_vector (larguraPC_ROM-1 downto 0);

begin

-- Instanciando os componentes:

-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
CLK <= KEY(0);
else generate
detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
end generate;

-- O port map completo do MUX.
MUX1 :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
        port map( entradaA_MUX => RAM_MUX,
                 entradaB_MUX =>  Instrucao(larguraDados-1 downto 0),
                 seletor_MUX => SelMUX,
                 saida_MUX => MUX_ULA);

-- O port map completo do Acumulador.
REG1 : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
          port map (DIN => Saida_ULA, DOUT => REG1_ULA_A, ENABLE => Habilita_A, CLK => CLK, RST => '0');

-- O botao 3 faz o Reset da MEF:
PC : entity work.registradorGenerico   generic map (larguraDados => larguraPC_ROM)
          port map (DIN => MUX_Desvio_PC, DOUT => PC_ROM, ENABLE => '1', CLK => CLK, RST => '0');
			 
somaUm :  entity work.somaConstante  generic map (larguraDados => larguraPC_ROM, constante => 1)
        port map( entrada => PC_ROM, saida => SomaUm_MUX_Desvio);
			 
-- O port map completo da ULA:
ULA1 : entity work.ULASomaSub  generic map(larguraDados => larguraDados)
          port map (entradaA => REG1_ULA_A, entradaB => MUX_ULA, saida => Saida_ULA, seletor => Operacao_ULA, flagIgual => ULA_FLAG);

-- Falta acertar o conteudo da ROM (no arquivo memoriaROM.vhd)
ROM1 : entity work.memoriaROM   generic map (dataWidth => larguraDadosROM, addrWidth => larguraAddrROM)
          port map (Endereco => PC_ROM, Dado => Instrucao);
			 
Decoder : entity work.Decoder
          port map (OPCODE => Instrucao(larguraDadosROM-1 downto 9), OUTPUT => Sinais_Controle);
			 
memoriaDados : entity work.memoriaRAM   generic map (dataWidth => larguraDadosRAM, addrWidth => larguraAddrRAM)
          port map (addr => Instrucao(7 downto 0), we => Habilita_Escrita_MEM, re => Habilita_Leitura_MEM, habilita => Instrucao(8), dado_in => REG1_ULA_A, dado_out => RAM_MUX, clk => CLK);

-- Aula5 componentes novos ========================================================================================================			 

FLAG_IGUAL : entity work.flagComparacao   generic map (larguraDados => larguraFLAG_IGUAL)
          port map (DIN => ULA_FLAG, DOUT => saidaFLAG_LogicaDesvio, ENABLE => Habilita_Flag_Igual, CLK => CLK, RST => '0');
			 
END_RET : entity work.enderecoRetorno   generic map (larguraDados => 9)
          port map (DIN => SomaUm_MUX_Desvio, DOUT => REG_END_MUX, ENABLE => Habilita_RET, CLK => CLK, RST => '0');

MUX4x2_PC :  entity work.muxGenerico4x2 generic map (larguraDados => 9)
        port map( 
			  entradaA_MUX => SomaUm_MUX_Desvio,
			  entradaB_MUX =>  Instrucao(8 downto 0),
			  entradaC_MUX => REG_END_MUX,
			  entradaD_MUX =>  "000000000",
			  seletor_MUX => SelMux_MUXROM,
			  saida_MUX => MUX_Desvio_PC
			);

LOGICA_DESVIO : entity work.logicaDesvio   generic map (larguraDados => larguraFLAG_IGUAL)
          port map (SelMUX_JMP_PC => SelMux_JMP_PC, RET => ret, JSR => jsr, JEQ => jeq, FLAG_COMP => saidaFLAG_LogicaDesvio, SelMUX_ROM => SelMux_MUXROM);
			 
Habilita_RET <= Sinais_Controle(11);
SelMux_JMP_PC <= Sinais_Controle(10);
ret <= Sinais_Controle(9);
jsr <= Sinais_Controle(8);
jeq <= Sinais_Controle(7);
selMUX <= Sinais_Controle(6);
Habilita_A <= Sinais_Controle(5);
Operacao_ULA <= Sinais_Controle(4 downto 3);
Habilita_Flag_Igual <= Sinais_Controle(2);
Habilita_Leitura_MEM <= Sinais_Controle(1);
Habilita_Escrita_MEM <= Sinais_Controle(0);

SEL_MUX_PC <= SelMux_MUXROM;
HABILITA <= Habilita_A;
OPERACAO <= Operacao_ULA;
entradaB <= MUX_ULA;
entradaA <= REG1_ULA_A;
FLAG <= ULA_FLAG;
SAIDA_REG_FLAG <= saidaFLAG_LogicaDesvio;
TESTE_ENDERECO_MEM <= PC_ROM;

end architecture;