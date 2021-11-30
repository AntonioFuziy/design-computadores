library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Decoder is
  port (
	 OPCODE: in std_logic_vector(5 downto 0);
   FUNCT: in std_logic_vector(5 downto 0);
	 OUTPUT: out std_logic_vector(13 downto 0)
  );
end entity;

architecture arch_name of Decoder is
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
  constant JR: std_logic_vector(5 downto 0) := "001000";
  
  alias Sel_JR: std_logic is OUTPUT(0);
  alias Sel_MUX_JMP: std_logic is OUTPUT(1);
  alias Sel_MUX_RtRd: std_logic_vector is OUTPUT(3 downto 2);
  alias ori_control : std_logic is OUTPUT(4);
  alias Habilita_Escrita_Reg : std_logic is OUTPUT(5);
  alias Sel_MUX_RtIm: std_logic is OUTPUT(6);
  alias Tipo_Operacao : std_logic is OUTPUT(7);
  alias Sel_MUX_ULAMem: std_logic_vector is OUTPUT(9 downto 8);
  alias rd : std_logic is OUTPUT(10);
  alias wr : std_logic is OUTPUT(11);
  alias beq_bit : std_logic is OUTPUT(12);
  alias bne_bit : std_logic is OUTPUT(13);
  
begin

  Sel_JR <= '1' when (OPCODE = TIPO_R and FUNCT = JR) else '0';

	Sel_MUX_JMP <= '1' when (OPCODE = JMP or OPCODE = JAL) else '0';

	Sel_MUX_RtRd <= "01" when (OPCODE = TIPO_R) else 
                  "10" when (OPCODE = JAL) else
                  "00";

  ori_control <= '1' when (OPCODE = ORI or OPCODE = ANDI) else '0';

	Habilita_Escrita_Reg <= '1' when (
    OPCODE = LUI or 
    OPCODE = ANDI or
    OPCODE = ORI or 
    (OPCODE = TIPO_R and FUNCT /= JR) or 
    OPCODE = LW or 
    OPCODE = ADDI or
    OPCODE = JAL or
    OPCODE = SLTI
  ) else '0';

	Sel_MUX_RtIm <= '1' when (
    OPCODE = LW or
    OPCODE = SW or
    OPCODE = ORI or
    OPCODE = ADDI or
    OPCODE = SLTI or
    OPCODE = ANDI
  ) else '0';

  Tipo_Operacao  <= '1' when (OPCODE = TIPO_R) else '0';
  
	Sel_MUX_ULAMem <= "00" when (OPCODE = TIPO_R or OPCODE = ORI or OPCODE = ADDI or OPCODE = ANDI or OPCODE = SLTI) else 
                    "11" when (OPCODE = LUI) else
                    "10" when (OPCODE = JAL) else
                    "01";

	rd <= '1' when (OPCODE = LW) else '0';

  wr <= '1' when (OPCODE = SW) else '0';

  beq_bit <= '1' when (OPCODE = BEQ) else '0';

  bne_bit <= '1' when (OPCODE = BNE) else '0';

end architecture;