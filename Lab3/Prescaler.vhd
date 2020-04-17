library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Prescaler is
  port (clk_1Mhz, Load, Enable : in  std_logic;
    clk_1Hz   : out std_logic);
end Prescaler;

architecture Behavioral of Prescaler is

  signal prescaler : unsigned(19 downto 0);
  signal clk_1Hz_i : std_logic;
begin
  gen_clk : process (clk_1Mhz, Load, Enable)
  begin  -- process gen_clk
    if (Load = '1') then
        clk_1Hz_i <= '0';
        prescaler   <= (others => '0');
    elsif (rising_edge(clk_1Mhz) and Enable = '1') then
        if prescaler = X"7A120" then     -- 500 000 in hex
            prescaler   <= (others => '0');
            clk_1Hz_i   <= not clk_1Hz_i;
        else
            prescaler <= prescaler + "1";
        end if;
    end if;
  end process gen_clk;

clk_1Hz <= clk_1Hz_i;

end Behavioral;