library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity counter_on_7seg is
    port(   
        clk,rst: in std_logic;
	en1,en2 : out std_logic;
        seg: out std_logic_vector(7 downto 0)
    );
end counter_on_7seg;


architecture behave of counter_on_7seg is 

    component counter7bit is
        port(	clk1,reset : in std_logic;
            o1: out std_logic_vector(6 downto 0)
    );
    end component;

    signal number : std_logic_vector(6 downto 0);
    signal digit1:unsigned(6 downto 0):="0000000";
    signal digit2:unsigned(6 downto 0):="0000000";
    signal number2 : unsigned(6 downto 0);
    signal flag1: std_logic:='0';
    signal flag2: std_logic:='1';

    begin

    line1: counter7bit port map(clk,rst,number);
    process (clk)
        begin

        if(clk'event and clk='1') then
            flag2 <= flag1 xor '0';
            flag1 <= flag2;
            number2<=unsigned(number);
            digit1<=number2/"1010";
            digit2(3 downto 0)<=number2 mod "1010";
        end if;

        if(flag1='1') then

            en1<='0';
            en2<='1';
            seg(7)<='1';
            
            case digit1(3 downto 0) is
                when "0000" =>
                    seg(6 downto 0)<= "0000001";--81
                when "0001" =>
                    seg(6 downto 0)<= "1001111";--cf
                when "0010" =>
                    seg(6 downto 0)<= "0010010";--92
                when "0011" =>
                    seg(6 downto 0)<= "0000110";--86
                when "0100" =>
                    seg(6 downto 0)<= "1001100";--cc
                when "0101" =>
                    seg(6 downto 0)<= "0100100";--a4
                when "0110" =>
                    seg(6 downto 0)<= "0100000";--a0
                when "0111" =>
                    seg(6 downto 0)<= "0001111";--8f
                when "1000" =>
                    seg(6 downto 0)<= "0000000";--80
                when "1001" =>
                    seg(6 downto 0)<="0000100";--84
                when others =>
                    seg(6 downto 0)<="1111110";--fe
            end case;

        else

            en1<='1';
            en2<='0';
            seg(7)<='1';
            case digit2(3 downto 0) is
                when "0000" =>
                    seg(6 downto 0)<= "0000001";--81
                when "0001" =>
                    seg(6 downto 0)<= "1001111";--cf
                when "0010" =>
                    seg(6 downto 0)<= "0010010";--92
                when "0011" =>
                    seg(6 downto 0)<= "0000110";--86
                when "0100" =>
                    seg(6 downto 0)<= "1001100";--cc
                when "0101" =>
                    seg(6 downto 0)<= "0100100";--a4
                when "0110" =>
                    seg(6 downto 0)<= "0100000";--a0
                when "0111" =>
                    seg(6 downto 0)<= "0001111";--8f
                when "1000" =>
                    seg(6 downto 0)<= "0000000";--80
                when "1001" =>
                    seg(6 downto 0)<="0000100";--84
                when others =>
                    seg(6 downto 0)<="1111110";--fe
            end case;
        end if;
    end process;
end behave;
