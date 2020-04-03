library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

entity  DownCounter is
    port (D_Clk, D_Direction, D_Reset, D_Enable: in std_logic;
        Tens_Out, Ones_Out: out std_logic_vector(3 downto 0));
end entity;

architecture Structural of DownCounter is
    component BCD_Counter is
        port (Clk, Direction, Init, Enable : in std_logic;
            Q_Out: out std_logic_vector(3 downto 0));
    end component BCD_Counter;

    component My_Gate is
        port (Direction: in std_logic;
            X: in std_logic_vector(3 downto 0);
            Y: out std_logic);
    end component My_Gate;
    
    signal Sub_Clk: std_logic;

    begin
        Ones_digit: BCD_Counter
            port map (Clk => D_Clk, Direction => D_Direction, Init => D_Reset, Enable => D_Enable,
                    Q_Out => Ones_Out);
        
        ANDGATE: My_Gate
            port map (Direction => D_Direction, X => Ones_Out,
                    Y => Sub_Clk);
        
        Tens_digit: BCD_counter
            port map (Clk => Sub_Clk, Direction => D_Direction, Init => D_Reset, Enable => D_Enable,
                    Q_Out => Tens_Out);
end architecture Structural;