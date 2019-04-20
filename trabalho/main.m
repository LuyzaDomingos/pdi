
[audio,fs] = wavread('audio.wav'); %audio guarda os valores contidos no audio; fs guarda a frequencia

while true
  disp("\n\n");
  disp("Menu");
  disp("0 - Encerrar execução")
  disp("1 - audio");
  disp("2 - imagem");
  disp("3 - deslocador de frequencia");
  valor = input('Escolha uma opcao entre 0 e 8 : ');
  
  switch valor
    case 0
      break;
    case 1
      dct(audio);
%    case 2
%           
%    case 3
%     
  endswitch    

  endwhile
  








