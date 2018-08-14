function [M_sol_ec1_15 , M_sol_ec2_15, M_sol_ec1_30 ,M_sol_ec2_30] = tabla_de_valores
    
  ###########################
  ###       PARTE 1      ####
  ###########################
  
  #generamos el vector con los punto de evaluacion
  x1 = linspace(0,3,15);
 
  #hallamos el h correspondiente que genera el vector con 15 valores
  h1 = 3 / 14;
  
  #Iniciamos matris que contiene los valores obtenido mediante diferente metodos
  M_sol_ec1_15 = ones(15,6);
  M_sol_ec2_15 = ones(15,6);
  
  #guardamos en la pimera columna los puntos
  M_sol_ec1_15(:,1) = x1;
  M_sol_ec2_15(:,1) = x1;
  
  #valores de Forward Euler
  [fe1 fe2] = forward_euler(h1);
  M_sol_ec1_15(:,2) = fe1;
  M_sol_ec2_15(:,2) = fe2;  
  
  #valores de Backward Euler
  [B1 B2] = backward_euler(h1);
  M_sol_ec1_15(:,3) = B1;
  M_sol_ec2_15(:,3) = B2;   
  
  #valores de Predictor Corrector
  [pc1 pc2] = predictor_corrector(h1);
  
  M_sol_ec1_15(:,4) = pc1;
  M_sol_ec2_15(:,4) = pc2; 
  
  #valores de Heun
  [hu1 hu2] = heun(h1);
  M_sol_ec1_15(:,5) = hu1;
  M_sol_ec2_15(:,5) = hu2; 
  
  
  #valores de lsode, funcion de octave
  l1 = lsode('2*t-x' ,-1, x1);
  l2 = lsode("2*t*x" ,1, x1);
  
  M_sol_ec1_15(:,6) = l1;
  M_sol_ec2_15(:,6) = l2; 


  ###########################
  ###       PARTE 2      ####
  ###########################
  
  
  #hacemos lo mismo con el segundo vector de 30 puntos
  x2 = linspace(0,3,30);
  
  h2 = 3 / 29;
  
   #Iniciamos matris que contiene los valores obtenido mediante diferente metodos
  M_sol_ec1_30 = ones(30,6);
  M_sol_ec2_30 = ones(30,6);
  
  #guardamos en la pimera columna los puntos
  M_sol_ec1_30(:,1) = x2;
  M_sol_ec2_30(:,1) = x2;
  
  #vector soluciones, valores obtenido con funcion analitica
  [sol1 sol2] = solucion(h2)
  
  #valores de Forward Euler
  [fe1 fe2] = forward_euler(h2);
  M_sol_ec1_30(:,2) = fe1;
  M_sol_ec2_30(:,2) = fe2;  
  
  #valores de Backward Euler
  [B1 B2] = backward_euler(h2);
  M_sol_ec1_30(:,3) = B1;
  M_sol_ec2_30(:,3) = B2;
  
  #valores de Predictor Corrector
  [pc1 pc2] = predictor_corrector(h2);
  
  M_sol_ec1_30(:,4) = pc1;
  M_sol_ec2_30(:,4) = pc2; 
  
  #valores de Heun
  [hu1 hu2] = heun(h2);
  M_sol_ec1_30(:,5) = hu1;
  M_sol_ec2_30(:,5) = hu2; 
  
  
  #valores de lsode, funcion de octave
  l1 = lsode('2*t-x' ,-1, x2);
  l2 = lsode("2*t*x" ,1, x2);
  
  M_sol_ec1_30(:,6) = l1;
  M_sol_ec2_30(:,6) = l2; 
