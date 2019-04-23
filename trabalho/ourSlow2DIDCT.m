function X = ourSlow2DIDCT(signal)
  [nLin,nCol] = size(signal);
  
  for lin = 1:nLin
    X(lin, :) = ourSlowIDCT(signal(lin, :)')';
  endfor
  
  for col = 1:nCol
    X( :, col) = ourSlowIDCT(X(:, col));
  endfor
  
  int(X);
 
endfunction