function  [q2,reverve_dct]  = questao1_1(audio); 
  
% a questão1_1 é meramente para salvar o novo aúdio  
% Para salvar o novo áudio precisa da frequencia. Que é capturada quando é realizada a leitura doo áudio.
% Como não achei um jeito de fazer a leitura de novo do áudio sem prejudicar o programa, fiz essa função...
% que só tem a função de aplicar a volta da dct. 


  
    valor = input("Repita o mesmo valor de corte anterior: ");
    q2 = ourDCT(audio);
    q2(valor:length(audio)) = 0;  
    reverve_dct = ourIDCT(q2);
endfunction