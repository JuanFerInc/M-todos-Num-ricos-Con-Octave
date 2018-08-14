function res =  interpolacion_lagrange(x)
  % el vector u contiene los valores que forman parte en la resta del 
  % numerador y denominador; estos valores se utilizan para formar
  % la base del polinomio de Lagrange
  
  % el numerador esta formado por (x+10)(x+8)(x+6)...(x)...(x-6)(x-8)(x-10)
  % el denominador esta formado por xi correspodiente al Li(x) y los valores son 
  % (xi+10)(xi+8)...(xi)...(xi-8)(xi-10)
  
  u = [-10:2:10];
  
  % iniciamos la variable res con 0  
  % esta variable guarda la suma de Li*f(xi)
  
  res = 0;
  
  % dividimos la suma en i partes, 
  for i= 1 : length(u)
    % f guarda el valor de la función evaluada en el punto xi
    f = cosh( u(i) );
    % sub_res guarda el resultado de Lj(x)
     sub_res = 1;
     % la iteración de j = 1 : largo(u)  halla el valor del numerador y el denominador 
    for j = 1:length(u);
      % para formar  el valor Li de la base utilizamos la operación logica e
      % ignoramos la resta en la cual j = i
      if j == i
        sub_res = sub_res;
        else
        sub_res = sub_res.* (x.- u(j))/(u(i) - u(j));
        endif
       endfor
       % la variable res es actualizada con el resultado Li*f(xi)
       res = res + sub_res*f;
       endfor
