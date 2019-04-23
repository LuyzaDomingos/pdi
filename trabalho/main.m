
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
      % audiowrite salva o novo audio, e adiciona a frequência de amostras
      audiowrite("audioTESTE.wav",questao1(audio),fs); 
     
    case 2
      imagem = imread('lena.bmp');
      imagem = imagem(1:10,1:10);
      t =questao2(imagem);
      
     
      
    case 3
      [audio,fs] = audioread('audio.wav');
      audio = audio(1:100);
      % audiowrite salva o novo audio, e adiciona a frequência de amostras
      audiowrite("audioTESTE.wav",questao3(audio),fs); 
  
  endswitch    

  endwhile
