library IEEE;
use IEEE.std_logic_1164.all;

entity NineAndGate is
    port (X: in std_logic_vector(3 downto 0);
        Y: out std_logic);
end entity;

architecture Bhv of NineAndGate is
    begin
        process(X)
        begin
            if (X = "1001") then 
                Y <= '1';
            else 
                Y <= '0';
            end if;
        end process;
end architecture Bhv;

