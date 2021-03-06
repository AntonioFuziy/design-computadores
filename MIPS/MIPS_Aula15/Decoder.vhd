library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Decoder is
  port   (
	 OPCODE: in std_logic_vector(5 downto 0);
	 OUTPUT: out std_logic_vector(10 downto 0)
  );
end entity;

architecture arch_name of Decoder is
  constant LW  : std_logic_vector(5 downto 0) := "100011";
  constant SW  : std_logic_vector(5 downto 0) := "101011";
  constant BEQ : std_logic_vector(5 downto 0) := "000100";
  constant JMP : std_logic_vector(5 downto 0) := "000010";
  constant ADD : std_logic_vector(5 downto 0) := "000000";
  constant SUB : std_logic_vector(5 downto 0) := "000000";
  
  alias Sel_MUX_JMP: std_logic is OUTPUT(0);
  alias Sel_MUX_RtRd: std_logic is OUTPUT(1);
  alias Habilita_Escrita_Reg : std_logic is OUTPUT(2);
  alias Sel_MUX_RtIm: std_logic is OUTPUT(3);
  alias Operacao : std_logic_vector(2 downto 0) is OUTPUT(6 downto 4);
  alias Sel_MUX_ULAMem: std_logic is OUTPUT(7);
  alias rd : std_logic is OUTPUT(8);
  alias wr : std_logic is OUTPUT(9);
  alias beq_bit : std_logic is OUTPUT(10);
  
begin
	
	Sel_MUX_JMP <= '1' when (OPCODE = JMP) else '0';
	Sel_MUX_RtRd <= '1' when (OPCODE = ADD or OPCODE = SUB) else '0';
	Habilita_Escrita_Reg <= '1' when (OPCODE = LW) else '0';
	Sel_MUX_RtIm <= '1' when (OPCODE = LW) else '0';
	Operacao  <= "000" when (OPCODE = LW or OPCODE = SW or OPCODE = ADD) else
					 "001" when (OPCODE = BEQ or OPCODE = SUB or OPCODE = JMP) else
					 "000";
	Sel_MUX_ULAMem <= '1' when (OPCODE = LW or OPCODE = SW) else '0';
	rd <= '1' when (OPCODE = LW) else '0';
	wr <= '1' when (OPCODE = SW) else '0';
	beq_bit <= '1' when (OPCODE = BEQ) else '0';
	
end architecture;