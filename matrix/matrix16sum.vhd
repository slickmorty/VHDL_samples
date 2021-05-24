library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity matrix16sum is
	port(	matrix1,matrix2 : in std_logic_vector(15 downto 0);
		clk: in std_logic;
		o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,o11,o12
		,o13,o14,o15,o16 : out std_logic_vector(15 downto 0)
);
end matrix16sum;

architecture behave of matrix16sum is
signal flag1: unsigned(4 downto 0) :="00000";
signal flag2: unsigned(4 downto 0) :="00000";
type matrix_type is array(15 downto 0) of std_logic_vector(15 downto 0);
signal mat1:matrix_type;
signal mat2: matrix_type;

begin

process (clk)
begin
	if(flag1<="01111") then
			mat1(to_integer(flag1))(15 downto 0)<= matrix1(15 downto 0);
			mat2(to_integer(flag1))(15 downto 0)<= matrix2(15 downto 0);
			flag2<=flag1 + 1;
			flag1<=flag2;
	elsif(flag1>"01111") then
		o1<=std_logic_vector(unsigned(mat1(0)(15 downto 0))+unsigned(mat2(0)(15 downto 0)));
		o2<=std_logic_vector(unsigned(mat1(1)(15 downto 0))+unsigned(mat2(1)(15 downto 0)));
		o3<=std_logic_vector(unsigned(mat1(2)(15 downto 0))+unsigned(mat2(2)(15 downto 0)));
		o4<=std_logic_vector(unsigned(mat1(3)(15 downto 0))+unsigned(mat2(3)(15 downto 0)));
		o5<=std_logic_vector(unsigned(mat1(4)(15 downto 0))+unsigned(mat2(4)(15 downto 0)));
		o6<=std_logic_vector(unsigned(mat1(5)(15 downto 0))+unsigned(mat2(5)(15 downto 0)));
		o7<=std_logic_vector(unsigned(mat1(6)(15 downto 0))+unsigned(mat2(6)(15 downto 0)));
		o8<=std_logic_vector(unsigned(mat1(7)(15 downto 0))+unsigned(mat2(7)(15 downto 0)));
		o9<=std_logic_vector(unsigned(mat1(8)(15 downto 0))+unsigned(mat2(8)(15 downto 0)));
		o10<=std_logic_vector(unsigned(mat1(9)(15 downto 0))+unsigned(mat2(9)(15 downto 0)));
		o11<=std_logic_vector(unsigned(mat1(10)(15 downto 0))+unsigned(mat2(10)(15 downto 0)));
		o12<=std_logic_vector(unsigned(mat1(11)(15 downto 0))+unsigned(mat2(11)(15 downto 0)));
		o13<=std_logic_vector(unsigned(mat1(12)(15 downto 0))+unsigned(mat2(12)(15 downto 0)));
		o14<=std_logic_vector(unsigned(mat1(13)(15 downto 0))+unsigned(mat2(13)(15 downto 0)));
		o15<=std_logic_vector(unsigned(mat1(14)(15 downto 0))+unsigned(mat2(14)(15 downto 0)));
		o16<=std_logic_vector(unsigned(mat1(15)(15 downto 0))+unsigned(mat2(15)(15 downto 0)));

	end if;
end process;
end behave;
			
			
		
			
			