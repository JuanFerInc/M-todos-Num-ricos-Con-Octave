function [y1 y2] = backward_euler(h);
  f1=inline('2*x-y');
  f2=inline('2*x*y');

  
  x = [0:h:3];
  tam = length(x);
  
  #vector con los resultados obtenidos
  y1 = [-1 ones(1,tam-1)];
  y2 = [1 ones(1,tam-1)];
    
  for i = 1 : tam-1
     
    ynew1 = y1(i) + f1(x(i),y1(i))*h; 
    ynew2 = y2(i) + f2(x(i),y2(i))*h;
    
    check1 = 1000;
    check2 = 1000;
    
  #NR del la primera ecuacion  
    while check1 > 10**-9
     yold1 = ynew1;
     ynew1 = yold1 - ( (y1(i) - yold1 + h*(2*x(i+1)-yold1)) / (h-1));
     check1 = abs(ynew1 - yold1);
      endwhile
      y1(i+1) = ynew1;
      
  #NR de la segunda ecuacion
    while check2 < 10**-4
     
      yold2 = ynew2;
      ynew2 = yold2 - (( y2(i) - yold2 + (h*2*x(i+1)*yold2) )/(-1+(h*2*x(i+1)) ));
      check2 = abs(yold2 -ynew2);
      
      endwhile
      y2(i+1) = ynew2; 
      
     endfor