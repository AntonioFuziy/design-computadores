library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Decoder is

  port   (
    -- Input ports
	 OPCODE: in std_logic_vector(3 downto 0);
	 OUTPUT: out std_logic_vector(3 downto 0)
  );
end entity;


architecture arch_name of Decoder is
  constant CLRA : std_logic_vector(3 downto 0) := "0000";
  constant LDA : std_logic_vector(3 downto 0) := "0001";
  constant SOMA : std_logic_vector(3 downto 0) := "0010";
  constant SUB : std_logic_vector(3 downto 0) := "0011";

begin
	OUTPUT <= "0010" when OPCODE = CLRA else
				 "0100" when OPCODE = LDA else
				 "1101" when OPCODE = SOMA else
				 "1100" when OPCODE = SUB else
				 "0000";
end architecture;