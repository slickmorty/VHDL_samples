library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter7bit is 
	port(	clk1 , reset: in std_logic;
		o1 : out std_logic_vector(6 downto 0));
end counter7bit;

architecture rtl of counter7bit is
signal r_reg : unsigned (6 downto 0):="0000000";
signal r_next : unsigned (6 downto 0):="0000000";
signal flag1: std_logic:='0';
signal flag2: std_logic:='1';
begin
process(clk1)
begin
if(clk1'event and clk1='1') then
flag2<=flag1 xor '0';
flag1<=flag2;
end if;
if (flag1='0') then 
	if(reset='1')	then
		r_reg<=(others => '0');
	elsif(clk1'event and clk1='1') then
		if(r_next >= "1100100") then
			r_reg<=(others => '0');
		else
			r_reg<= r_next;
		end if;
	end if;
end if;
end process;
r_next<= r_reg +1;
o1 <= std_logic_vector(r_reg);
end rtl;
	