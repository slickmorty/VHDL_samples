library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity shiftreg is
    Port ( CLK : in  STD_LOGIC;
           D   : in  STD_LOGIC;
           O : out STD_LOGIC_VECTOR(7 downto 0));
end shiftreg;
    
architecture Behavioral of shiftreg is
    signal clock : STD_LOGIC_VECTOR(4 downto 0);
    signal shift_reg : STD_LOGIC_VECTOR(7 downto 0) := X"00";
begin
    process (CLK)
    begin
        if (CLK'event and CLK = '1') then
            clock <= clock + '1';
        end if;
    end process;
    
    process (clock(4))
    begin
        if (clock(4)'event and clock(4) = '1') then
            shift_reg(7) <= D;
            shift_reg(6) <= shift_reg(7);
            shift_reg(5) <= shift_reg(6);
            shift_reg(4) <= shift_reg(5);
            shift_reg(3) <= shift_reg(4);
            shift_reg(2) <= shift_reg(3);
            shift_reg(1) <= shift_reg(2);
            shift_reg(0) <= shift_reg(1);
        end if;
    end process;
    O <= shift_reg;

end Behavioral;