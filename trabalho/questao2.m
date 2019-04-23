function signalIDCT = questao2(signal2d)
  [row, col] = size(signal2d);
  max_value = row * col;
  printf( "Digite quantos coeficientes (entre 1 e %d) devem  ser preservados: ",max_value-1);
  valor = input(" ");
   
  signalDCT = ourSlow2DDCT(signal2d);
 
  
%  limit = (sort(sort(signalDCT,1),2))'(max_value - valor)
%  for i =1:row
%    for j =1:col
%        if(abs(signalDCT(i,j))<abs(limit))
%          signalDCT(i,j) = 0;
%         endif
%    endfor
%   endfor
   
  signalIDCT = ourSlowIDCT(signalDCT);      
  figure(1)
  imshow(signal2d);
  
  figure (2)
  imshow(signalIDCT);
   disp("esfe3e3e3");
  
  endfunction