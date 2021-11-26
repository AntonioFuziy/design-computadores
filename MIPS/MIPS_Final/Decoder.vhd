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
  constant LUI : std_logic_vector(5 downto 0) := "001111";
  constant ORI : std_logic_vector(5 downto 0) := "001101";
  constant TIPO_R : std_logic_vector(5 downto 0) := "000000";
  
  alias Sel_MUX_JMP: std_logic is OUTPUT(0);
  alias Sel_MUX_RtRd: std_logic is OUTPUT(1);
  alias ori_control : std_logic is OUTPUT(2);
  alias Habilita_Escrita_Reg : std_logic is OUTPUT(3);
  alias Sel_MUX_RtIm: std_logic is OUTPUT(4);
  alias Tipo_Operacao : std_logic is OUTPUT(5);
  alias Sel_MUX_ULAMem: std_logic_vector is OUTPUT(7 downto 6);
  alias rd : std_logic is OUTPUT(8);
  alias wr : std_logic is OUTPUT(9);
  alias beq_bit : std_logic is OUTPUT(10);
  
begin
	Sel_MUX_JMP <= '1' when (OPCODE = JMP) else '0';
	Sel_MUX_RtRd <= '1' when (OPCODE = TIPO_R) else '0';
  ori_control <= '1' when (OPCODE = ORI) else '0';
	Habilita_Escrita_Reg <= '1' when (OPCODE = LUI or OPCODE = ORI or OPCODE = TIPO_R or OPCODE = LW) else '0';
	Sel_MUX_RtIm <= '1' when (OPCODE = LW or OPCODE = SW or OPCODE = ORI) else '0';
  Tipo_Operacao  <= '1' when (OPCODE = TIPO_R) else '0';
	Sel_MUX_ULAMem <= "00" when (OPCODE = TIPO_R or OPCODE = ORI) else 
                    "11" when (OPCODE = LUI) else
                    "10";
	rd <= '1' when (OPCODE = LW) else '0';
  wr <= '1' when (OPCODE = SW) else '0';
  beq_bit <= '1' when (OPCODE = BEQ) else '0';
	
end architecture;