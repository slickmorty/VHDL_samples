entity And_gate is
    Port(a,b : in bit;
    c : out bit);
  end and_gate;
  
  architecture behave of and_gate is
  begin
  c<= a and b;
  end behave;