library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DebMemKey0 is
    port (DIN : in std_logic;
       DOUT : out std_logic;
       CLK : in std_logic;
		 RST: in std_logic_vector(8 downto 0)
	  );
end entity;

architecture comportamento of DebMemKey0 is
begin
    process(RST, CLK)
    begin
		if (rising_edge(CLK)) then
			DOUT <= DIN;
		end if;
		if(RST = "111111111") then
			DOUT <= '0';
		end if;
    end process;
end architecture;