function res = final(y, a)
  negativo = true;
  
  if a < 0;
    negativo = true;
    a = abs(a);
  else negativo = false;
    endif
  
  a_entera = fix(a);
  a_decimal = a- a_entera;
  k = fix(log2(y));
  tol = (10^-5); ## el original esra 1/2^k; tomando 10^-5 obtenemos errores muy chicos
  
  z =  (1/(2^k) * y);
  
  
  
  ##primero calculamos y^n -> y_n
  y_n = exp_egipcia(y, a_entera);
  ##tenemos que calcular 2^b
  dos_beta = exp_de_dos(a_decimal);

  ## calculamos 2^b^k
  dos_beta_k = exp_egipcia(dos_beta, k);
  ## exponeciacion truncada se pasa (la base,exponente, tolerancia) 
  z = exp_truncada(z,a_decimal, tol);
  
 
  total = z*y_n*dos_beta_k;
  
  if negativo ==true ;
    res = (1/total);
  else 
    res = total;
    endif