library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity DecoderOPCODE is
  port   (
	 OPCODE: in std_logic_vector(5 downto 0);
	 OUTPUT: out std_logic_vector(2 downto 0)
  );
end entity;

architecture arch_name of DecoderOPCODE is
  constant LW  : std_logic_vector(5 downto 0) := "100011";
  constant SW  : std_logic_vector(5 downto 0) := "101011";
  constant BEQ : std_logic_vector(5 downto 0) := "000100";
  constant JMP : std_logic_vector(5 downto 0) := "000010";
  constant LUI : std_logic_vector(5 downto 0) := "001111";
  constant ORI : std_logic_vector(5 downto 0) := "001101";
  constant ANDI : std_logic_vector(5 downto 0) := "001100";
  constant ADDI : std_logic_vector(5 downto 0) := "001000";
  constant JAL: std_logic_vector(5 downto 0) := "000011";
  constant SLTI: std_logic_vector(5 downto 0) := "001010";
  constant BNE: std_logic_vector(5 downto 0) := "000101";
  constant TIPO_R : std_logic_vector(5 downto 0) := "000000";
  
begin
	
	OUTPUT <= "010" when (OPCODE = LW or OPCODE = SW or OPCODE = ADDI) else 
            "110" when (OPCODE = BEQ or OPCODE = BNE) else
            "001" when (OPCODE = ORI) else
            "111" when (OPCODE = SLTI) else
            "000";
	
end architecture;