function  reverse_dct  = questao1(signal); 
  
    max_value = length(signal);
    printf( "Digite quantos coeficientes (entre 0 e %d) devem  ser preservados: ",max_value);
    valor = input(" "); 
    
    
    signalDCT = ourSlowDCT(signal);
 
    aux = abs(signalDCT);
    for i = 1 : length(signalDCT) - valor
      [minValue, minIndex] = min(aux);
      aux(minIndex) = 100;
      signalDCT(minIndex) = 0;
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