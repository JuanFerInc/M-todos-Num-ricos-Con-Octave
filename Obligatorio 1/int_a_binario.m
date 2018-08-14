function bin = int_a_binario(a) 
 if (a == 0)
   bin = 0;
   
 elseif (a != 0)
  size = fix(log2(a)) +1;
  bin = zeros(1,size);
  
  for i = size:-1:1 
    bin(i) = mod(a,2);
    a = fix(a/2);
    
    endfor
    endif