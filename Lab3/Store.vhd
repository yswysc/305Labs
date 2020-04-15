library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

entity Store is
    port (Data_input : in std_logic_vector(15 downto 0);
        Load : in std_logic;
        a,b,c,d: out std_logic_vector(3 downto 0));
end entity;

architecture Bhv of Store is
    begin
      process(Load, Data_input)
        variable aa, bb, cc, dd: std_logic_vector (3 downto 0);
        begin
            if (Load = '1') then
                if ((Data_input(3 downto 0) < "1001") and (Data_input(7 downto 4) < "0101") and (Data_input(11 downto 8) < "1001") and (Data_input(15 downto 12) < "0101")) then
                    aa := Data_input(3 downto 0); 
                    bb := Data_input(7 downto 4); 
                    cc := Data_input(11 downto 8); 
                    dd := Data_input(15 downto 12);
                else
                    aa := "1001"; 
                    bb := "0101"; 
                    cc := "1001"; 
                    dd := "0101";
                end if; 
            end if;
            a <= aa;
            b <= bb;
            c <= cc;
            d <= dd;
    end process;
end architecture Bhv;