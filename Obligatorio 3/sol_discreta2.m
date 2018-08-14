function sol = sol_discreta2(y0,x0,x1)
  
  if (y0 == 0)
    c = 0;
    else
    c = log(y0) - x0**2;
    endif
    
    sol = exp( ((x1**2)+c) );
    