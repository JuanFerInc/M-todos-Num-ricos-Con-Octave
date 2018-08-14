function [y1 y2]= predictor_corrector(h)
  #definimos las funciones que utilisaremos
  f1 = inline('2*x - y');
  f2 = inline('2*x*y');
  
  x = [0:h:3] ;
  #calculamos el tamano correspondiente
    tam = length(x);
  #vector que contiene las sol
  y1 = [-1 ones(1,tam-1)];
  y2 = [1 ones(1,tam-1)];
  
  for i = 1:tam-1 
    #predictor
    y1(i+1) = y1(i) + f1(x(i),y1(i))*h;
    y2(i+1) = y2(i) + f2(x(i),y2(i))*h;
    
    #corrector
    y1(i+1) = y1(i) + (h/2)*( f1(x(i),y1(i))+f1(x(i+1),y1(i+1)));
    y2(i+1) = y2(i) + (h/2)*( f2(x(i),y2(i))+f2(x(i+1),y2(i+1)));
    endfor
    
