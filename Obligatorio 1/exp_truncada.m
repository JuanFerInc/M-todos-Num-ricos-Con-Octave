function res = exp_truncada(a, b, tol)
  res = 0;
  x = a-1;
  
  new_x = 1;
  
  new_b = 1;
  
  k = fix( abs( log2(1/tol) ) ) +1 ;
  
  for i = 0 : k
    res = res + ( ( new_b * new_x)/ factorial(i)) ;
    new_b = new_b * (b - i);
    new_x = new_x*x;
    
    endfor
    
  