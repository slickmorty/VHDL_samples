library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity timer is
	port( a : in std_logic;
		clk :in std_logic;
		rst : in std_logic;
		c : out std_logic_vector(5 downto 0));
end timer;

architecture behave of timer is 
signal r_reg : unsigned (5 downto 0);
signal r_next : unsigned (5 downto 0);
begin
process(clk,a)
	begin
	if(rst='1' or a'event)	then
		if( a'event) then
			c <= std_logic_vector(r_reg);
		end if;
		r_reg<=(others => '0');
	elsif(clk'event and clk='1' and not(a'event) and a='1') then
		r_reg<= r_next;
	end if;
end process;

r_next<= r_reg +1;
end behave;
