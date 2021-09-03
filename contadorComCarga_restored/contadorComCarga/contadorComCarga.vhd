library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity contadorComCarga is
    port (
	 CLOCK_50 : in STD_LOGIC;
      SW:  in STD_LOGIC_VECTOR(7 downto 0);
		KEY:  in STD_LOGIC_VECTOR(1 downto 0);
      HEX0, HEX1:    out STD_LOGIC_VECTOR(6 downto 0)
		
    );
end entity;

architecture RTL of contadorComCarga is
   signal somaOUT :      STD_LOGIC_VECTOR(7 downto 0);
	signal muxOUT :      STD_LOGIC_VECTOR(7 downto 0);
	signal contOUT :      STD_LOGIC_VECTOR(7 downto 0);
	signal clk_key :      STD_LOGIC;
   --signal subtracao : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
    begin
	 
      MUX :  entity work.muxGenerico2x1  generic map (larguraDados => 8)
        port map( entradaA_MUX => SW,
                 entradaB_MUX =>  somaOUT,
                 seletor_MUX => KEY(1), -- alterar no desenho da revisao	
                 saida_MUX => muxOUT);
					  
		detectorSub0: work.edgeDetector(bordaSubida) port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => clk_key);
					  
		CONTADOR : entity work.registradorGenerico   generic map (larguraDados => 8)
          port map (DIN => muxOUT, DOUT => contOUT, ENABLE => '1', CLK => clk_key, RST => '0');
			 
		SOMADOR :  entity work.somaConstante  generic map (larguraDados => 8, constante => 1)
        port map( entrada => contOUT, saida => somaOUT);
		  
		 nomeComponente :  entity work.conversorHex7SegDuplo
        port map(dadoHex => contOUT,
                 saida_UNIDADE_7seg => HEX0,
					  saida_DEZENA_7seg => HEX1);
		
					  
end architecture;