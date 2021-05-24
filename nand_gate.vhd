entity nand_gate is 
  port(a , b : in bit;
  c :out bit);
end nand_gate;

architecture behave of nand_gate is 
begin
c<= a nand b;
end behave;