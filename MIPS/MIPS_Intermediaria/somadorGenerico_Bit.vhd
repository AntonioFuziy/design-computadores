library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity somadorGenerico_Bit is
    port
    (
        entradaA, entradaB: in std_logic;
        carryIn: in std_logic;
        carryOut: out std_logic;
        saida:  out std_logic
    );
end entity;

architecture comportamento of somadorGenerico_Bit is
    begin
        saida <= carryIn xor (entradaA xor entradaB);
        carryOut <= (entradaA and entradaB) or (carryIn and (entradaA xor entradaB));
end architecture;