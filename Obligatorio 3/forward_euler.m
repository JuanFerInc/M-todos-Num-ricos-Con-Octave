function [y1 y2] = forward_euler (h)
  #Generamos vector con los puntos de evaluacion
  x = [0:h:3];
  
  #Calculamos el tamano
  tam = length(x);

  #Generamos los vectores donde guardar los resultados
  y1 = ones(1,tam);
  y2 = ones(1,tam);
  
  #Actualisamos valores iniciales
  y1(1) = -1;
  y2(1) = 1;
  
  for i = 1 : tam-1
    #Calculamos soluciones mediante el metodo explicito de Euler
    y1(i+1) = y1(i) + (2*x(i)-y1(i))*h;
    y2(i+1) = y2(i) + (2*x(i)*y2(i))*h;
  endfor


  