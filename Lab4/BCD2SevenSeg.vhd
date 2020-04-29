library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

entity BCD2SevenSeg is
    port (digit : in std_logic_vector(3 downto 0);
        LED_out: out std_logic_vector(7 downto 0));
end entity;

architecture Bhv of BCD2SevenSeg  is
    signal tLED : std_logic_vector(7 downto 0);
    begin
        tLED <= "10000001" when digit = "0000" else --0
                "11110011" when digit = "0001" else --1
                "01001001" when digit = "0010" else --2
                "01100001" when digit = "0011" else --3
                "00110011" when digit = "0100" else --4
                "00100101" when digit = "0101" else --5
                "00000101" when digit = "0110" else --6
                "11110001" when digit = "0111" else --7
                "00000001" when digit = "1000" else --8
                "00100001" when digit = "1001" else --9
                "00010001" when digit = "1010" else --A
                "00000111" when digit = "1011" else --b
                "10001101" when digit = "1100" else --C
                "01000011" when digit = "1101" else --d
                "00001101" when digit = "1110" else --E
                "00011101" when digit = "1111" else --F
                "11111111";
        LED_out <= tLED;
end architecture Bhv;
