library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity test_prescaler is
end entity test_prescaler;
architecture my_test of test_prescaler is
	signal t_clk_50M, t_clk_05 : std_logic;

	component Prescaler is
 	port (clk_50Mhz : in  std_logic;
            clk_05Hz   : out std_logic);
	end component;
begin
	DUT: Prescaler port map (t_clk_50M, t_clk_05);

	clk_gen: process
	begin
		t_clk_50M <= '0';
		wait for 10 ns;
		t_clk_50M <= '1';
        wait for 10 ns;
	end process clk_gen;
end architecture my_test;