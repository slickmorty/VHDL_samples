entity decoder_2_4 is 
  port(a : in bit_Vector(1 downto 0);
  o : out bit_vector(3 downto 0));
end decoder_2_4;

architecture behave of decoder_2_4 is 
begin 
with a select 
o<=  "0001" when "00",
  "0010" when "01",
  "0100" when "10",
  "1000" when others;
end behave;