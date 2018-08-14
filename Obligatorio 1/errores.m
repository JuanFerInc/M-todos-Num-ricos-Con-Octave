function errores(b)
  e = [2.33 3.19 -13.4 -1.94];
  final_e = 0;
  octave_e = 0;
  
  for i = 1 : 4
    final_e(i) = final(b, e(1));
    endfor
    for i = 1 : 4
    octave_e = b.**e;
    endfor
    errorabs  = abs(final_e - octave_e);
    errorrel = errorabs./e;
    
    disp("Este es :"), disp(b), disp("con funcion implementada")
    final_e'
    disp("con octave")
    octave_e'
    disp("Error absoluto")
    errorabs'
    disp("Error relativo")
    errorrel'