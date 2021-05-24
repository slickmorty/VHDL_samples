entity Nor_gate is
    port(a,b :in bit;
    c : out bit);
  end nor_gate;
  
  architecture behave of nor_gate is 
  begin 
  c<= a nor b;
  end behave;