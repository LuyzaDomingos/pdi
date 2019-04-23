function signalIDCT = questao2(signal2d)
  [row, col] = size(signal2d);
  max_value = row * col;
  printf( "Digite quantos coeficientes (entre 1 e %d) devem  ser preservados: ",max_value-1);
  valor = input(" ");
   
  signalDCT = ourSlow2DDCT(signal2d);
  aux = abs(signalDCT);
  for i = 1: length(signalDCT)*length(signalDCT) - valor
     [minval, row] = min(min(aux,[],2));
     [minval, col] = min(min(aux,[],1));
      
      aux(row, col) = 100;
      signalDCT(row,col) = 0;
  endfor
  
  signalIDCT = ourSlow2DIDCT(signalDCT);
  
  figure(1)
  imshow(signal2d);
  
  figure (2)
  imshow(signalIDCT);
  
  endfunction