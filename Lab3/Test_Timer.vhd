library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

-- Testbench for the counter.
entity test_timer is
end entity test_timer;

architecture my_test of test_timer is
	signal t_Clk, t_Load, t_Start, t_Time_out : std_logic;
	signal t_Data_in : std_logic_vector(15 downto 0);
  signal t_LED_1s, t_LED_10s, t_LED_1m, t_LED_10m : std_logic_vector (7 downto 0);
	
	component Timer is
        port (Clk, Load, Start : in std_logic;
            Data_in : in std_logic_vector(15 downto 0);
            Time_out : out std_logic;
            LED_1s, LED_10s, LED_1m, LED_10m : out std_logic_vector (7 downto 0));
	end component Timer;
begin
	DUT:	Timer
		port map (t_Clk, t_Load, t_Start, t_Data_in, t_Time_out, t_LED_1s, t_LED_10s, t_LED_1m, t_LED_10m);

	-- Initialization process (code that executes only once).
 	init: process
	begin
		t_Load <= '1', '0' after 1 sec, '1' after 300 sec, '0' after 301 sec;
        ----------Case 1: [00:00-05:00], Case 2: [05:01--(05:01+12:34)]
		t_Start <= '0', '1' after 1 sec, '0' after 270 sec, '1' after 275 sec;
        ------------Case 1: Load data at [00:00], Start at [00:01] and Pause at [04:30], then start again at [04:35], expect to see time out at [00:01+04:45+00:05=04:51], Case 2: Load data at [05:00], Start at [05:01], expect to see time out at [05:00+00:01+12:34=17:35] 
    t_Data_in <= "0000010001000101", "0000000000000000" after 5 sec, "0001001000110100" after 180 sec;
        --Input Data----[04:45]-----------[00:00] but not load data-------[12:34]--------
		wait;
	end process init;
	-- clock generation
	clk_gen: process
	begin
		wait for 500 ns;
		t_clk <= '1';
		wait for 500 ns;
		t_clk <= '0';
		end process clk_gen;
end architecture my_test;