entity xor_gate is
    port(a,b :bit ;
    c :out bit);
  end xor_gate;
  
  architecture behave of xor_gate is 
  begin
  c<= a xor b;
  end behave