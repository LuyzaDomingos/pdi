function  newAudio = questao3(audio); 
    
    valor = input("Digite o coeficientes de deslocamento:  ");
    coe = ourSlowDCT(audio);  
 
    
    for i = 1 : length(coe)
      if(i + valor <= 0)
        coe2(i) = coe(length(coe) + valor );
      elseif(i + valor > length(coe) )
        coe2(i) = coe(rem(i+valor,length(coe)));
      else 
        coe2(i) = coe(i+valor);
      endif
    endfor
   
    newAudio = ourSlowIDCT(coe2);
    
    %plotagem do grafico da DCT
    figure(1)
    title("DCT");
    plot(coe);
    
    %plotagem do grafico do sinal 
    figure(2)
    title("Sinal");
    plot(audio);
    
    %plotagem do grafico da DCT deslocado
    figure(3)
    title("DCT Deslocada");
    plot(coe2);
    
    %plotagem do grafico do sinal deslocado
    figure(4)
    title("Sinal Deslocado");
    plot(newAudio);
    
endfunction