function [y1 y2]= heun(h)
  
  #definimos las funciones a utilizar
  f1 = inline('2*x - y');
  f2 = inline('2*x*y');
 
  #generamos el vector con los puntos de evaluacion
  x = [0:h:3] ;
  
  #calculamos el tamano del vector que contiene los resultados
  tam = length(x);
   
  #vector solucion con los valores iniciales
  y1 = [-1 ones(1,tam-1)];
  y2 = [1 ones(1,tam-1)];
  
  #los valores definido por el metodo de Heun
  g1 = 1/4;
  g2 = 3/4;
  a = 2/3;
  b = 2/3;
  
  #vector que conitene los valores de k correspondiente a la ecuacion
  k1 = ones(1,2);
  k2 = ones(1,2);
  
  for i = 1:tam-1 
    #calculamos los k1
    k1(1)  = f1(x(i),y1(i));
    k1(2)  = f2(x(i),y2(i));
    
    #calculamos los k2
    k2(1)  = f1( (x(i)+a*h) , (y1(i)+b*k1(1)*h) );
    k2(2)  = f2( (x(i)+a*h) , (y2(i)+b*k1(2)*h) );
   
    #calculamos los valores los valores de la ecuacion mediante el metodo
    #de Runge-Kuta con los valores definido para el metodo de Heun
    y1(i+1) = y1(i) + h*(g1*k1(1)+g2*k2(1));
    y2(i+1) = y2(i) + h*(g1*k1(2)+g2*k2(2));
    endfor

    