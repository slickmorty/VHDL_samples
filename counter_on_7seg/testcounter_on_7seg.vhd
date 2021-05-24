library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity testcounter_on_7seg is
end testcounter_on_7seg;

architecture test of testcounter_on_7seg is 
signal clk1,rst1,enable1,enable2: std_logic;
signal segment: std_logic_vector(7 downto 0);

component counter_on_7seg is
    port(   
        clk,rst: in std_logic;
	en1,en2 : out std_logic;
        seg: out std_logic_vector(7 downto 0)
);
end component;

begin 
l1:counter_on_7seg port map (clk1,rst1,enable1,enable2,segment);
rst1<='0';
process
	begin
	clk1<='0';
	wait for 50 ns;
	clk1<='1';
	wait for 50 ns;
end process;
end test;