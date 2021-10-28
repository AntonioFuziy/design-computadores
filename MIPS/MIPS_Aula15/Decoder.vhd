library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Decoder is
  port   (
	 OPCODE: in std_logic_vector(5 downto 0);
	 OUTPUT: out std_logic_vector(6 downto 0)
  );
end entity;

architecture arch_name of Decoder is
  constant LW  : std_logic_vector(5 downto 0) := "100011";
  constant SW  : std_logic_vector(5 downto 0) := "101011";
  constant BEQ : std_logic_vector(5 downto 0) := "000100";
  
  alias Habilita_Escrita_Reg : std_logic is OUTPUT(0);
  alias Operacao : std_logic_vector(2 downto 0) is OUTPUT(3 downto 1);
  alias rd : std_logic is OUTPUT(4);
  alias wr : std_logic is OUTPUT(5);
  alias beq_bit : std_logic is OUTPUT(6);
  
begin
				 
	Habilita_Escrita_Reg <= '1' when (OPCODE = LW) else '0';
	Operacao  <= "000" when (OPCODE = LW or OPCODE = SW) else
					 "001" when (OPCODE = BEQ) else
					 "000";
	beq_bit <= '1' when (OPCODE = BEQ) else '0';
	rd <= '1' when (OPCODE = LW) else '0';
	wr <= '1' when (OPCODE = SW) else '0';
	
end architecture;