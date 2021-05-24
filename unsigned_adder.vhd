library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity unsigned_adder is 
port( a,b : in std_logic_vector(3 downto 0);
  o : out std_logic_vector(3 downto 0));
end unsigned_adder;

architecture RTL of unsigned_adder is
signal x1,x2,x3 : unsigned (3 downto 0);
begin 
x1<= unsigned (a);
x2<= unsigned (b);
x3<= x1 + x2;
o<= std_logic_vector(x3);
end RTL;