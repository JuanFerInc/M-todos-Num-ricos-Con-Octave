function [M_err_115  M_err_215 M_err_130 M_err_230] = error_local
  [M_sol_ec1_15 , M_sol_ec2_15, M_sol_ec1_30 ,M_sol_ec2_30]...
  =... 
  tabla_de_valores;
  #definimos las funciones
  f1 = inline('2*t-x');
  f2 = inline('2*t*x');
  
  
  ################################################
  ##  Error Local Ecuacion 1 y 2 Intervalo 15   ##
  ################################################
  
  #calculamos h que resulta en el intervalo correcto de los puntos
  h = size(M_sol_ec1_15(:,1));
  h = h(1,1);
  h = 3 / (h-1);
  
  #obtenemos los resultados de las funciones analiticas
  [sol1 sol2] = solucion(h);
  x = [0:h:3];
  #plot(x,sol1)
  #hold on
  
  #matris que guarda valores de errores locales
  M_err_115 = ones(15,6);
  M_err_115 = M_sol_ec1_15(:,1);
  
  #calculo error loca ecacion 1
  for j = 2 : 6  
    for i = 2 : 15
      y0 = M_sol_ec1_15(i-1,j);
      est1 = sol_discreta1( y0,M_sol_ec1_15(i-1,1) ,M_sol_ec1_15(i,1));
      x = [M_sol_ec1_15(i-1,1) M_sol_ec1_15(i,1) ];
     # plot(x,[ y0 est1])
     # hold on
      M_err_115(i,j) = abs( est1-sol1(i));
      endfor
    endfor
    
    
  #matriz con los valores de error locales en intervalo de 30 puntos  
  M_err_215 = ones(15,6);
  M_err_215 = M_sol_ec2_15(:,1);
  
    
    #calculo error local ecuacion 2
   for j = 2 : 6  
    for i = 2 : 15
      y0 = M_sol_ec2_15(i-1,j);
      est2 = sol_discreta2( y0,M_sol_ec2_15(i-1,1) ,M_sol_ec2_15(i,1));
      x = [M_sol_ec2_15(i-1,1) M_sol_ec2_15(i,1) ];
      #plot(x,[ y0 est2])
      #hold on
      M_err_215(i,j) = abs( est2-sol2(i));
      endfor
    endfor
    
 
 
  ################################################
  ##  Error Local Ecuacion 1 y 2 Intervalo 30   ##
  ################################################
  
  #calculamos h que resulta en el intervalo correcto de los puntos
  h = size(M_sol_ec1_30(:,1));
  h = h(1,1);
  h = 3 / (h-1);
  
  
 #matris que guarda valores de errores locales
  M_err_130 = ones(30,6);
  M_err_130 = M_sol_ec1_30(:,1);

  #obtenemos los resultados de las funciones analiticas
  [sol1 sol2] = solucion(h);
  x = [0:h:3];
  #plot(x,sol1)
  #hold on
 
 #calculo de error local ecuacion 1  
  for j = 2 : 6  
    for i = 2 : 30
      y0 = M_sol_ec1_30(i-1,j);
      est1 = sol_discreta1( y0,M_sol_ec1_30(i-1,1) ,M_sol_ec1_30(i,1));
      x = [M_sol_ec1_30(i-1,1) M_sol_ec1_30(i,1) ];
      #plot(x,[ y0 est1])
      #hold on
 
      M_err_130(i,j) = abs( est1-sol1(i));
      endfor
    endfor
    
  #matriz con los valores de error locales en intervalo de 30 puntos  
  M_err_230 = ones(30,6);
  M_err_230 = M_sol_ec2_30(:,1);
  
    
  #calculo de error local ecuacion 2

   for j = 2 : 6  
    for i = 2 : 30
      y0 = M_sol_ec2_30(i-1,j);
      est2 = sol_discreta2( y0,M_sol_ec2_30(i-1,1) ,M_sol_ec2_30(i,1));
      x = [M_sol_ec2_30(i-1,1) M_sol_ec2_30(i,1) ];
      #plot(x,[ y0 est2])
      #hold on
      M_err_230(i,j) = abs( est2-sol2(i));
      endfor
    endfor
    
  