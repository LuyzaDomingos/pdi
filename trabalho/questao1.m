function  [ourdct,ylp_ourdct]  = questao1(audio); 
    
    
  
    valor = input("Digite a partir de onde os cossenos devem ser zerados: ");
    ourdct = ourDCT(audio);
    ylp_ourdct = ourDCT(audio);
    ylp_ourdct(valor:length(audio)) = 0;
    
    %plotagem da dct 
    figure(1)
    title("ourdct");
    plot(ourdct);
    
    %plotagem da dct com cossenos zerados
    figure(2)
    title("ylp_ourdct");
    plot(ylp_ourdct);
    
  

  endfunction
