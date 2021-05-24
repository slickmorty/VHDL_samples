library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity testmat16sum is
end testmat16sum;

architecture test of testmat16sum is

component matrix16sum is
	port(	matrix1,matrix2 : in std_logic_vector(15 downto 0);
		clk: in std_logic;
		o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,o11,o12
		,o13,o14,o15,o16 : out std_logic_vector(15 downto 0)
);
end component;

signal mat1,mat2 : std_logic_vector(15 downto 0);
signal clk : std_logic;
signal out1,out2,out3,out4,out5,out6,out7,out8
,out9,out10,out11,out12,out13,out14,out15,out16 : std_logic_vector(15 downto 0);

begin

l1:matrix16sum port map(mat1,mat2,clk,out1,out2,out3,out4,out5,out6,out7,out8
,out9,out10,out11,out12,out13,out14,out15,out16);

process
begin
	clk<='1';
	wait for 50 ns;
	clk<='0';
	wait for 50 ns;
end process;

---------------------------------------------------------------
mat1<=x"0000",x"1111" after 100 ns,x"1010" after 200 ns,x"aaaa" after 300 ns,
x"aaaa" after 400 ns,x"5555" after 500 ns,x"0000" after 600 ns,x"eeee" after 700 ns,
x"2222" after 800 ns,x"3333" after 900 ns,x"3333" after 1000 ns,x"7777" after 1100 ns,
x"0202" after 1200 ns,x"6060" after 1300 ns,x"4321" after 1400 ns,x"ffff" after 1500 ns;
----------------------------------------------------------------------
mat2<=x"aaaa",x"1111" after 100 ns,x"0101" after 200 ns,x"5555" after 300 ns,
x"aaaa" after 400 ns,x"5555" after 500 ns,x"eeee" after 600 ns,x"0000" after 700 ns,
x"2222" after 800 ns,x"6666" after 900 ns,x"8888" after 1000 ns,x"7777" after 1100 ns,
x"2020" after 1200 ns,x"0606" after 1300 ns,x"1234" after 1400 ns,x"ffff" after 1500 ns;


end test;