function  reverse_dct  = questao1_1(audio); 
  

    valor = input("Digite a partir de onde os cossenos devem ser zerados:  ");
    q2 = ourDCT(audio);  % q2 armazena o áudio com a aplicação da DCT
    
    %plotagem do gráfico da DCT
    figure(3)
    title("dct");
    plot(q2);
    
    q2(valor:length(audio)) = 0;  % os cossenos estão sendo zerados
   
    reverse_dct = ourIDCT(q2); %reverse_dct armazena a aplicação da IDCT em q2
    
    %plotagem do gráfico da IDCT
    figure(4)
    title("idct");
    plot(reverse_dct);
    
endfunction