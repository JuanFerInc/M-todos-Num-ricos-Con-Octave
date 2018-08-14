function graficar
  x = [-10:.01:10];
  
  y = interpolacion_lagrange(x);
  %subplot(2,2,1)
  figure (1)
  
  plot(x,cosh(x))
  title("Octave Cosh(x)")
  xlabel("valores de x")
  ylabel("Cosh(x)")
  
  hold on
  %subplot(2,2,2)
  figure (2)
  
  plot(x,y)
  title("Metodo Interpolacion de Lagrange")
  xlabel("valores de x")
  ylabel("Y(x)")
  
  hold on
  %subplot(2,2,3)
  figure (3)
  dif = abs(y-cosh(x));
  
  semilogy(x,dif)
  title("Diferencia entre MIdeL y Cos(x)")
  xlabel("valores de x")
  ylabel("abs(Y(x) - Cosh(x))")
  
  hold on
  
  figure (4)
  a = 1192.5;
  y = a*cosh(x/a);
  plot(x,y)