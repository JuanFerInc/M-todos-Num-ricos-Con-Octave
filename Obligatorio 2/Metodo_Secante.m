function a = Metodo_Secante(seed1, seed2,err,L)
  % D es el valor de la separación
  D = 440;
  
  % a_n+1 = new_a 
  % a_n = a 
  % a_n-1 = old_a
  
 
  a = seed1;
  a_old = seed2;
  
  %La función esta igualada a 0; evaluamos la función en el a correspondiente
  % utilizamos este resultado para verificar que 
  % el valor de y pertenezca al intervalo |0-10^-4|;
  % esta es la condición de parada
  
  da = abs((a-a_old)/a)
  
  while (da > err)
      % f es la función que utlizaremos en el método de la secante evaluda en valor "nuevo"
      % old_f es la función evaluada en el valor "viejo"
      f = 2*a* sinh(D/(2*a)) - L;
      old_f = 2*a_old* sinh(D/(2*a_old)) - L;
      
      % en caso que f y old_f sean muy cercanos evitamos usar la resta que podria
      % producir una cancelación catastrófica
      if (norm(f-old_f) < 1)
        % hacemos la divición para llevar a S a un valor mas cercano a 1
        s = f/old_f;
        num = ( s*(a - a_old) );
        den = (1-s);
        a_old = a;
        a_new = a + num/den;
        a = a_new;
       else      
          num = (a - a_old);
          den = (f - old_f) ;
          a_new = a - f * (num/den);
          a_old = a;
          a = a_new;
          
        endif
        % cada vez que hallamos un nuevo valor de a actualizamos a y old_a, descartando
        % el valor que fue utilizado mas de una vez. 
        
        % evaluamos la función con el nuevo valor de a que hallamos para verificar
        % si este nuevo valor cumple la condición
       da = abs((a-a_old)/a)
     endwhile
     

     