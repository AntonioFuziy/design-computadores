library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Decoder is

  port   (
    -- Input ports
	 OPCODE: in std_logic_vector(3 downto 0);
	 OUTPUT: out std_logic_vector(11 downto 0)
  );
end entity;


architecture arch_name of Decoder is
  constant NOP  : std_logic_vector(3 downto 0) := "0000";
  constant LDA  : std_logic_vector(3 downto 0) := "0001";
  constant SOMA : std_logic_vector(3 downto 0) := "0010";
  constant SUB  : std_logic_vector(3 downto 0) := "0011";
  constant LDI  : std_logic_vector(3 downto 0) := "0100";
  constant STA  : std_logic_vector(3 downto 0) := "0101"; 
  constant JMP  : std_logic_vector(3 downto 0) := "0110"; 
  constant JEQ  : std_logic_vector(3 downto 0) := "0111"; 
  constant CEQ  : std_logic_vector(3 downto 0) := "1000"; 
  constant JSR  : std_logic_vector(3 downto 0) := "1001"; 
  constant RET  : std_logic_vector(3 downto 0) := "1010"; 
  
  alias Habilita_Escrita_Mem : std_logic is OUTPUT(0);
  alias Habilita_Leitura_Mem : std_logic is OUTPUT(1);
  alias Habilita_Flag_Igual : std_logic is OUTPUT(2);
  alias Operacao : std_logic_vector(1 downto 0) is OUTPUT(4 downto 3);
  alias Habilita_A : std_logic is OUTPUT(5);
  alias SelMUX : std_logic is OUTPUT(6);
  alias jeq2 : std_logic is OUTPUT(7);
  alias jsr2 : std_logic is OUTPUT(8);
  alias ret2 : std_logic is OUTPUT(9);
  alias SelMUX_JMP_PC : std_logic is OUTPUT(10);
  alias Habilita_Escrita_Ret : std_logic is OUTPUT(11);
  
begin
--	OUTPUT <= "000000110010" when OPCODE = LDA else
--				 "000000101010" when OPCODE = SOMA else
--				 "000000100010" when OPCODE = SUB else
--				 "000001110000" when OPCODE = LDI else
--				 "100000000001" when OPCODE = STA else
--				 "010000000000" when OPCODE = JMP else
--				 "010010000100" when OPCODE = JEQ else
--				 "000001011110" when OPCODE = CEQ else
--				 "110100000000" when OPCODE = JSR else
--				 "011000000000" when OPCODE = RET else
--				 "000000000000";
				 
	Habilita_Escrita_Mem <= '1' when (OPCODE = STA) else '0';
	Habilita_Leitura_Mem <= '1' when (OPCODE = LDA or OPCODE = SOMA or OPCODE = SUB or OPCODE = CEQ) else '0';
	Habilita_Flag_Igual <= '1' when (OPCODE = CEQ) else '0';
	Operacao  <= "10" when (OPCODE = LDA or OPCODE = LDI) else 
					 "01" when (OPCODE = SOMA) else
					 "00" when (OPCODE = SUB) else
					 "11";
	Habilita_A <= '1' when (OPCODE = LDA or OPCODE = SOMA or OPCODE = SUB or OPCODE = LDI) else '0';
	SelMUX <= '1' when (OPCODE = LDI) else '0';
	jeq2 <= '1' when (OPCODE = JEQ) else '0';
	jsr2 <= '1' when (OPCODE = JSR) else '0';
	ret2 <= '1' when (OPCODE = RET) else '0';
	SelMUX_JMP_PC <= '1' when (OPCODE = JMP) else '0';
	Habilita_Escrita_Ret <= '1' when (OPCODE = JSR) else '0';
	
end architecture;