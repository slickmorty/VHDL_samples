library ieee;
use ieee.std_logic_1164.all;
entity reg8bit is 
port(   d : in std_logic_vector(7 downto 0);
  clk : in std_logic;
  o : out std_logic_vector(7 downto 0));
end reg8bit;
architecture rtl of reg8bit is 
begin 
process (clk)
  begin
  if(clk'event) then
    o<=d;
  end if;
end process;
end rtl;