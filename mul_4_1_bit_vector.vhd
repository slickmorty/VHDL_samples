entity mul_4_1_bit_vector is 
port(  a,b,c,d : in bit;
  set : in bit_vector(1 downto 0);
  o : out bit);

end mul_4_1_bit_vector;
architecture behave of mul_4_1_bit_vector is 
begin 
o<=  a when set="00" else
  b when set="01" else
  c when set="10"  else
  d;
end behave;