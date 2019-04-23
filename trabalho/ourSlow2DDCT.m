function X = ourSlow2DDCT(signal)
  [nLin,nCol] = size(signal);
  signal = double(signal);

  for lin = 1:nLin
    lin
    X(lin, :) = ourSlowDCT(signal(lin, :)')';
  endfor
  
  for col = 1:nCol
    col
    X( :, col) = ourSlowDCT(X(:, col));
  endfor
 
endfunction