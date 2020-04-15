library IEEE;
use IEEE.std_logic_1164.all;

entity AND_4_bit is
    port (A, B: in std_logic_vector (3 downto 0);
        Z: out std_logic);
end entity;

architecture Bhv of AND_4_bit is
    begin
        process(A, B)
        begin
            if (A = B) then
                Z <= '1';
            else 
                Z <= '0';
            end if;
        end process;
end architecture Bhv;




