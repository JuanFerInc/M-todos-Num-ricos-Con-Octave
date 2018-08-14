function res = exp_de_dos(b)
  N =0;
  D = 0;
  x=1/3;
  k = 27;
  
  new_b = 1;
  new_x = 1;
  
  
  for i = 0: k
   N = N + (new_b*new_x / factorial(i) );
   new_b = new_b * (b-i);
   new_x = new_x * x;
   
   endfor
   new_b = 1;
   new_x = 1;
   
  for i = 0 : k
     D = D + ( (-1)^i * new_b*new_x / factorial(i) );
   new_b = new_b * (b-i);
   new_x = new_x *x;
   endfor
   
   res = N/D;
   