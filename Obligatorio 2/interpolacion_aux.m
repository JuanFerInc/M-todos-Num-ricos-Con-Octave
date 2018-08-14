function res = interpolacion_aux(x_vect)
  %pedimos el tamaño del vector
  size = length(x_vect);
  %primer caso base de la recursión F[x0] = f(x0)
  if (size == 1)
     res = cosh(x_vect)  ; 
  %segundo caso base F[x0 x1] = f(x1) - f(x0) / x1-x0
    elseif (size == 2)
     res = (cosh(x_vect(2)) - cosh(x_vect(1)))/(x_vect(2) - x_vect(1));
  %llamado recursivo 
   else  
       x1= x_vect(1:size-1);
       x2 = x_vect(2:size);
       res = (interpolacion_aux(x2)-interpolacion_aux(x1))/(x_vect(size) - x_vect(1));
     
     endif
 
     