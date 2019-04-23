function X = ourSlowIDCT(signal)
  N = length(signal);
  for n = 0: N-1
    sum = 0;
    for k = 0 : N-1
      sum += signal(k+1) * cos(    (2* pi * k * n)/(2*N) + (k * pi)/(2*N)       );
      if(k == 0)
        sum *=  0.5 ^ 0.5;
      endif
    endfor
   
    X(n+1) = ((2/N)^0.5) * sum;
 
  endfor
  X = X';

endfunction
