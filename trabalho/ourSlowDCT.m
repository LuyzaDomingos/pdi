function X = ourSlowDCT(signal)
  N = length(signal);
  for k = 0: N-1
    sum = 0;
    for n = 0 : N-1
      sum += signal(n+1) * cos(    (2* pi * k * n)/(2*N) + (k * pi)/(2*N)       );
    endfor
    
    
    if(k == 0)
      sum *=  0.5 ^ 0.5;
    endif
    
    X(k+1) = ((2/N)^0.5) * sum;
 
  endfor

  X = X';
  
  endfunction