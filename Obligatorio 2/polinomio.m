function res = polinomio(x_vector,punto)
 
  size = length(x_vector);
  
  if size == 1
    res = interpolacion_aux(x_vector);
  else 
    %F calcula F[x0 ... xn] siendo xn el ultimo elemento del arreglo 
    F = interpolacion_aux(x_vector);
    %prod calcula el producto de (p - x0)(p - x1)...(p - xn)
    prod = producto(x_vector(1:size-1),punto);
    %res calcula de forma recursiva el Pn(p)
    res = (F*prod) + polinomio(x_vector(1:size-1),punto) ;
    endif
    
