library ieee;
use ieee.std_logic_1164.all;
entity sandff is 
port (d, clk, reset :in std_logic;
  o : out std_logic);
end sandff;
architecture rtl of sandff is 
begin 
process (clk)
begin
  if(reset = '1') then
    o<='0';
  elsif(clk'event) then
    o<= d;
  end if;
end process;
end rtl;