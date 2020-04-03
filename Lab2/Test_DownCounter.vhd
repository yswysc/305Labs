library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

-- Testbench for the counter.
entity test_downcounter is
end entity test_downcounter;

architecture my_test of test_downcounter is
	signal t_clk, t_Direction, t_Reset, t_Enable : std_logic;
	signal t_Tens_Out, t_Ones_Out : std_logic_vector(3 downto 0);
	
	component DownCounter is
        port (D_Clk, D_Direction, D_Reset, D_Enable: in std_logic;
            Tens_Out, Ones_Out: out std_logic_vector(3 downto 0));
	end component DownCounter;
begin
	DUT:	DownCounter
		port map (t_clk, t_Direction, t_Reset, t_Enable, t_Tens_Out, t_Ones_Out);

	-- Initialization process (code that executes only once).
 	init: process
	begin
		-- reset pulse should be at the beginning
		t_Reset <= '1', '0' after 100 ns, '1' after 1200 ns, '0' after 1300 ns;
		t_Enable <= '1', '0' after 1300 ns, '1' after 1500 ns;
		t_Direction <= '1';
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