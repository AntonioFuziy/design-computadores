library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Decoder is
  port   (
	 OPCODE: in std_logic_vector(5 downto 0);
	 OUTPUT: out std_logic_vector(8 downto 0)
  );
end entity;

architecture arch_name of Decoder is
  constant LW  : std_logic_vector(5 downto 0) := "100011";
  constant SW  : std_logic_vector(5 downto 0) := "101011";
  constant BEQ : std_logic_vector(5 downto 0) := "000100";
  constant JMP : std_logic_vector(5 downto 0) := "000010";
  constant TIPO_R : std_logic_vector(5 downto 0) := "000000";
  
  alias Sel_MUX_JMP: std_logic is OUTPUT(0);
  alias Sel_MUX_RtRd: std_logic is OUTPUT(1);
  alias Habilita_Escrita_Reg : std_logic is OUTPUT(2);
  alias Sel_MUX_RtIm: std_logic is OUTPUT(3);
  alias Tipo_Operacao : std_logic is OUTPUT(4);
  alias Sel_MUX_ULAMem: std_logic is OUTPUT(5);
  alias rd : std_logic is OUTPUT(6);
  alias wr : std_logic is OUTPUT(7);
  alias beq_bit : std_logic is OUTPUT(8);
  
begin
	--certo
	Sel_MUX_JMP <= '1' when (OPCODE = JMP) else '0';

  --certo
	Sel_MUX_RtRd <= '1' when (OPCODE = TIPO_R) else '0';

  --talvez correcao Habilita_Escrita_Reg <= '0' when (OPCODE=SW or OPCODE=BEQ) else '1';
	Habilita_Escrita_Reg <= '0' when (OPCODE = SW or OPCODE = BEQ) else '1';

  --talvez corrigir pra OPCODE=LW or OPCODE=SW
	Sel_MUX_RtIm <= '1' when (OPCODE = LW or OPCODE = SW) else '0';

	--certo
  Tipo_Operacao  <= '1' when (OPCODE = TIPO_R) else '0';

  --talvez correcao Sel_MUX_ULAMem <= '0' when (OPCODE = TIPO_R) else '1';
	Sel_MUX_ULAMem <= '0' when (OPCODE = TIPO_R) else '1';

  --certo
	rd <= '1' when (OPCODE = LW) else '0';

	--certo
  wr <= '1' when (OPCODE = SW) else '0';

	--certo
  beq_bit <= '1' when (OPCODE = BEQ) else '0';
	
end architecture;