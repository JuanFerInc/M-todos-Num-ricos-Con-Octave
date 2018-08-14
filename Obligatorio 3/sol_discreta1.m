function res = sol_discreta1(y0,x0,x1)
  #calculamos el C correspondiente a la funcion
  c = (y0 - 2*x0 + 2)*exp(x0);
  #retornamos el valor de xi+1
  res = 2*x1 - 2 + c*exp(-x1);
  