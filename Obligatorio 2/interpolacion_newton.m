function res = interpolacion_newton(x_vect, punto)
  %aseguramos que el vector este ordenado
  x = sort(x_vect);
  
  %calculamos los valores del punto por medio del polinomio de newton
  res = polinomio(x,punto);