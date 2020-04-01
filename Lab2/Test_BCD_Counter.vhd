library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

-- Testbench for the counter.
entity test_bcd_counter is
end entity test_bcd_counter;

architecture my_test of test_bcd_counter is
	signal t_clk, t_Direction, t_Init, t_Enable : std_logic;
	signal t_Q_Out : std_logic_vector(3 downto 0);
	
	component BCD_Counter is
        port (Clk, Direction, Init, Enable : in std_logic;
		    Q_Out: out std_logic_vector(3 downto 0));
	end component BCD_Counter;
begin
	DUT:	BCD_Counter
		port map (t_clk, t_Direction, t_Init, t_Enable, t_Q_Out);

	-- Initialization process (code that executes only once).
 	init: process
	begin
		-- reset pulse should be at the beginning
		t_Init <= '1', '0' after 20 ns, '1' after 90 ns, '0' after 110 ns, '1' after 300 ns, '0' after 320 ns;
		t_Enable <= '1', '1' after 30 ns, '0' after 120 ns, '1' after 150 ns, '0' after 230 ns, '1' after 280 ns, '0' after 350 ns, '1' after 450 ns;
		t_Direction <= '1', '0' after 80 ns, '1' after 160 ns, '0' after 240 ns, '1' after 300 ns, '0' after 420 ns,  '1' after 820 ns;
		wait;
	end process init;
	-- clock generation
	clk_gen: process
	begin
		wait for 5 ns;
		t_clk <= '1';
		wait for 5 ns;
		t_clk <= '0';
		end process clk_gen;
end architecture my_test;