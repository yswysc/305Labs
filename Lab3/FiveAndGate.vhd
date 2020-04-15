library IEEE;
use IEEE.std_logic_1164.all;

entity FiveAndGate is
    port (X: in std_logic_vector(3 downto 0);
        Y: out std_logic);
end entity;

architecture Bhv of FiveAndGate is
    begin
        process(X)
        begin
            if (X = "0101") then 
                Y <= '1';
            else 
                Y <= '0';
            end if;
        end process;
end architecture Bhv;