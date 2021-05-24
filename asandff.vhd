library ieee;
use ieee.std_logic_1164.all;
entity asandff is 
port (d, clk, reset :in std_logic;
  o : out std_logic);
end asandff;
architecture rtl of asandff is 
begin 
process (clk, reset)
begin
  if(reset = '1') then
    o<='0';
  elsif(clk'event) then
    o<= d;
  end if;
end process;
end rtl;