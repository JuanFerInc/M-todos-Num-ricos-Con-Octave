function tabla
  base = [1.1 : 0.01 : 1.9];
  a_1 = 2.33;
  a_2 = -1.94;
  final_a1 = 0;
  final_a2 = 0;
  octave_a1 = 0;
  octave_a2 = 0;
  
  for i = 1 : length(base)
     final_a1(i) = final(base(i), a_1);
    
    endfor
  for i = 1 : length(base)
     final_a2(i) = final(base(i), a_2);
    
    endfor
      for i = 1 : length(base)
     octave_a1 = base.**a_1;
    
    endfor
      for i = 1 : length(base)
     octave_a2 = base.**a_2;
    
    endfor
 
 
 error_a1 = abs(final_a1 - octave_a1);
 error_a2 = abs(final_a2 - octave_a2);
 
 subplot(2,3,1) 
 plot(base, final_a1)
 title('Function Implementada con exp = 2.33')
 
 subplot(2,3,2)
 plot(base, octave_a1)
 title('Funcion Octave con exponente  = 2.33')
 
 subplot(2,3,3)
 semilogy(base, error_a1)
 title('error con exponente = 2.33')
 
 subplot(2,3,4) 
 plot(base, final_a2)
 title('Function Implementada con exponente = -1.94')
 
 subplot(2,3,5)
 plot(base, octave_a2)
 title('Funcion Octave con exponente = -1.94')
 
 subplot(2,3,6)
 semilogy(base, error_a2)
 title('error con exponente = -1.94')
 
