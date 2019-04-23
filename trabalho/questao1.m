function  reverse_dct  = questao1(signal); 
  
    max_value = length(signal);
    valor = input("Digite quantos signalDCTficientes (entre 1 e ", num2str(max_value)," devem  ser preservados: ");
    signalDCT = ourSlowDCT(signal);  
 
    sortSignalDCT = sort(signalDCT);
    limit = sortSignalDCT(length(sortSignalDCT) - valor);
    
    for i = 1 : length(signalDCT)
      if(abs(signalDCT(i)) < abs(limit))
         signalDCT(i) = 0;
       endif
    endfor
   
    reverse_dct = ourSlowIDCT(signalDCT); %reverse_dct armazena a aplicação da IDCT em q2
    
    %plotagem do grafico do sinal
    figure(1)
    title("Sinal");
    plot(signal);
    
    %plotagem do grafico da DCT
    figure(2)
    title("dct");
    plot(signalDCT);
    
    %plotagem do grafico da IDCT
    figure(3)
    title("idct");
    plot(reverse_dct);
    
endfunction