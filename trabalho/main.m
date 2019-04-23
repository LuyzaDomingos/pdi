
while true
  disp("\n\n");
  disp("Menu");
  disp("0 - Encerrar execucao")
  disp("1 - audio");
  disp("2 - imagem");
  disp("3 - deslocador de frequencia");
  valor = input('Escolha uma opcao entre 0 e 3 : ');
  
  switch valor
    
    case 0
      break;

    case 1
      [audio,fs] = audioread('audio.wav');
      audio = audio(1:100);
      audiowrite("audio_saida.wav",questao1(audio),fs); 
     
    case 2
      imagem = imread('lena.bmp');
      %imagem = imagem(1:10,1:10);
      imwrite(questao2(imagem), "imagem_saida.bmp");
      
    case 3
      [audio,fs] = audioread('audio.wav');
      audio = audio(1:100);
      audiowrite("audioTESTE.wav",questao3(audio),fs); 
  
  endswitch    

  endwhile
