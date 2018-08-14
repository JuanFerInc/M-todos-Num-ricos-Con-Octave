function [sol1 sol2] = solucion(h)
  #Definimos las funcion solucion
  f1 = inline('2.*x -2 +e.^-x');
  f2 = inline('e.^(x.^2)');
  
  #generamos el vector con los punto de evaluacion
  x = [0:h:3];
  
  #Generamos el vector con los valores correctos
  sol1 = f1(x);
  sol2 = f2(x);
  
  #finished and working
  