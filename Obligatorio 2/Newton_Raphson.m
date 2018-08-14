function a_new = Newton_Raphson(seed,err,L)

  a_old = seed;
  % D es el valor de la separación
  D = 440; 
    
  da = 10;
  % nuestra condición de parada es el error relativo de a
  % este error esta guardado en la variable da, lo calculamos mediante la diferencia de
  % a nuevo y el a viejo divido el a nuevo
 while  ( da > err)
    f = 2*a_old*sinh(D/(2*a_old)) - L;
    df1 =2*sinh(D/(2*a_old));
    df2 = (D * cosh(D/(2*a_old)))/a_old;
    df=df1-df2 ;
 
    a_new = (a_old*df - f)/df;
 
    da = abs((a_old - a_new)/a_new);
   
    a_old = a_new;
   endwhile   