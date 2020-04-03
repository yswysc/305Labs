library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

-- Testbench for the counter.
entity test_seq_counter is
end entity test_seq_counter;

architecture my_test of test_seq_counter is
	signal t_clk, t_reset, t_enable : std_logic;
	signal t_Q : std_logic_vector(5 downto 0);
	signal t_Mode: std_logic_vector(1 downto 0);

	component Seq_Counter is
 		port (Clk, Reset, Enable : in std_logic;
			Mode: in std_logic_vector(1 downto 0);
			Q: out std_logic_vector(5 downto 0));
	end component Seq_Counter;
begin
	DUT:	Seq_Counter
		port map (t_clk, t_reset, t_enable, t_Mode, t_Q);

	-- Initialization process (code that executes only once).
 	init: process
	begin
		-- reset pulse should be at the beginning
		t_reset <= '1', '0' after 20 ns, '1' after 90 ns, '0' after 110 ns, '1' after 300 ns, '0' after 320 ns;
		t_Enable <= '0', '1' after 30 ns, '0' after 120 ns, '1' after 150 ns, '0' after 230 ns, '1' after 280 ns, '0' after 350 ns, '1' after 450 ns;
		t_Mode <= "11", "01" after 80 ns, "10" after 160 ns, "00" after 240 ns, "01" after 300 ns, "11" after 420 ns,  "00" after 500 ns, "01" after 650 ns, "10" after 800 ns, "11" after 950 ns;
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