entity xnor_gate is
    port(a , b : in bit;
    c :out bit);
  end xnor_gate;
  
  architecture behave of xnor_gate is
  begin
  c<= a xnor b;
  end behave ;