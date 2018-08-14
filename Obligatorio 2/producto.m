function res = producto(x_vect,punto)

  size = length(x_vect);
  res = 1;
  for i = 1:size
    res = res .* (punto - x_vect(i));
    endfor
    
