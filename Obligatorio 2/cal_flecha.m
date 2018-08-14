function flecha = cal_flecha(a)
  D = 440
  x_p = -D/2
  % para hallar la flecha utilizamos la función definida en el ejercicio 2
  flecha = a * ( cosh( D/(2*a) ) - 1 )

