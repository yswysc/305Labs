library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

entity Timer is
    port (Clk, BUTTON1, BUTTON2 : in std_logic;
		      LED_1, LED_10: out std_logic_vector(7 downto 0);
		      RC_OUT: out std_logic_vector(9 downto 0));
end entity;

architecture structural of Timer is
  signal t_Clk, t_FAnd, t_AND, NOT_BUTTON1 : std_logic;
  signal t_Q_1, t_Q_10 : std_logic_vector(3 downto 0);

component BCD_counter is
  port(
       Clk, Enable : in std_logic;
       Q_Out : out std_logic_vector(3 downto 0));
end component BCD_counter;

component BCD2SevenSeg is
    port (
        digit : in std_logic_vector(3 downto 0);
        LED_out: out std_logic_vector(7 downto 0));
end component BCD2SevenSeg;

component Prescaler is
  port (
        clk_50Mhz : in  std_logic;
        clk_05Hz   : out std_logic);
end component Prescaler;

component FAndGate is
    port (
          X: in std_logic_vector(3 downto 0);
          Y: out std_logic);
end component FAndGate;

component AND_Gate is
    port (
          X, Y: in std_logic;
          Z: out std_logic);
end component AND_Gate;

component NOT_Gate is
    port (
          X: in std_logic;
          Y: out std_logic);
end component NOT_Gate;

component RingCounter is
    port (Enable: in std_logic;
          Q_1, Q_10 : in std_logic_vector (3 downto 0);
		      Q_Out: out std_logic_vector(9 downto 0));
end component RingCounter;

begin
--Prescaler--
DUT_Clk: Prescaler port map (Clk, t_Clk);

--BUTTON1--
DUT_NOT_Gate: NOT_Gate port map (BUTTON1, NOT_BUTTON1);

--BCD Counter--
DUT_1s: BCD_Counter port map (t_Clk, NOT_BUTTON1, t_Q_1);
DUT_FAndGate: FAndGate port map (t_Q_1, t_FAnd);
DUT_AND_Gate: AND_Gate port map (t_FAnd, NOT_BUTTON1, t_AND);
DUT_10s: BCD_Counter port map (t_Clk, t_AND, t_Q_10);

--Seven segment--
DUT_SevenSegment1: BCD2SevenSeg port map (t_Q_1, LED_1);
DUT_SevenSegment10: BCD2SevenSeg port map (t_Q_10, LED_10);
  
--Ring counter--
DUT_RingCounter: RingCounter port map (BUTTON2, t_Q_1, t_Q_10, RC_OUT);
  
end architecture structural;
      