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
        tLED <= "10011111" when digit = "0001" else --1
                "00100101" when digit = "0010" else --2
                "00001101" when digit = "0011" else --3
                "10011001" when digit = "0100" else --4
                "01001001" when digit = "0101" else --5
                "01000001" when digit = "0110" else --6
                "00011111" when digit = "0111" else --7
                "00000001" when digit = "1000" else --8
                "00001001" when digit = "1001" else --9
                "00000011" when digit = "0000" else --0
                "11111111";
        LED_out <= tLED;
end architecture Bhv;
