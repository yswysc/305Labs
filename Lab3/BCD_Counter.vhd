library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

entity BCD_Counter is
    port (Clk, Direction, Init, Enable : in std_logic;
        Q_Out: out std_logic_vector(3 downto 0));
end entity;

architecture Bhv of BCD_Counter is
    begin
        process(Clk, Direction, Init, Enable)
        variable Q : integer range 0 to 9;
        begin
            if (rising_edge(Clk)) then
                if (Init = '1') then
                    if (Direction = '1') then
                        Q:= 9;
                    else
                        Q:= 0;
                    end if;
                elsif (Enable = '1') then
                    if (Direction = '1') then
                        if (Q > 0) then
                            Q:= Q - 1;
                        else
                            Q:= 9;
                        end if;
                    else
                        if (Q < 9) then
                            Q:= Q + 1;
                        else
                            Q:= 0;
                        end if;
                    end if; 
                end if;
            end if;
            Q_Out <= std_logic_vector(to_unsigned(Q, Q_Out'length));
        end process;
end architecture Bhv;