function X = ourFast2DDCT(signal)
  [nLin,nCol] = size(signal);
  signal = double(signal);

  for lin = 1:nLin
    lin
    X(lin, :) = ourFastDCT(signal(lin, :)')';
  endfor
  
  for col = 1:nCol
    col
    X( :, col) = ourFastDCT(X(:, col));
  endfor
 
endfunction