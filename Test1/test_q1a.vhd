library IEEE;
use IEEE.std_logic_1164.all;

entity test_q1a is
end entity test_q1a;

architecture test of test_q1a is
	signal t_X, t_A, t_B, t_C : std_logic;
	component q1a_wgen is
		port (X: in std_logic;
			A, B, C : out std_logic);
	end component;

 begin
	my_design: q1a_wgen port map (t_X, t_A, t_B, t_C);
	process
		begin
			t_X <= '0', '1' after 2 ns, '0' after 4 ns, '1' after 6 ns, '0' after 8 ns;
			wait for 10 ns;
	end process;
end architecture test;