library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ALU is  
port( a,b : in std_logic_vector(7 downto 0);
  sum, sub : out std_logic_vector(7 downto 0);
  mul :out std_logic_vector(15 downto 0));
end ALU;

architecture RTL of ALU is
signal x1,x2,x3,x4 : signed (7 downto 0);
signal x5 : signed (15 downto 0);
begin 
x1<= signed (a);
x2<= signed (b);
x3<= x1 + x2;
x4<= x1-x2;
x5<= x1*x2;
sum<= std_logic_vector(x3);
sub<= std_logic_vector(x4);
mul<= std_logic_vector(x5);
end RTL;