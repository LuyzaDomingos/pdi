function X = ourSlow2DIDCT(signal)
  [nLin,nCol] = size(signal);
  
  for lin = 1:nLin
    lin
    X(lin, :) = ourSlowIDCT(signal(lin, :)')';
  endfor
  
  for col = 1:nCol
    col
    X( :, col) = ourSlowIDCT(X(:, col));
  endfor
  
  X = uint8(X);
 
endfunction