entity mul_2_1 is
    port(  a,b : in bit;
      set : in bit;
      c : out bit);
    end mul_2_1;
    architecture behave of mul_2_1 is 
    begin 
    c<= a when set='0' else
      b;
    end behave;