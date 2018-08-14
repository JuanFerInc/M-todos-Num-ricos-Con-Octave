function graficas
  ###################################
  ########  ejercico 2        #######
  ###################################
  
  
  #############
  #### h= .2###
  #############
  
  
  #vector and sol
  x = [0:.2:3];
  [sol1 sol2] = solucion(.2);
  
  #forward euler
  [f1 f2] = forward_euler(.2);
  
  figure(1)
  plot(x,sol1)

  hold on
  plot(x,f1)
  title("Forward Euler ")
  xlabel("x = [0 : .2 : 3] ")
  ylabel("y(x) = 2x-2+exp(-x)")
  legend('Solucion Analitica','Forward Euler')
  
  figure(2)
  plot(x,sol2)
  hold on
  plot(x,f2)
  
  title("Forward Euler ")
  xlabel("x = [0 : .2 : 3] ")
  ylabel("y(x) = exp(x**2)")
  legend('Solucion Analitica','Forward Euler')
  
  #backward euler
  [b1 b2] = backward_euler(.2);
  
  figure(3)
  plot(x,sol1)
  hold on
  plot(x,b1)
  
  title("Backward Euler ")
  xlabel("x = [0 : .2 : 3] ")
  ylabel("y(x) = 2x-2+exp(-x)")
  legend('Solucion Analitica','Backward Euler')
  
  figure(4)
  plot(x,sol2)
  hold on
  plot(x,b2)
  
  title("Forward Euler ")
  xlabel("x = [0 : .2 : 3] ")
  ylabel("y(x) = exp(x**2)")
  legend('Solucion Analitica','Backward Euler')
  
  
  
  ###########
  ### h=.1 ##
  ###########
  
   
  #vector and sol
  x = [0:.1:3];
  [sol1 sol2] = solucion(.1);
  
  #forward euler
  [f1 f2] = forward_euler(.1);
  
  figure(5)
  plot(x,sol1)

  hold on
  plot(x,f1)
  title("Forward Euler ")
  xlabel("x = [0 : .1 : 3] ")
  ylabel("y(x) = 2x-2+exp(-x)")
  legend('Solucion Analitica','Forward Euler')
  
  figure(6)
  plot(x,sol2)
  hold on
  plot(x,f2)
  
  title("Forward Euler ")
  xlabel("x = [0 : .1 : 3] ")
  ylabel("y(x) = exp(x**2)")
  legend('Solucion Analitica','Forward Euler')
  
  #backward euler
  [b1 b2] = backward_euler(.1);
  
  figure(7)
  plot(x,sol1)
  hold on
  plot(x,b1)
  
  title("Backward Euler ")
  xlabel("x = [0 : .1 : 3] ")
  ylabel("y(x) = 2x-2+exp(-x)")
  legend('Solucion Analitica','Backward Euler')
  
  figure(8)
  plot(x,sol2)
  hold on
  plot(x,b2)
  
  title("Backward Euler")
  xlabel("x = [0 : .1 : 3] ")
  ylabel("y(x) = exp(x**2)")
  legend('Solucion Analitica','Backward Euler')
  
  ###################################
  ########## ejercicio 3  ###########
  ###################################
  
  
  ###########
  ### h=.2 ##
  ###########
  x = [0 : .2: 3];
  [sol1 sol2] = solucion(.2);
  
  [p1 p2] = predictor_corrector(.2);
  
  figure(9)
  plot(x,sol1)
  hold on
  plot(x,p1)
  
  title("Predictor Corrector")
  xlabel("x = [0 : .2 : 3] ")
  ylabel("y(x) = 2x-2+exp(-x)")
  legend('Solucion Analitica','Predictor Corrector')
  
  figure(10)
  
  plot(x,sol2)
  hold on
  plot(x,p2)
  
  title("Predictor Corrector")
  xlabel("x = [0 : .2 : 3] ")
  ylabel("y(x) = exp(x**2)")
  legend('Solucion Analitica','Predictor Corrector')
  
  figure(11)
  
  [h1 h2] = heun(.2);
  plot(x,sol1)
  hold on
  plot(x,h1)
  
  title("Heun")
  xlabel("x = [0 : .2 : 3] ")
  ylabel("y(x) = 2x-2+exp(-x)")
  legend('Solucion Analitica','Heun')
  
  figure(12)
  plot(x,sol2)
  hold on
  plot(x,h2)
  
  title("Heun")
  xlabel("x = [0 : .2 : 3] ")
  ylabel("y(x) = exp(x**2)")
  legend('Solucion Analitica','Heun')
  
  
  
  ############
  #### h=.1 ##
  ############
  
  x = [0 : .1: 3];
  [sol1 sol2] = solucion(.1);
  
  [p1 p2] = predictor_corrector(.1);
  
  figure(13)
  plot(x,sol1)
  hold on
  plot(x,p1)
  
  title("Predictor Corrector")
  xlabel("x = [0 : .1 : 3] ")
  ylabel("y(x) = 2x-2+exp(-x)")
  legend('Solucion Analitica','Predictor Corrector')
  
  figure(14)
  
  plot(x,sol2)
  hold on
  plot(x,p2)
  
  title("Predictor Corrector")
  xlabel("x = [0 : .1 : 3] ")
  ylabel("y(x) = exp(x**2)")
  legend('Solucion Analitica','Predictor Corrector')
  
  figure(15)
  
  [h1 h2] = heun(.1);
  plot(x,sol1)
  hold on
  plot(x,h1)
  
  title("Heun")
  xlabel("x = [0 : .1 : 3] ")
  ylabel("y(x) = 2x-2+exp(-x)")
  legend('Solucion Analitica','Heun')
  
  figure(16)
  plot(x,sol2)
  hold on
  plot(x,h2)
  
  title("Heun")
  xlabel("x = [0 : .1 : 3] ")
  ylabel("y(x) = exp(x**2)")
  legend('Solucion Analitica','Heun')
  
  
  #############################
  #####  Ejercicio 7    #######
  #############################
  
  [M_err115 M_err215 M_err130 M_err230 ] = error_global;
  
  ########################
  ##### Error Global  ####
  ########################
   
  figure(17)

  for i = 2 : 6
    plot(M_err115(:,1) , M_err115(:,i))
    hold on
    endfor
  
  title("Error Global")
  xlabel("x = linspace(0,3,15)  ")
  ylabel("y(x) = 2x-2+exp(-x)")
  legend('Forward Euler','Backward Euler','Predictor Corrector','Heun','Lsode')
  
  figure(18)

  for i = 2 : 6
    semilogy(M_err215(:,1) , M_err215(:,i))
    hold on
    endfor
  
  title("Error Global")
  xlabel("x = linspace(0,3,15)  ")
  ylabel("y(x) = exp(x**2)")
  #legend('Forward Euler','Backward Euler','Predictor Corrector','Heun','Lsode')
  
  figure(19)
  
  for i = 2 : 6
    plot(M_err130(:,1) , M_err130(:,i))
    hold on
    endfor
  
  title("Error Global")
  xlabel("x = linspace(0,3,30)  ")
  ylabel("y(x) = 2x-2+exp(-x)")
  legend('Forward Euler','Backward Euler','Predictor Corrector','Heun','Lsode')
  
  
  figure(20)
  
  for i = 2 : 6
    semilogy(M_err230(:,1) , M_err230(:,i))
    hold on
    endfor
  
  title("Error Global")
  xlabel("x = linspace(0,3,30)  ")
  ylabel("y(x) = exp(x**2)")
  #legend('Forward Euler','Backward Euler','Predictor Corrector','Heun','Lsode')
  
  
  ##################
  ## Error Local ###
  ##################
  
  [M_err_115  M_err_215 M_err_130 M_err_230] = error_local;
  
  figure(21)
  
  for i = 2 : 6
    plot(M_err_115(:,1),M_err_115(:,i))
    hold on
    endfor
    
  title("Error Local")
  xlabel("x = linspace(0,3,15)")
  ylabel("y(x) = 2x-2+exp(-x)")
  legend('Forward Euler','Backward Euler','Predictor Corrector','Heun','Lsode')
  
  figure(22)
  
  for i = 2 : 6
    semilogy(M_err_215(:,1),M_err_215(:,i))
    hold on
    endfor
    
  title("Error Local")
  xlabel("x = linspace(0,3,15)  ")
  ylabel("y(x) = exp(x**2)")
  #legend('Forward Euler','Backward Euler','Predictor Corrector','Heun','Lsode')
  
   figure(23)
  
  for i = 2 : 6
    plot(M_err_130(:,1),M_err_130(:,i))
    hold on
    endfor
    
  title("Error Local")
  xlabel("x = linspace(0,3,30)")
  ylabel("y(x) = 2x-2+exp(-x)")
  legend('Forward Euler','Backward Euler','Predictor Corrector','Heun','Lsode')
  
  figure(24)
  
  for i = 2 : 6
    semilogy(M_err_230(:,1),M_err_230(:,i))
    hold on
    endfor
    
  title("Error Local")
  xlabel("x = linspace(0,3,30)")
  ylabel("y(x) = exp(x**2)")
  #legend('Forward Euler','Backward Euler','Predictor Corrector','Heun','Lsode')
  