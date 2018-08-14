function res = exp_egipcia(a,b)
  ## a es la base
  ## b es el exponente  
  if(a == 0)
  res = 0;
  elseif(b == 0)
  res=1;
  else  
  bin = int_a_binario(b);
  size = length(bin);
  res=1;
  for i = size:-1:1
    if (bin(i) == 1)
      res = res * a;
      endif
      a = a*a;
    endfor
  endif