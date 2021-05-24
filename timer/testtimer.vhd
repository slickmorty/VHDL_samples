library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity testtimer is
end entity;

architecture test of testtimer is
signal a1,clk1,rst1: std_logic;
signal c1: std_logic_vector(5 downto 0);

component timer is
	port( a : in std_logic;
		clk :in std_logic;
		rst : in std_logic;
		c : out std_logic_vector(5 downto 0)
);
end component;
begin
l1: timer port map (a1,clk1,rst1,c1);
rst1<='1','0' after 10 ns;
a1<='0','1' after 100 ns ,'0' after 150 ns,'1' after 200 ns,'0' after 500 ns;
process
	begin
	clk1<='0';
	wait for 50 ns;
	clk1<='1';
	wait for 50 ns;
end process;
end test;