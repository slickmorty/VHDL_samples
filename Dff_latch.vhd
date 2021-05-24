library ieee;
use ieee.std_logic_1164.all;
entity Dff_latch is 
  port(  d : in std_logic;
    q : out std_logic);
end Dff_latch;

architecture behave of Dff_latch is 
begin 
process (d)
  begin
  q<=d;
end process;
end behave;