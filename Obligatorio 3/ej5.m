function [sol1 sol2] = ej5(h)
  
  t = [0:h:3];
  
  sol1 = lsode('2*t-x' ,-1, t );
  sol2 = lsode("2*t*x" ,1, t );
  