function y = ourIDCT(signal)
  realx = isreal(signal);
  transpose = (rows (signal) == 1);

  if transpose, signal = signal (:); endif
  [nr, nc] = size (signal);
  n = nr;
 
 
  if ( realx && rem (n, 2) == 0 )
    w = [ sqrt(n/4); sqrt(n/2)*exp((1i*pi/2/n)*[1:n-1]') ] * ones (1, nc);
    y = ifft (w .* signal);
    y([1:2:n, n:-2:1], :) = 2*real(y);
  elseif n == 1
    y = signal;
  else
    ## reverse the steps of dct using inverse operations
    ## 1. undo post-fft scaling
    w = [ sqrt(4*n); sqrt(2*n)*exp((1i*pi/2/n)*[1:n-1]') ] * ones (1, nc);
    y = signal.*w;

    ## 2. reconstruct fft result and invert it
    w = exp(-1i*pi*[n-1:-1:1]'/n) * ones(1,nc);
    y = ifft ( [ y ; zeros(1,nc); y(n:-1:2,:).*w ] );

    ## 3. keep only the original data; toss the reversed copy
    y = y(1:n, :);
    if (realx) y = real (y); endif
  endif
  if transpose, y = y.'; endif

endfunction
