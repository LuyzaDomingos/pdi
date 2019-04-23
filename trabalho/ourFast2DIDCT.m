function X = ourFast2DIDCT(signal)
  [nLin,nCol] = size(signal);
  
  for lin = 1:nLin
    X(lin, :) = ourFastIDCT(signal(lin, :)')';
  endfor
  
  for col = 1:nCol
    X( :, col) = ourFastIDCT(X(:, col));
  endfor
  
  X = uint8(X);
 
endfunction