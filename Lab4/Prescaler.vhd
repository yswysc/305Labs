library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Prescaler is
  port (clk_50Mhz : in  std_logic;
    clk_05Hz   : out std_logic);
end Prescaler;

architecture Behavioral of Prescaler is
begin
  gen_clk : process (clk_50Mhz)
    variable prescaler : unsigned(27 downto 0) := (others => '0');
    variable clk_05Hz_i : std_logic := '0';
  begin  -- process gen_clk
    if (rising_edge(clk_50Mhz)) then
        if prescaler = X"2FAF080" then     -- 50 000 000 in hex
            prescaler   := (others => '0');
            clk_05Hz_i   := not clk_05Hz_i;
        else
            prescaler := prescaler + 1;
        end if;
    end if;
    clk_05Hz <= clk_05Hz_i;
  end process gen_clk;
end Behavioral;