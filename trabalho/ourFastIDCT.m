function y = ourFastIDCT(signal)
  realx = isreal(signal);
  
  n = length(signal);
 
 
  if ( realx && rem (n, 2) == 0 )
    w = [ sqrt(n/4); sqrt(n/2)*exp((1i*pi/2/n)*[1:n-1]') ] * ones (1, 1);
    y = ifft (w .* signal);
    y([1:2:n, n:-2:1], :) = 2*real(y);
  elseif n == 1
    y = signal;
  else
    ## reverse the steps of dct using inverse operations
    ## 1. undo post-fft scaling
    w = [ sqrt(4*n); sqrt(2*n)*exp((1i*pi/2/n)*[1:n-1]') ] * ones (1, 1);
    y = signal.*w;

    ## 2. reconstruct fft result and invert it
    w = exp(-1i*pi*[n-1:-1:1]'/n) * ones(1,1);
    y = ifft ( [ y ; zeros(1,1); y(n:-1:2,:).*w ] );

    ## 3. keep only the original data; toss the reversed copy
    y = y(1:n, :);
    if (realx) y = real (y); endif
  endif

endfunction
