use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter3bit is 
  port(  clk , reset: in std_logic;
    o : out std_logic_vector(3 downto 0));
end counter3bit;

architecture rtl of counter3bit is
signal r_reg : unsigned (3 downto 0);
signal r_next : unsigned (3 downto 0);
begin

process(clk,reset)
begin 
  if(reset='1')  then
  r_reg<=(others => '0');
  elsif(clk'event and clk='1') then
    r_reg<= r_next;
  end if;
end process;

r_next<= r_reg +1;
o <= std_logic_vector(r_reg);
end rtl;