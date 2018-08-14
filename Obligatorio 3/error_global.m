function [M_err115, M_err215, M_err130, M_err230 ]= error_global
  
  [M115 M215 M130 M230] = tabla_de_valores;
  
  #vector soluciones, valores obtenido con funcion analitica
  x1 = linspace(0,3,15);
  h1 = 3 / 14;
  
  [sol115 sol215] = solucion(h1);
  sol115 = sol115';
  sol215 = sol215';
  
  #vector soluciones, valores obtenido con funcion analitica
  x2 = linspace(0,3,30);
  h2 = 3 / 29;
  
  [sol130 sol230] = solucion(h2);
  sol130 = sol130';
  sol230 = sol230';
  
  #matris que guardara los valores de errores
  M_err115 = ones(15,6);
  M_err130 = ones(30,6);
  
  M_err215 = ones(15,6);
  M_err230 = ones(30,6);
  
  #Guardamos los puntos en la matris
  M_err115(:,1) = x1;
  M_err215(:,1) = x1;
 
  M_err130(:,1) = x2;
  M_err230(:,1) = x2;
  
  #guardamos todos los errores en las matrices
  
  #FE
  M_err115(:,2) =  abs(M115(:,2) - sol115);
  M_err215(:,2) =  abs(M215(:,2) - sol215);
  
  M_err130(:,2) =  abs(M130(:,2) - sol130);
  M_err230(:,2) =  abs(M230(:,2) - sol230);
  
  #BE
  M_err115(:,3) =  abs(M115(:,3) - sol115);
  M_err215(:,3) =  abs(M215(:,3) - sol215);
 
  M_err130(:,3) =  abs(M130(:,3) - sol130);
  M_err230(:,3) =  abs(M230(:,3) - sol230);
  
  #PC
  M_err115(:,4) =  abs(M115(:,4) - sol115);
  M_err215(:,4) =  abs(M215(:,4) - sol215);
  
  M_err130(:,4) =  abs(M130(:,4) - sol130);
  M_err230(:,4) =  abs(M230(:,4) - sol230);
  
  #Heun
  M_err115(:,5) =  abs(M115(:,5) - sol115);
  M_err215(:,5) =  abs(M215(:,5) - sol215);
  
  M_err130(:,5) =  abs(M130(:,5) - sol130);
  M_err230(:,5) =  abs(M230(:,5) - sol230);
  #lsode
  M_err115(:,6) =  abs(M115(:,6) - sol115);
  M_err215(:,6) =  abs(M215(:,6) - sol215);
  
  M_err130(:,6) =  abs(M130(:,6) - sol130);
  M_err230(:,6) =  abs(M230(:,6) - sol230);
  
  
  